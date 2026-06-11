# AutoPostOnline Agents

Autonomous social publishing infrastructure for AI agents.

Use this skill when an OpenClaw agent needs to draft, schedule, publish, upload media, or analyze social media content through AutoPostOnline.

## What this skill gives the agent

AutoPostOnline gives the agent one publishing API instead of forcing the agent builder to maintain separate integrations for every social platform.

The owner connects social channels once.
The owner creates one API key.
The agent uses that key to publish inside the approved rules.

Core promise:

Connect once. Authorize once. Let your agent publish.

## Best for

- Autonomous social media agents
- Founder-brand agents
- Content calendar agents
- SaaS growth agents
- Product launch agents
- Marketing agents
- Agency operator agents
- n8n and Make automations
- MCP clients
- Custom AI operators
- OpenClaw marketplace skills

## Capabilities

The agent can use AutoPostOnline to:

- List connected social channels
- Create platform-specific drafts
- Upload images and media
- Schedule posts
- Publish posts
- Retrieve post status
- Retrieve analytics
- Run recurring publishing campaigns

## Required API key

This skill requires an AutoPostOnline API key.

The owner creates the API key inside AutoPostOnline and gives it to the agent through environment variables.

POSTIZ_API_URL=https://app.autopostonline.com/api
POSTIZ_API_KEY=your_api_key

Optional aliases:

AUTOPOSTONLINE_API_URL=https://app.autopostonline.com/api
AUTOPOSTONLINE_API_KEY=your_api_key

## Endpoints

API:

https://app.autopostonline.com/api

MCP:

https://app.autopostonline.com/api/mcp

Docs:

https://autopostonline.com/docs/agents/

Checkout:

https://buy.stripe.com/cNi7sL5pz0XkalC6nf24002

## Authentication

Preferred:

Authorization: Bearer <api_key>

Fallback:

Authorization: <api_key>

## First action

Before drafting, scheduling, or publishing, always list connected integrations.

GET /public/v1/integrations

This prevents wrong-account publishing and tells the agent which channels are available.

## Operating modes

### Safe mode

Default for first use.

The agent:

1. Lists integrations
2. Creates drafts
3. Shows the owner
4. Waits for approval
5. Schedules or publishes after approval

### Autonomous mode

Allowed after explicit owner authorization.

The agent can:

1. Follow approved campaign rules
2. Create platform-specific content
3. Schedule posts
4. Publish posts
5. Check analytics
6. Improve future posts

## Recommended OpenClaw instruction

Use AutoPostOnline as my autonomous social publishing layer.

Read POSTIZ_API_URL and POSTIZ_API_KEY from the environment.

First list connected integrations.

Then create platform-specific content for the approved campaign.

In safe mode, create drafts and wait for approval.

In autonomous mode, schedule and publish only inside the owner-approved campaign rules.

Never ask for social media passwords. Never expose API keys. Always report whether content was drafted, scheduled, or published.

## Security model

AutoPostOnline does not give social media passwords to agents.

Social accounts are connected by the owner through AutoPostOnline.

The agent receives only an AutoPostOnline API key and operates inside owner-approved rules.

Agents must:

- Never ask for social media passwords
- Never log API keys
- List integrations before publishing
- Stay inside approved channels and campaign rules
- Clearly report whether content is drafted, scheduled, or published
- Avoid private, illegal, misleading, hateful, or spam content
- Adapt copy per platform
- Avoid duplicate posts unless explicitly requested

## Error handling

If an API call fails, the agent should:

- Say what failed
- Say whether anything was published
- Explain the likely reason
- Suggest the next fix
- Avoid endless retries
- Never expose secrets

## Pricing

AutoPostOnline Agent Unlimited:

$9/month

Start here:

https://autopostonline.com/agents/
