# Stripe Product Checklist

## Launch product

Product name:

```text
AutoPostOnline Agent Unlimited
```

Description:

```text
Smart, cheap, convenient social publishing infrastructure for AI agents.
```

Price:

```text
$9/month recurring
```

## Payment Link

Create a Stripe Payment Link for the $9/month recurring price.

Recommended settings:

- Collect customer email: yes
- Quantity: 1
- Phone: off
- Address: off unless required for tax
- Promotion codes: optional
- Redirect after payment: https://autopostonline.com/agents/thank-you

## Customer Portal

Enable Stripe Customer Portal so customers can:

- update payment method
- view invoices
- cancel subscription

## Manual provisioning for launch day

1. Customer pays.
2. Customer logs into AutoPostOnline.
3. Customer connects social channels.
4. Customer creates API key.
5. Customer connects agent using the docs.

## Later automation

Add later:

- Stripe webhook provisioning
- usage metering
- automatic plan enforcement
- customer usage dashboard
