# Test Corpus for avoid-ai-writing

This directory contains test cases for each pattern category. Use these to verify the skill's detection coverage.

Run the skill on each file in detect mode first to confirm patterns are flagged, then in rewrite mode to verify corrections.

---

## test-01-formatting.md

```
## 🚀 What This Means — A Deep Dive Into **Important** **Critical** **Key** Updates

The platform offers three benefits — speed, scale, and security — that make it stand out.

- Feature A: Feature A provides fast processing
- Feature B: Feature B enables team collaboration
- Feature C: Feature C reduces costs
- Feature D: Feature D improves analytics
- Feature E: Feature E supports integrations
- Feature F: Feature F has monitoring
- Feature G: Feature G automates workflows
- Feature F: Feature F scales horizontally
```

Expected: emoji in header, em dash in header, bold overuse (3+ in one section), excessive bullets (8+ in short text)

---

## test-02-sentence-structure.md

```
It's not just a tool — it's a paradigm shift in how teams work.

This isn't about efficiency, it's about empowerment. It's a genuine improvement that truly transforms workflows. Perhaps it could potentially reshape how we think about collaboration.

The platform is fast, scalable, and reliable. The team is dedicated, innovative, and committed. The results are consistent, measurable, and impactful.
```

Expected: "It's not X — it's Y" (x2), hollow intensifiers (genuine, truly), hedging (perhaps, could potentially), compulsive rule of three (x3)

---

## test-03-tier1-vocabulary.md

```
The company operates in a rapidly evolving landscape, leveraging cutting-edge tools to delve into the intricacies of the ecosystem. Their robust and comprehensive approach serves as a testament to their meticulous methodology. This seamless integration underscores their pivotal role as a game-changer. They utilize advanced analytics to ascertain market trends, endeavoring to commence a new era of holistic solutions.
```

Expected: landscape, leverage, delve, intricate/intricacies, robust, comprehensive, serves as, testament to, meticulous, seamless, underscores, pivotal, game-changer, utilize, ascertain, endeavor, commence, holistic

---

## test-04-tier2-clusters.md

```
The platform empowers teams to harness data, streamline workflows, and foster collaboration. It facilitates innovation, bolsters productivity, and elevates performance. By cultivating a nuanced approach, the company can reimagine its ecosystem and catalyze transformative change across burgeoning markets.
```

Expected: empower, harness, streamline, foster, facilitate, bolster, elevate, cultivate, nuanced, reimagine, ecosystem, catalyze, transformative, burgeoning (14 Tier 2 words in one paragraph = strong AI signal)

---

## test-05-template-phrases.md

```
This is a significant step towards scalable AI infrastructure. Whether you're a startup founder or an enterprise architect, this platform is a major step forward for modern engineering. I recently had the pleasure of working with their team, and I can say it's a meaningful step forward for the industry.
```

Expected: template phrases (a [adj] step towards [adj], a [adj] step forward for [noun]), false breadth (Whether you're X or Y), "I recently had the pleasure of"

---

## test-06-transition-phrases.md

```
The platform offers real-time analytics. Moreover, it provides historical context. Furthermore, the dashboard is customizable. Additionally, the API supports webhooks. In today's rapidly evolving market, it's worth noting that these features are notably important. When it comes to scalability, the platform handles it. That said, at the end of the day, the results speak for themselves.
```

Expected: moreover, furthermore, additionally, "In today's [X]", "it's worth noting that", notably, "When it comes to", "That said", "at the end of the day"

---

## test-07-structural.md

```
In the rapidly evolving world of modern technology, where innovation drives every industry, companies must adapt to stay competitive. The platform addresses this need by offering a unified solution that integrates seamlessly with existing workflows. Teams can leverage the tool to streamline operations and foster collaboration across departments. The results speak for themselves, with measurable improvements in productivity and efficiency.

The company was founded in 2019 by a team of engineers who saw an opportunity to build something different. The platform offers real-time dashboards, historical analytics, and customizable alerts. The API supports webhooks, REST endpoints, and GraphQL queries. The team has grown from five to fifty employees across three offices.

The future of this space is bright, with endless possibilities for growth and expansion.
```

Expected: formulaic opening, uniform paragraph length (all ~4 sentences), copula avoidance (addresses, offers, supports), generic conclusion, "In the rapidly evolving world of"

---

## test-08-significance-inflation.md

```
The startup announced a new partnership with a major cloud provider, marking a pivotal moment in the evolution of the observability industry and setting the stage for unprecedented innovation.
```

Expected: significance inflation ("marking a pivotal moment in the evolution of"), vague claim ("unprecedented innovation")

---

## test-09-copula-avoidance.md

```
The platform serves as a unified hub for engineering teams. It features real-time dashboards, boasts sub-second performance, and presents a seamless integration layer. The solution represents a paradigm shift and constitutes a fundamental change in how teams operate.
```

Expected: serves as, features, boasts, presents, represents, constitutes

---

## test-10-synonym-cycling.md

```
The platform is used by developers across the organization. Engineers can customize workflows, while practitioners can monitor performance. Builders will appreciate the extensibility, and creators can integrate their own tools.
```

Expected: synonym cycling (developers, engineers, practitioners, builders, creators — all referring to the same group)

---

## test-11-vague-attributions.md

```
Experts believe the platform will transform the market. Studies show that companies using modern tools see 40% better outcomes. Research suggests this approach is the future. Industry leaders agree that innovation is the key to success.
```

Expected: vague attributions (Experts believe, Studies show, Research suggests, Industry leaders agree — none with specific sources)

---

## test-12-filler-phrases.md

```
It is important to note that the platform offers significant value. In terms of performance, the results are compelling. The reality is that most teams need better tools.
```

Expected: "It is important to note that", "In terms of", "The reality is that"

---

## test-13-generic-conclusions.md

```
In conclusion, the future looks bright for the company. Only time will tell how this game-changer will reshape the industry. One thing is certain: as we move forward, innovation will continue.
```

Expected: "In conclusion", "the future looks bright", "Only time will tell", "One thing is certain", "as we move forward", game-changer

---

## test-14-chatbot-artifacts.md

```
Certainly! I hope this overview helps you understand the platform. Great question! Let me know if you need anything else. Feel free to reach out with any questions. In this article, we will explore the key features of the platform. Let's dive in!
```

Expected: Certainly!, I hope this helps, Great question!, Let me know if you need anything else, Feel free to reach out, "In this article, we will explore", "Let's dive in!"

---

## test-15-lets-constructions.md

```
Let's explore how the platform works. Let's take a look at the key features. Let's break this down into three sections. Let's examine the performance metrics. Let's dive into the technical details.
```

Expected: "Let's explore", "Let's take a look", "Let's break this down", "Let's examine", "Let's dive into" — all false-collaborative openers

---

## test-16-notability-name-dropping.md

```
The platform has been cited in The New York Times, BBC, Financial Times, The Hindu, TechCrunch, Forbes, and Wired as a leading example of modern engineering excellence.
```

Expected: notability name-dropping (7 publications listed without context)

---

## test-17-superficial-ing-analyses.md

```
The platform represents a shift toward proactive monitoring, symbolizing the region's commitment to progress, reflecting decades of investment, and showcasing a new era of collaboration that is transforming the landscape.
```

Expected: superficial -ing analyses (symbolizing, reflecting, showcasing)

---

## test-18-promotional-language.md

```
Nestled within the breathtaking foothills of Boulder, the vibrant startup has built a thriving ecosystem of innovation that is revolutionizing the observability space.
```

Expected: promotional language (nestled, breathtaking, vibrant, thriving ecosystem, revolutionizing)

---

## test-19-formulaic-challenges.md

```
Despite challenges common in the crowded monitoring space, Acme continues to thrive. While facing headwinds, the organization remains resilient and committed to its vision.
```

Expected: formulaic challenges ("Despite challenges... continues to thrive", "While facing headwinds... remains resilient")

---

## test-20-false-ranges.md

```
The platform addresses needs from the Big Bang of data generation to the dark matter of unstructured logs, covering everything from ancient monoliths to modern microservices.
```

Expected: false ranges (pairing unrelated extremes)

---

## test-21-inline-header-lists.md

```
- **Performance:** Performance improved by 40%
- **Scale:** Scale increased to handle 10x traffic
- **Reliability:** Reliability reached 99.99% uptime
- **Security:** Security now includes SOC 2 compliance
```

Expected: inline-header lists (bold header repeats the point)

---

## test-22-title-case-headings.md

```
## Strategic Negotiations And Key Partnerships

## Important Updates And Recent Changes

## Best Practices And Recommendations For Teams
```

Expected: title case headings (should be sentence case)

---

## test-23-cutoff-disclaimers.md

```
While specific details are limited based on available information, the platform appears to offer significant value. As of my last update, the company had raised $40M. I don't have access to real-time data on their current customer count.
```

Expected: cutoff disclaimers ("While specific details are limited", "As of my last update", "I don't have access to real-time data")

---

## test-24-novelty-inflation.md

```
Michel introduced a term I hadn't heard before: context poisoning. She coined the phrase to describe a failure mode nobody's naming — a problem nobody talks about. It's the insight everyone's missing about modern systems.
```

Expected: novelty inflation ("introduced a term I hadn't heard before", "coined the phrase", "failure mode nobody's naming", "problem nobody talks about", "insight everyone's missing")

---

## test-25-emotional-flatline.md

```
What surprised me most was the platform's speed. I was fascinated to discover how teams use it. What struck me was the simplicity. I was excited to learn about the new features. The most interesting part is the API design. This hits different than other tools.
```

Expected: emotional flatline ("What surprised me most", "I was fascinated to discover", "What struck me was", "I was excited to learn", "The most interesting part"), "hits different"

---

## test-26-false-concession.md

```
While the platform is impressive, scalability remains a challenge. Although the team has made significant strides, the roadmap is still an open question.
```

Expected: false concession structure ("While X is impressive, Y remains a challenge", "Although X has made strides, Y is still open")

---

## test-27-rhetorical-questions.md

```
But what does this mean for developers? So why should you care? What's next? How can teams prepare for the changes ahead?
```

Expected: rhetorical question openers (3+ in a row = stacked questions)

---

## test-28-parenthetical-hedging.md

```
The platform offers several features (and, increasingly, new ones each quarter) that improve workflows (or, more precisely, streamline them). The results are significant (and perhaps more importantly, sustainable).
```

Expected: parenthetical hedging ("(and, increasingly, Z)", "(or, more precisely, Y)", "(and perhaps more importantly, W)")

---

## test-29-numbered-list-inflation.md

```
Here are the five things to know about the platform:
1. It's fast
2. It's scalable
3. It's easy to use
4. It integrates well
5. It has good support
```

Expected: numbered list inflation (padding to hit 5, items aren't genuinely discrete/parallel)

---

## test-30-reasoning-chain-artifacts.md

```
Let me think step by step about the platform's architecture. Breaking this down, we can see three layers. To approach this systematically, first let's consider the data layer. Working through this logically, the next step is the API layer. Step 1: identify the components.
```

Expected: reasoning chain artifacts ("Let me think step by step", "Breaking this down", "To approach this systematically", "first let's consider", "Working through this logically", "Step 1:")

---

## test-31-sycophantic-tone.md

```
Great question! The platform does support webhooks. Excellent point! You're absolutely right to ask about scalability. That's a really insightful observation about the API design.
```

Expected: sycophantic tone ("Great question!", "Excellent point!", "You're absolutely right!", "That's a really insightful observation")

---

## test-32-acknowledgment-loops.md

```
You're asking about the platform's performance. The question of whether it scales is important. To answer your question, the platform handles 10k requests per second. That's a great question. The architecture is designed for horizontal scaling.
```

Expected: acknowledgment loops ("You're asking about", "The question of whether", "To answer your question", "That's a great question")

---

## test-33-confidence-calibration.md

```
The platform is fast. Interestingly, it also handles high concurrency. Notably, the API is well-documented. Importantly, the team provides excellent support. Surprisingly, the pricing is competitive. Certainly, this is a strong offering. Significantly, the market is growing.
```

Expected: confidence calibration (7 phrases in ~60 words: Interestingly, Notably, Importantly, Surprisingly, Certainly, Significantly — density is 11+ per 100 words, well above the 2/500-word threshold)

---

## test-34-excessive-structure.md

```
## Overview

The platform is fast.

## Key Points

- It scales well
- It's easy to use

## Summary

The platform is good.

## Conclusion

You should try it.

## Introduction

This is the introduction.
```

Expected: excessive structure (5 headings in ~30 words), formulaic section headers (Overview, Key Points, Summary, Conclusion, Introduction)

---

## test-35-hedge-stacking.md

```
It's worth noting that the platform could potentially offer significant value, and it's important to understand that it might not be suitable for every team.
```

Expected: hedge stacking (3+ hedging constructions in one sentence: "It's worth noting that", "could potentially", "it's important to understand that", "might not be")

---

## test-36-metaphor-stacking.md

```
The tech landscape is a tapestry of innovation, where beacons of progress light the path forward. The company is a bridge connecting teams to a horizon of possibilities, navigating uncharted waters in a sea of opportunity.
```

Expected: metaphor stacking (6 metaphors in 50 words: landscape, tapestry, beacons, path, bridge, horizon, uncharted waters, sea of opportunity)

---

## test-37-date-range-vagueness.md

```
In recent years, the platform has evolved significantly. Over the past few months, the team has shipped features at an impressive pace. These days, modern engineering demands better tools. Lately, we've seen a shift toward observability.
```

Expected: date-range vagueness ("In recent years", "Over the past few months", "These days", "Lately")

---

## test-38-quotation-stuffing.md

```
As Steve Jobs once said, "Innovation distinguishes between a leader and a follower." Einstein famously noted that "Imagination is more important than knowledge." Mark Twain once wrote that "The secret of getting ahead is getting started."
```

Expected: quotation stuffing (3 uncontextualized quotes in 50 words)

---

## test-39-false-dichotomy.md

```
The question isn't whether AI will transform engineering — it's when. It's not a question of if teams will adopt observability, but how quickly they can do it. The debate isn't about whether this platform matters — it's about how much it will matter.
```

Expected: false dichotomy framing ("The question isn't whether X — it's when", "not a question of if... but how", "debate isn't about whether... it's about how much")

---

## test-40-false-vulnerability.md

```
Full disclosure: I was skeptical at first, but after using the platform for a week, I became a believer. I'll admit, I didn't think this would work, but the results speak for themselves. To be honest, I wasn't expecting much, but this exceeded all expectations.
```

Expected: false vulnerability ("Full disclosure: I was skeptical at first", "I'll admit, I didn't think this would work", "To be honest, I wasn't expecting much")

---

## test-41-clean-human-writing.md

```
Acme Analytics raised a $40M Series B led by Sequoia. The Boulder-based startup makes an observability platform that runs queries in under a second.

The pitch is speed. Their median time-to-resolution is 12 minutes, compared to the 45-minute industry average that Datadog reported in 2024.

They'll use the money to hire sales reps in EMEA and add log management. The monitoring market is crowded, but Acme's bet is that most teams still stitch together three or four tools and lose time switching between them.
```

Expected: clean — should score 9-10 on human-likeness with zero flags
