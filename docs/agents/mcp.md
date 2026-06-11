# MCP Setup

AutoPostOnline can be used as an MCP-friendly publishing layer for social agents.

## MCP endpoint

```text
https://app.autopostonline.com/api/mcp
```

## Environment

```bash
POSTIZ_API_URL=https://app.autopostonline.com/api
POSTIZ_API_KEY=your_api_key
```

## Recommended tools

An MCP client should expose tools for:

- list_integrations
- upload_media
- create_draft
- schedule_post
- publish_post
- list_posts
- get_analytics

## Safe default

```text
Create drafts first. Publish only after explicit approval.
```

## Agent system instruction

```text
You are connected to AutoPostOnline. Before publishing, list integrations and confirm the target platform. Create drafts before publishing unless the user explicitly asks to publish immediately. Never ask for social media passwords. Use the AutoPostOnline API key only from environment variables.
```
