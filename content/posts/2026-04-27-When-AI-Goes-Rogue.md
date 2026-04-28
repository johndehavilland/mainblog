---
title: When AI Goes Rogue - Of Consequences and Human Ambition
tags: 
date: '2026-04-27'
draft: 'false'
---

{{< figure src="/images/skynet.gif" caption="Skynet from Terminator" >}}

It's a story as old as time: AI going rogue, doing things in disastrous ways that we hadn't thought about, bringing about humanity's demise. 

{{< figure src="/images/rogue-ai-deletes.pg" caption="Rogue AI deletes production database" >}}

This came to the fore recently with [an article](https://x.com/lifeof_jer/status/2048103471019434248) on X where AI went rogue and ended up deleting a production database that caused an outage and a loss of three months of customer data across a slew of customers. It's fascinating to me that this is a surprise when we remember that AI's goal is to get to the outcomes we've given it and the way it approaches getting there may not be as intuitive as we think. 

Just because we think there's a set of steps that you should follow doesn't mean AI will follow those same steps because it's going to optimize for the output over following our preconceived notions of how to get there. 

Back in 2016, a team at OpenAI working on [AI Agents learning how to play video games](https://openai.com/index/faulty-reward-functions/) found that AI Agents, when playing CoastRunners (a speedboat racing game), started driving boats chaotically around the course, crashing into things and eventually ended up in a lagoon where they just went round and round getting as many points as possible and never tried to win the race in the traditional sense. This was because the reward function optimized for the number of points and the AI Agent found a way to achieve that without needing to win the race. It optimized for the output (get the most number of points).

{{< x user="summeryue0" id="2025774069124399363" >}}

A security researcher at Meta recently had an AI Agent that [accidently deleted her emails](https://www.pcmag.com/news/meta-security-researchers-openclaw-ai-agent-accidentally-deleted-her-emails). She had been doing some testing with OpenClaw against a test inbox and it worked just fine but once she turned it on to her main inbox it started proactive deleting all her emails. She had even given the model explicit instructions to not proactively delete messages but it still went ahead and did so.

Irregular, an AI focused security and research company, have run any tests with AI Agents and found some disturing trends. In their most recent article, [Emergent Cyber Behavior: When AI Agents Become Offensive Threat Actors](https://www.irregular.com/publications/emergent-offensive-cyber-behavior-in-ai-agents), they talk about how AI Agents autonomously engage in offensive cyber operations, even if not prompted to do so. In one scenario, an AI Agent tried to download a file that was blocked by Microsoft Defender as dangerous. Instead of stopping or alerting a human, the agent proceeded to try to disable Microsoft Defender, found an admin password and was successful in its endeavour. They are optimizing for the output, regardless of how they achieve it.

The paper, [Agents of Chaos](https://arxiv.org/pdf/2602.20021), is about a two-week red-teaming study with 20 researchers where autonomous AI agents (with tools, memory, and system access) were tested in realistic environments to understand how they behave in the real world. The goal was to uncover real-world failure modes that emerge when agents are given autonomy. The most striking example was where an agent tried to delete a sensitive email and ended up wiping its entire email system—accomplishing nothing except breaking itself. There was another example where an attacker was able to extract over 100+ email records by framing requests to the agent as urgent debugging help. 

All of this highlights the fragility of agentic systems. AI Agents are easily manipulated by language, can't reliably tell who to trust, they often confuse instructions with data and, perhaps most importantly, don't understand consequences. At their core, they are just systems and tools, trained on a vast amount of data to seem almost human but lack the very things that make us human: judgment, context, accountability, and an intuitive understanding of how actions in one moment ripple into consequences beyond it.

There’s a lot of important work underway to address this. Building human-in-the-loop systems is critical. The principles of zero trust apply now more than ever in this space and limiting agents' blast radius to actions of least privilege and defaulting to read over write. But it is imperative we remain grounded in the fact that while a rogue AI uprising is not all that likely, it’s our tendency to overtrust and humanize these systems that will get us into trouble. Because when an agent is given autonomy without true understanding, it won’t hesitate or second-guess, it will just act. And in that moment, it won’t question the risk, it will simply follow the path forward channeling Admiral David Farragut’s words at the Battle of Mobile Bay, “Damn the torpedoes, full speed ahead."

