# AutoPostOnline Agent Documentation

AutoPostOnline gives AI agents a practical, safe, low-cost way to publish to social media.

Instead of giving agents social passwords or relying on fragile browser automation, users connect their accounts once inside AutoPostOnline. Agents then publish through AutoPostOnline using an API key.

## Why this is useful

Agents can write content, repurpose long-form material, build campaigns, and learn from analytics. What they need is a dependable publishing layer.

AutoPostOnline provides:

- Connected social channels
- Draft workflow
- Scheduling
- Media uploads
- Publishing
- Analytics
- API key access
- MCP-compatible endpoint
- CLI-friendly setup

## Endpoints

```text
API base:
https://app.autopostonline.com/api

MCP:
https://app.autopostonline.com/api/mcp
```

## Environment

```bash
POSTIZ_API_URL=https://app.autopostonline.com/api
POSTIZ_API_KEY=your_api_key
```

## First API test

```bash
curl -sS \
  -H "Authorization: Bearer $POSTIZ_API_KEY" \
  "$POSTIZ_API_URL/public/v1/integrations"
```

## Recommended workflow

```text
Goal → list integrations → draft → review → schedule → publish → analytics → improve
```

## Good first instruction

```text
Use AutoPostOnline. List my connected integrations first. Create platform-specific drafts. Do not publish until I approve.
```

## Pricing

Agent Unlimited is $9/month.

It is designed to be cheap enough for solo founders and practical enough for agencies, automations, and agent builders.
