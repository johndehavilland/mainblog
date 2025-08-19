---
title: Don't let the word-prediction engines fool you.
tags: 
date: '2025-08-19'
draft: 'false'
---

I came across this article the other day, [Chatbots Can Go Into a Delusional Spiral. Here’s How It Happens.](https://www.nytimes.com/2025/08/08/technology/ai-chatbots-delusions-chatgpt.html) which details how a 47 year old, corporate recruiter was convinced by ChatGPT that he had discovered a novel mathematical formula. Except he hadn't. Over the course of 3 weeks, his interactions with ChatGPT led him down this spiral, only getting out of it when he used a different AI system to see if it made sense. It reminded me of one of the first Chat Bots, [Eliza](https://www.cprime.com/resources/blog/lessons-and-warnings-from-the-original-chatbot-eliza/#:~:text=In%20the%20fast%2Dpaced%20race,and%20emotions%20onto%20the%20program.), from back in the 1960s. This bot was pretty effective, and all it did was reflect back to the user their own words. Some users began forming emotional attachments and shared personal and private data with it during their interactions.

Reading this, and seeing more and more of these stories popping up, it made me think about the fact that this technology, while powerful, is misunderstood in terms of how it operates, fundamentally. And that misunderstanding is causing some of these challenges.

Specifically, the large language models.

As humans we often anthroporhize things. And we have kinda done that with AI. But AI doesn't really have as many human qualities as we would perhaps like to imagine. At its most basic, these LLMs are simply predicting the next word in a sentence. Take the sentence:

> Its sunny and I want to go the ___?

Now an AI might say the following

| Option  | Probability |
|---------|-------------|
| Beach   | 90%         |
| Park    | 5%          |
| Shops   | 3%          |
| Movies  | 2%          |

But if added some more context, it might say

> I love trees. Its sunny and I want to go the ____?

| Option | Probability |
|--------|-------------|
| Park   | 95%         |
| Beach  | 3%          |
| Shops  | 1%          |
| Movies | 1%          |

Its a next word prediction engine, based on all the sentences it has ever seen. You can see this even more when you ask it to say what is next in this sentence:

> 1 + 1 = _

It doesn't add 1 to 1 to get 2. Essentially, it says everytime I see ```1 + 1 =``` then the next thing typically is 2, 90% of the time.

This is a super oversimplification, but hopefully is clear what is happening under the hood. How do we get to the scenario outlined in the article at the start? Well, if we are clear that these models are just predicting the next most likely word in the sentence, give the prior X number of words it has seen for context, then you can begin to see how, given a seed of an idea and some overarching system prompt that says be a strong, positive cheerleader, it starts to build out a narrative that reads well but has no grounding in reality.

**These are probablistic systems, not a deterministic ones**. This is a fancy way to say that the outcomes are not guaranteed to be the same given the same input. This alone should help stand you in good stead as you use AI, especially large language models.