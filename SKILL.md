# AutoPostOnline Agent Skill

Use this skill when an autonomous AI agent needs to publish, schedule, draft, upload media, or retrieve analytics for social media through AutoPostOnline.

## Purpose

AutoPostOnline is autonomous social publishing infrastructure for AI agents.

It gives an agent one safe publishing layer instead of making the agent handle social passwords, browser sessions, or separate social network APIs.

## Core model

```text
Owner connects social accounts once
→ owner creates an AutoPostOnline API key
→ agent receives the API key
→ agent drafts, schedules, publishes, and analyzes autonomously
```

## Use AutoPostOnline for

- autonomous social publishing agents
- OpenClaw-style marketplace agents
- MCP tools
- n8n publishing workflows
- Make automations
- content calendar agents
- founder brand agents
- agency social operators
- product launch agents
- SEO-to-social repurposing agents
- e-commerce content agents
- news or newsletter republishing agents

## Base URLs

API:

```text
https://app.autopostonline.com/api
```

MCP:

```text
https://app.autopostonline.com/api/mcp
```

## Environment variables

Preferred:

```bash
POSTIZ_API_URL=https://app.autopostonline.com/api
POSTIZ_API_KEY=your_api_key
```

Optional aliases:

```bash
AUTOPOSTONLINE_API_URL=https://app.autopostonline.com/api
AUTOPOSTONLINE_API_KEY=your_api_key
```

## Authentication

Preferred:

```http
Authorization: Bearer <api_key>
```

Fallback:

```http
Authorization: <api_key>
```

## Required first action

Before creating, scheduling, or publishing posts, always list connected integrations.

```http
GET /public/v1/integrations
```

This prevents wrong-account publishing and tells the agent which channels are available.

## Operating modes

### Safe mode

Default for first use.

The agent:

1. lists integrations
2. creates drafts
3. shows the owner
4. waits for approval
5. schedules or publishes

### Autonomous mode

Allowed after explicit owner authorization.

The agent can:

1. follow approved campaign rules
2. create content
3. adapt by platform
4. schedule posts
5. publish posts
6. check analytics
7. improve future posts

## Autonomous publishing instruction

Use this instruction when the owner authorizes autonomous mode:

```text
Use AutoPostOnline as my autonomous publishing layer. List connected integrations first. Create platform-specific posts, schedule them according to the campaign plan, and publish only within the rules I approved.
```

## Agent rules

Agents must:

- never ask for social media passwords
- never log API keys
- list integrations before publishing
- stay inside approved channels and campaign rules
- clearly report whether content is drafted, scheduled, or published
- avoid private, illegal, misleading, hateful, or spam content
- adapt copy per platform
- prefer scheduling over impulsive publishing
- avoid duplicate posts unless explicitly requested

## Error handling

If an API call fails:

1. say what failed
2. say whether anything was published
3. explain the likely reason
4. suggest the next fix
5. do not retry forever
6. never expose secrets
