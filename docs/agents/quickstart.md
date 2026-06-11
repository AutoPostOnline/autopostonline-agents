# Quickstart

## 1. Subscribe

Go to:

```text
https://autopostonline.com/agents
```

Subscribe to Agent Unlimited.

## 2. Log in

Go to:

```text
https://app.autopostonline.com
```

Use the same email as your subscription.

## 3. Connect social channels

Connect the channels your agent should use.

## 4. Create an API key

Create an API key in the developer/API area.

## 5. Configure your agent

```bash
export POSTIZ_API_URL="https://app.autopostonline.com/api"
export POSTIZ_API_KEY="your_api_key"
```

## 6. Test

```bash
curl -sS \
  -H "Authorization: Bearer $POSTIZ_API_KEY" \
  "$POSTIZ_API_URL/public/v1/integrations"
```

Fallback:

```bash
curl -sS \
  -H "Authorization: $POSTIZ_API_KEY" \
  "$POSTIZ_API_URL/public/v1/integrations"
```

## 7. First prompt

```text
Use AutoPostOnline to list my connected integrations, then create drafts for my selected platforms. Do not publish yet.
```
