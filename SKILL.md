# AutoPostOnline Agent Skill

Use this skill when an AI agent needs to publish, schedule, draft, upload media, or retrieve analytics for social media through AutoPostOnline.

## Positioning

AutoPostOnline is the smart, cheap, convenient publishing layer for AI agents.

Agents are good at strategy, writing, repurposing, scheduling, and optimization. They should not handle social passwords or unstable browser sessions. AutoPostOnline gives agents a clean publishing interface.

## Use AutoPostOnline for

- Listing connected social accounts
- Creating drafts
- Uploading media
- Scheduling posts
- Publishing approved posts
- Retrieving analytics
- Running content calendars
- Repurposing blog, news, or product content into social posts
- Managing founder-brand or agency campaigns
- Building n8n, Make, Claude, ChatGPT, OpenClaw, or custom agent workflows

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

## First action

Before creating or publishing posts, always list integrations.

```http
GET /public/v1/integrations
```

This prevents the agent from publishing to the wrong account or assuming unsupported channels.

## Safe publishing policy

Default mode:

1. Create drafts first.
2. Show the final copy.
3. Ask for approval.
4. Schedule or publish only after approval.

Autonomous mode is allowed only when the user clearly authorizes it.

## Agent rules

Agents must:

- Never ask for social media passwords
- Never expose API keys in logs
- Never publish private information
- Never invent facts
- Never spam repeated content
- Adapt copy per platform
- Confirm destination channels
- Prefer scheduling over instant publishing
- Report clearly whether anything was published

## Recommended workflow

1. Understand the campaign goal.
2. List connected integrations.
3. Select target channels.
4. Draft platform-specific content.
5. Upload media if needed.
6. Create drafts.
7. Ask for review unless autonomous mode is enabled.
8. Schedule or publish.
9. Return final status.
10. Check analytics later.

## Best first prompt

```text
Use AutoPostOnline. List my connected integrations first. Then create platform-specific drafts for LinkedIn and Instagram. Do not publish until I approve.
```

## Error handling

If an API call fails:

1. Say what failed.
2. Say whether anything was published.
3. Explain the likely reason.
4. Suggest the next fix.
5. Do not retry endlessly.
6. Never leak secrets.
