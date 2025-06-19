---
title: Model-Context-Protocol (MCP) Explained, Simply.
tags: 
date: '2025-06-16'
draft: 'false'
---

Model-Context-Protocol, or MCP as it's more commonly referred to, came about in November 2024 when Anthropic introduced it to the world via their blog. But what is it really, why do we need it and how to get started?

## What is it?
In its name, there are 3 elements: 

Model: This is the brain (the AI). It understands the question, figures out what it needs and when to ask for help.
Context: Context of the situation (e.g. historical chat transcript)
Protocol: Set of rules for how models find and talk to tools.

At its core it basically creates a standard way for different tools to be available to a LLM without having to build your own integration point.

Here is a simple analogy to try to explain this:

Imagine you have a delivery robot that can bring you anything - pizza, books, tools - but it doesn’t know the city very well. It needs help figuring out:

Where to go
Which roads to take
What to pick up

That’s where MCP comes in. MCP is like a smart traffic controller that:

Knows all the roads (tools and APIs)
Understands what the robot needs (context)
Gives clear directions (protocol)

So instead of the robot learning how to drive every kind of vehicle or talk to every store, it just follows MCP’s instructions. MCP handles the messy stuff - like traffic lights, road signs, and store hours - so the robot can focus on delivering what you asked for.

## Why do we need it?

So, imagine this: I want to pass in a prompt to my LLM and sometimes I want to ask it what the weather is going to be today. When I ask, I would love it to know what I am asking about (understand intent) and go query a weather api to get the latest result. In order to do this, you could write a layer over a weather api to connect it to your LLM. Now if I also wanted it to tell me the latest news headlines, I would have build a connector between a news api and the LLM. MCP solves this problem. Instead, each tool/api provider creates that connector and all you need to do is connect your LLM to an MCP server without having to know how to connect to each of these services.

{{< figure src="/images/weather-prompt.png" >}}


### Difference between MCP and API

Picture you want to talk to a friend’s phone. An API is kind of like a phone number — it lets you make a call and ask for something (like “give me the weather”) — but you need to know exactly how to dial it and what to say.

MCP is different.

Instead of dialing directly each time, MCP is more like having a universal phone directory and a helper. It already knows all the phone numbers and how to talk to them. So you just say, “I want the chef to blend this” or “look up a recipe”, and MCP makes sure your chatbot talks to the right tool in the right way — without you having to learn all the details yourself.

This makes it simpler and more flexible.

## How to get started?

You can look for existing MCP implementations for common tools you are looking to use. For example, there is an [existing MCP Server]((https://github.com/adhikasp/mcp-weather) for Weather.com API. Ideally, you would first look to see an MCP server implementation has already been created for the tool you want to connect your LLM too. If it does, you can add it quickly to your AI toolset. If it doesn't, you can create an MCP implementation and this is pretty straightforward. In python, you can just use [FastMCP](https://github.com/jlowin/fastmcp).

You can see a list of popular MCP servers [here](https://mcp.so/).