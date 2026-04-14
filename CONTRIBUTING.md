# Contributing

This project accepts community contributions for new pattern categories, vocabulary entries, and improvements to existing rules.

## How to contribute

### 1. Open an issue first

Before submitting a PR, open an issue describing what you want to add. This avoids duplicate work and lets us discuss whether the pattern belongs in the skill.

### 2. Pattern submission template

When proposing a new pattern category, use this template:

```markdown
**Pattern name**: [short name]

**Category**: [Content / Language / Structure / Communication / Meta]

**Description**: [1-2 sentences explaining the pattern and why it signals AI]

**Examples to flag**:
- "Example 1"
- "Example 2"

**Fix guidance**: [how to rewrite, with before/after]

**Severity**: [P0 / P1 / P2]

**Evidence**: [link to research, dataset analysis, or detection tool behavior that supports this pattern]

**Profile tolerance**: [should this be strict/relaxed/skip per profile? Default to strict if unsure]
```

### 3. Vocabulary additions

For new word entries:

```markdown
**Word/phrase**: [word]
**Proposed tier**: [1 / 2 / 3]
**Rationale**: [why this word signals AI, or why it should be in this tier]
**Replacement**: [specific alternative(s), not just "rephrase"]
```

Key guidelines:
- **Tier 1**: Must appear 5-20x more often in AI text than human text. Provide evidence.
- **Tier 2**: Legitimate in isolation but suspicious in clusters. Specify the cluster threshold (usually 2+).
- **Tier 3**: Common words that AI overuses. Only flag at high density (3%+ of total words).
- **No duplicates**: Check all three tiers before proposing.
- **Context exceptions**: If a word has legitimate technical meaning in specific domains, note this.

### 4. What makes a good contribution

**Strong**:
- Data-driven evidence (frequency analysis, detection tool behavior, corpus study)
- Real-world examples from published AI-generated content
- Clear before/after with reasoning
- Consideration of false positives and edge cases

**Weak**:
- "This word sounds AI-ish to me" without evidence
- Vague replacement guidance ("use something else")
- Patterns that overlap 80%+ with existing categories
- Personal stylistic preferences disguised as AI detection rules

### 5. Making changes

Edit `SKILL.md` directly. There's no build system or tests to run. When making changes:

1. Bump the version in the SKILL.md frontmatter (`version: X.Y.Z`)
   - **Major** (X): breaking changes to output format, new modes
   - **Minor** (Y): new pattern categories, vocabulary additions, tolerance matrix changes
   - **Patch** (Z): bug fixes, typo corrections, clarifications
2. Add a dated entry to `CHANGELOG.md`
3. Update `README.md` if the change affects pattern count, installation, usage, or feature list
4. Keep the README pattern count table in sync with actual SKILL.md categories

### 6. Code of conduct

This is a tool for improving writing quality, not for policing anyone's voice. Be respectful in discussions. Remember that:
- AI patterns aren't always bad — they can be effective in small doses
- The skill should make writing sound more human, not less
- Over-editing can push human writing toward AI statistical profiles

## Review process

1. Maintainer reviews the issue/PR for quality and fit
2. If accepted, changes are merged and version is bumped
3. CHANGELOG and README are updated to match
