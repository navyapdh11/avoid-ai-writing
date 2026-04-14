#!/usr/bin/env bash
# validate-consistency.sh — Cross-check SKILL.md, README.md, and CHANGELOG.md for consistency
# Run from project root: bash scripts/validate-consistency.sh

set -e

SKILL="SKILL.md"
README="README.md"
CHANGELOG="CHANGELOG.md"

errors=0

echo "=== Avoid AI Writing — Consistency Validator ==="
echo ""

# 1. Version consistency
echo "1. Version consistency..."
skill_version=$(grep '^version:' "$SKILL" | awk '{print $2}')
changelog_version=$(grep '^\#\# \[' "$CHANGELOG" | head -1 | sed 's/## \[\(.*\)\].*/\1/')
readme_badge_version=$(grep -oP 'version-\K[0-9.]+' "$README" 2>/dev/null || echo "not found")

if [ "$skill_version" != "$changelog_version" ]; then
    echo "  ❌ FAIL: SKILL.md version ($skill_version) != CHANGELOG latest ($changelog_version)"
    errors=$((errors + 1))
else
    echo "  ✓ SKILL.md ($skill_version) matches CHANGELOG ($changelog_version)"
fi

if [ "$readme_badge_version" != "not found" ] && [ "$skill_version" != "$readme_badge_version" ]; then
    echo "  ❌ FAIL: README badge ($readme_badge_version) != SKILL.md ($skill_version)"
    errors=$((errors + 1))
else
    echo "  ✓ README badge matches SKILL.md"
fi

# 2. Tier counts
echo ""
echo "2. Vocabulary tier counts..."

# Count Tier 1 entries (rows between "Tier 1" header and "Tier 2" header)
tier1=$(awk '/^#### Tier 1/,/^#### Tier 2/' "$SKILL" | grep '^| ' | grep -v '^| Replace' | grep -v '^|---' | wc -l)
tier2=$(awk '/^#### Tier 2/,/^#### Tier 3/' "$SKILL" | grep '^| ' | grep -v '^| Replace' | grep -v '^|---' | wc -l)
tier3=$(awk '/^#### Tier 3/,/^### Template/' "$SKILL" | grep '^| ' | grep -v '^| Word' | grep -v '^|---' | wc -l)
total=$((tier1 + tier2 + tier3))

echo "  Tier 1: $tier1 entries"
echo "  Tier 2: $tier2 entries"
echo "  Tier 3: $tier3 entries"
echo "  Total: $total entries"

# Check README mentions
readme_vocab=$(grep -oP '[0-9]+-entry word replacement' "$README" | grep -oP '[0-9]+' || echo "")
if [ -n "$readme_vocab" ] && [ "$readme_vocab" != "$total" ]; then
    echo "  ⚠️  README says $readme_vocab entries, actual is $total"
    errors=$((errors + 1))
else
    echo "  ✓ Vocabulary count is consistent"
fi

# 3. Pattern count
echo ""
echo "3. Pattern count..."

# Count ### sections under "What to remove or fix" (excluding "NEW:" marker sections)
skill_sections=$(awk '/^## What to remove or fix/,/^---$/' "$SKILL" | grep '^### ' | grep -v '### NEW:' | wc -l)
readme_patterns=$(grep -oP '[0-9]+ Patterns Detected' "$README" | grep -oP '[0-9]+' || echo "")

if [ -n "$readme_patterns" ] && [ "$skill_sections" != "$readme_patterns" ]; then
    echo "  ⚠️  SKILL.md has ~$skill_sections sections, README says $readme_patterns patterns"
    echo "  (This may be intentional if README counts sub-patterns separately)"
else
    echo "  ✓ Pattern count appears consistent (SKILL.md sections: ~$skill_sections)"
fi

# 4. Cross-reference accuracy
echo ""
echo "4. Cross-reference accuracy..."

# Check if "in order to" and "due to the fact that" are referenced correctly in filler phrases
filler_section=$(awk '/^### Filler phrases/,/^### Generic/' "$SKILL")
if echo "$filler_section" | grep -q "word/phrase table and transition sections"; then
    echo "  ❌ FAIL: Filler phrases section still references 'word/phrase table and transition sections' (should be specific)"
    errors=$((errors + 1))
else
    echo "  ✓ Filler phrases cross-references are accurate"
fi

# 5. Escape hatch
echo ""
echo "5. Escape hatch scope..."
if grep -q "Vocabulary tables" "$SKILL" && grep -q "Author.*own prose" "$SKILL"; then
    echo "  ✓ Escape hatch covers vocabulary tables and author's prose"
else
    echo "  ❌ FAIL: Escape hatch may not fully cover SKILL.md's own content"
    errors=$((errors + 1))
fi

# 6. Tolerance matrix coverage
echo ""
echo "6. Tolerance matrix coverage..."
matrix_rows=$(awk '/^### Tolerance matrix/,/^### Auto/' "$SKILL" | grep '^| ' | grep -v '^| Rule' | grep -v '^|---' | wc -l)
echo "  Tolerance matrix has $matrix_rows rows"
if [ "$matrix_rows" -lt 20 ]; then
    echo "  ⚠️  Matrix has fewer than 20 rows — many rules may lack profile guidance"
fi

# Summary
echo ""
echo "=== Results ==="
if [ $errors -eq 0 ]; then
    echo "✓ All checks passed"
    exit 0
else
    echo "❌ $errors check(s) failed"
    exit 1
fi
