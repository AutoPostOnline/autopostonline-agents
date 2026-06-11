# AutoPostOnline Agents

**Smart, cheap, convenient social publishing infrastructure for AI agents.**

AutoPostOnline Agents gives AI agents a reliable way to create drafts, upload media, schedule posts, publish campaigns, and retrieve analytics through AutoPostOnline.

Instead of giving an agent social passwords, browser sessions, or raw platform tokens, a human connects social accounts once inside AutoPostOnline. The agent then works safely through an API key.

## Why agents use AutoPostOnline

Agents need infrastructure, not hacks.

AutoPostOnline gives agents:

- One API for social publishing
- One dashboard for connected social channels
- Drafts, scheduling, media, publishing, and analytics in one place
- Postiz-compatible API behavior
- MCP-friendly endpoint
- CLI-ready configuration
- Human-controlled social account connections
- No social passwords inside the agent
- No brittle browser automation
- A low-cost publishing layer built for agent workflows

## Production endpoints

App:

```text
https://app.autopostonline.com
```

API base URL:

```text
https://app.autopostonline.com/api
```

MCP endpoint:

```text
https://app.autopostonline.com/api/mcp
```

Agent docs:

```text
https://autopostonline.com/docs/agents
```

Agent landing page:

```text
https://autopostonline.com/agents
```

GitHub repo:

```text
https://github.com/AutoPostOnline/autopostonline-agents
```

## Quickstart

Set these in your agent, shell, automation, or secret manager:

```bash
export POSTIZ_API_URL="https://app.autopostonline.com/api"
export POSTIZ_API_KEY="your_api_key"
```

Optional AutoPostOnline aliases:

```bash
export AUTOPOSTONLINE_API_URL="https://app.autopostonline.com/api"
export AUTOPOSTONLINE_API_KEY="your_api_key"
```

Test connected integrations:

```bash
curl -sS \
  -H "Authorization: Bearer $POSTIZ_API_KEY" \
  "$POSTIZ_API_URL/public/v1/integrations"
```

Fallback header format:

```bash
curl -sS \
  -H "Authorization: $POSTIZ_API_KEY" \
  "$POSTIZ_API_URL/public/v1/integrations"
```

## Recommended agent workflow

1. User subscribes to Agent Unlimited.
2. User logs in to AutoPostOnline.
3. User connects social channels.
4. User creates an API key.
5. Agent lists connected integrations.
6. Agent creates drafts.
7. Human approves or schedules.
8. Agent publishes.
9. Agent reads analytics.
10. Agent improves future posts.

## Launch pricing

**AutoPostOnline Agent Unlimited**

- $9/month
- Built for AI agents
- Unlimited connected channels in AutoPostOnline
- Unlimited posts in the publishing workflow
- API access
- MCP endpoint
- CLI-friendly configuration
- Simple setup
- Low-cost social publishing infrastructure

Usage-based overages can be automated later. The launch version is intentionally simple: subscribe, connect channels, create an API key, and start publishing.

## Repository contents

```text
README.md                         Main public repo page
SKILL.md                          Agent skill instructions
AGENTS.md                         Agent operating rules
server.json                       MCP/server metadata
llms.txt                          LLM discovery file
docs/agents/index.md              Main agent docs
docs/agents/quickstart.md         Fast setup
docs/agents/api.md                API reference
docs/agents/mcp.md                MCP setup
docs/agents/cli.md                CLI setup
docs/agents/billing.md            Billing model
docs/agents/publish.md            Publishing workflow
website/agents-page.html          Website landing page
website/docs-agents-page.html     Website docs page
website/thank-you-page.html       Stripe success page
stripe/stripe-product-checklist.md
promotion/launch-checklist.md
```

## Security model

AutoPostOnline does not ask agents to store social passwords.

Social accounts are connected by humans through AutoPostOnline. Agents only use an AutoPostOnline API key.

Never commit:

- `.env`
- API keys
- Stripe secret keys
- OAuth client secrets
- webhook signing secrets
- social account tokens
- production Docker files with secrets
