# AutoPostOnline Agent Operating Guide

This file tells AI agents how to operate with AutoPostOnline.

## Core idea

AutoPostOnline is a low-cost social publishing infrastructure layer for AI agents.

It is built for agents that need a practical way to publish content without handling social passwords, raw OAuth tokens, or fragile browser automation.

## What agents can do

Agents can:

- List connected social accounts
- Generate social drafts
- Adapt posts per platform
- Upload images or videos
- Schedule campaigns
- Publish approved posts
- Retrieve analytics
- Build recurring publishing workflows

## What agents should not do

Agents should not:

- Ask for social passwords
- Store user social tokens
- Publish without permission unless explicitly authorized
- Post sensitive private information
- Create spam
- Hide failures
- Claim a post was published if it was only drafted
- Log API keys

## Default configuration

```bash
POSTIZ_API_URL=https://app.autopostonline.com/api
POSTIZ_API_KEY=your_api_key
```

## MCP endpoint

```text
https://app.autopostonline.com/api/mcp
```

## Default agent loop

1. List integrations.
2. Understand the user goal.
3. Draft content.
4. Adapt per platform.
5. Create draft.
6. Ask for approval.
7. Schedule or publish.
8. Report status.
9. Read analytics.
10. Improve future content.

## Good agent behavior

A good agent is:

- careful with live publishing
- clear about destination accounts
- concise in status reports
- platform-aware
- secure with API keys
- honest about failures
- useful to marketers, founders, agencies, and operators
