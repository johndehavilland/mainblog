---
title: Model-Context-Protocol (MCP) Explained, Simply.
tags: 
date: '2025-06-16'
draft: 'false'
---

Model-Context-Protocol, or MCP as it's more commonly referred to, came about in November 2024 when Anthropic [introduced](https://www.anthropic.com/news/model-context-protocol) it to the world. But what is it really, why do we need it and how to get started?

## What is it?
In its name, there are 3 elements: 

**Model**: This is the brain (the AI). It understands the question, figures out what it needs and when to ask for help.

**Context**: Context of the situation (e.g. historical chat transcript)

**Protocol**: Set of rules for how models find and talk to tools.

At its core it basically creates a standard way for different tools to be available to a LLM without having to build your own integration point.

Here is a simple analogy to try to explain this:

Imagine you have a delivery robot that can bring you anything - pizza, books, tools - but it doesn’t know the city very well. It needs help figuring out:

* Where to go
* Which roads to take
* What to pick up

That’s where MCP comes in. MCP is like a smart traffic controller that:

* Knows all the roads (tools and APIs)
* Understands what the robot needs (context)
* Gives clear directions (protocol)

So instead of the robot learning how to drive every kind of vehicle or talk to every store, it just follows MCP’s instructions. MCP handles the messy stuff - like traffic lights, road signs, and store hours - so the robot can focus on delivering what you asked for.

## Why do we need it?

Let's say I want to ask an LLM what the weather is going to be today. When I ask, it is not going to know since its training data does not include today's data. So relying on a pure LLM wouldn't work. Much better would be for the LLM to understand the intent of my question and have the ability to go call a weather api to get the latest weather. In order to do this, you could write a layer over a weather api to connect it to your LLM and make this available as a tool for my LLM to use. Now if I also wanted it to tell me the latest news headlines, I would have build a connector between a news api and the LLM. This is all well and good but this is a lot of different wrappers you would need to build for all the tools you would potentially want your LLM to have access to. 

MCP solves this problem. Instead of you having to create your own wrappers etc, each tool/api provider creates that connector for their tool/api and all you need to do is connect your LLM to an MCP server without having to know how to connect to each of these services and they all follow a standard way of connecting to make it super simple for your LLM to use these tools.

{{< figure src="/images/weather_prompt.png" >}}


### Difference between MCP and API

Suppose you want to talk to a friend’s phone. An API is kind of like a phone number - it lets you make a call and ask for something (like “give me the weather”) - but you need to know exactly how to dial it and what to say.

MCP is different.

Instead of dialing directly each time, MCP is more like having a universal phone directory and a helper. It already knows all the phone numbers and how to talk to them. So you just say, “I want the chef to blend this” or “look up a recipe”, and MCP makes sure your AI talks to the right tool in the right way - without you having to learn all the details yourself.

This makes it simpler and more flexible.

## How to get started?

You can look for existing MCP implementations for common tools you are looking to use. For example, there is an [existing MCP Server]((https://github.com/adhikasp/mcp-weather) for weather.com API. Ideally, you would first look to see an MCP server implementation has already been created for the tool you want to connect your LLM too. If it does, you can add it quickly to your AI toolset. If it doesn't, you can create an MCP implementation and this is pretty straightforward. In python, you can just use [FastMCP](https://github.com/jlowin/fastmcp).

You can see a list of popular MCP servers [here](https://mcp.so/).