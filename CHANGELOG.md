# Changelog

All notable changes to this project are documented here.

---

## [2.0.0] — 2026-03-18

### Added
- **Tiered vocabulary system** — words are now organized into three tiers based on AI-signal strength:
  - Tier 1 (always flag): 53 entries — dead giveaways that appear 5–20x more often in AI text
  - Tier 2 (flag in clusters): 38 entries — legitimate words that signal AI when 2+ appear in the same paragraph
  - Tier 3 (flag by density): 11 entries — common words that only flag when the text is saturated with them
- 39 new vocabulary entries across all tiers, including: bustling, intricate, complexities, ever-evolving, daunting, holistic, actionable, impactful, learnings, thought leadership, best practices, synergy, interplay, encompass, catalyze, reimagine, galvanize, augment, cultivate, illuminate, elucidate, juxtapose, paradigm-shifting, transformative, cornerstone, paramount, poised, burgeoning, nascent, quintessential, overarching, underpinning, significant, innovative, dynamic, scalable, compelling, unprecedented, sophisticated, instrumental, world-class
- Credit to [brandonwise/humanizer](https://github.com/brandonwise/humanizer) for tiered vocabulary research

### Changed
- Word/phrase table reorganized from flat list to tiered structure with usage guidance
- Total vocabulary: 58 → 102 entries (53 Tier 1 + 38 Tier 2 + 11 Tier 3)
- `README.md` — updated replacement table description, pattern table, and credits

---

## [1.4.0] — 2026-03-17

### Added
- 15 new word/phrase replacements: nuanced, crucial, multifaceted, ecosystem, myriad, plethora, deep dive/dive into, unpack, bolster, spearhead, resonate, revolutionize, facilitate, underpin
- New pattern category: "let's" constructions (false-collaborative openers like "let's explore," "let's break this down")
- Skill now covers 23 pattern categories with 58 word/phrase replacements

### Changed
- Deduplicated filler phrases that appeared in both the word table and the filler section
- `README.md` — updated pattern count (22 → 23), replacement table count (43 → 58), added "let's" constructions row to pattern table

---

## [1.3.0] — 2026-03-17

### Changed
- Em dash detection now catches double-hyphen (`--`) in addition to Unicode em dash (`—`)
- `README.md` — updated formatting pattern description to mention `--`

---

## [1.2.0] — 2026-03-06

### Added
- New pattern category: emotional flatline (AI claims emotions as structural crutch without conveying them; also flags lazy human writing)
- Skill now covers 22 pattern categories with 43 word/phrase replacements

---

## [1.1.0] — 2026-03-06

### Added
- 8 new pattern categories: notability name-dropping, superficial -ing analyses, promotional language, formulaic challenges, false ranges, inline-header lists, title case headings, cutoff disclaimers
- 5 new word table entries (nestled, vibrant, thriving, despite challenges, showcasing)
- Skill now covers 21 pattern categories with 43 word/phrase replacements

### Changed
- `README.md` — expanded full example (6 paragraphs → 4 clean sentences, 40+ tells flagged); added per-pattern before/after table organized into Content, Language, Structure, Communication groups; updated pattern count and replacement table count throughout

---

## [1.0.0] — 2026-03-05

### Added
- `SKILL.md` — Claude Code skill with 13 pattern categories: formatting, sentence structure, word/phrase replacements (38 entries), template phrases, transition phrases, structural issues, significance inflation, copula avoidance, synonym cycling, vague attributions, filler phrases, generic conclusions, chatbot artifacts
- Four-section output format: issues found, rewritten version, what changed, second-pass audit
- `README.md` — installation guide (3 methods), full pattern reference, usage examples
- `LICENSE` — MIT
- `.gitignore` — OS/editor exclusions
