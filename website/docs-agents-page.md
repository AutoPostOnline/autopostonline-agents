# AutoPostOnline Agent Docs

AutoPostOnline is social publishing infrastructure for AI agents. It gives your agent a Postiz-compatible API for listing social channels, uploading media, creating drafts, scheduling posts, publishing posts, and checking analytics.

## Base URL

```text
https://app.autopostonline.com/api
```

## MCP endpoint

```text
https://app.autopostonline.com/api/mcp
```

## Environment variables

```bash
POSTIZ_API_URL=https://app.autopostonline.com/api
POSTIZ_API_KEY=your_api_key
```

or:

```bash
AUTOPOSTONLINE_API_URL=https://app.autopostonline.com/api
AUTOPOSTONLINE_API_KEY=your_api_key
```

## Workflow

1. Subscribe to Agent Unlimited.
2. Connect social accounts in the dashboard.
3. Create an API key.
4. Give the key to your agent.
5. Ask the agent to create drafts, schedule posts, or publish.

## Safety

Agents never need social media passwords. Social accounts are connected through OAuth in the AutoPostOnline dashboard.

## Billing

Agent Unlimited is $9/month + usage. It includes unlimited connected channels, unlimited posts, 10,000 Agent Action Units per month, and $0.0001 per additional unit.
