# AutoPostOnline Agent Launch Package

This package contains the files needed to make AutoPostOnline agent-ready.

## Files

- `SKILL.md` - agent skill instructions.
- `AGENTS.md` - guidance for agent runtimes and developers.
- `server.json` - MCP/server metadata.
- `llms.txt` - LLM-readable summary.
- `docs/agents/*` - documentation pages.
- `website/agents-page.html` - WordPress HTML for `/agents`.
- `website/docs-agents-page.md` - docs page content.
- `stripe/stripe-product-checklist.md` - Stripe settings.
- `promotion/launch-checklist.md` - promotion plan.
- `scripts/install-agent-files.sh` - install docs into repo.

## Install

```bash
cd ~/Postiz
unzip autopostonline_agent_ready_push.zip
./autopostonline_agent_ready_push/scripts/install-agent-files.sh ~/Postiz

git add SKILL.md AGENTS.md server.json llms.txt docs/agents
git commit -m "add AutoPostOnline agent docs and metadata"
git push
```

## Website

Create `/agents` in WordPress and paste `website/agents-page.html` into a Custom HTML block. Replace `YOUR_STRIPE_PAYMENT_LINK`.

Create `/docs/agents` and paste `website/docs-agents-page.md` or host the Markdown docs in your documentation system.
