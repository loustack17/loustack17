# Resume Repo Guide

This repo is for refining Lou Chang's one-page resume variants for North American backend, enterprise .NET backend, and platform/cloud infrastructure roles.

Hard constraints:
- Keep the primary resume to one page.
- Preserve clean wrapping and readability.
- Optimize for human readability and role fit, not ATS stuffing.

Positioning:
- Maintain three variants: `backend` (General Backend), `enterprise` (Enterprise .NET Backend), and `platform` (Platform). They mirror the 202609 baseline PDFs and share the same facts with a different lens.
- Emphasize CI/CD, cloud infrastructure, production operations, reliability, migrations, performance, and safe delivery.
- Preserve backend credibility, but do not frame Lou as a generic feature or CRUD engineer.
- If a bullet can be framed at feature or system scope, choose the highest scope that is factually defensible.

Format:
- Duotify was project-based consulting, so list selected, separate client systems under one scope line. Each bullet is `label - text`: the label names the system, the text gives context, scale, then impact.
- Font is Helvetica Neue only. No substitutes, and never commit a PDF built with another font.
- Contact email is louchang@loustack.dev. The phone number is off by default because this repo is public.

Verified facts (from Lou):
- Contract clients are never named; use "Independent Consulting". Duotify client systems may be named.
- Used-car marketplace: Lou set up Auto Scaling. The WAF and the production-to-staging reroute were done by others, so do not claim them.
- TOTO "60+ stores" comes from a public web lookup, not Lou's records. Source URL and date are still pending.
- Cathay: Lou chose not to refactor so the delivery date could be met.
- The Duotify count is 12-14 concurrent projects and 20+ over the tenure. Never write "managed 14 projects".

Truth policy:
- Use only facts already in the repo or explicitly provided by the user.
- Never invent metrics, ownership, timelines, scale, impact, or technologies.
- If evidence is weak or conflicting, use the more conservative wording and flag it.

File roles:
- Edit `payloads/<target>.yaml` for content and `metadata.toml` for shared header/education. `modules/resume.typ` and `modules/styles.typ` hold the layout.
- Retired modules and their old wording live in `archive/legacy-modules/` as reference only. Do not use them as a source of facts.
- `archive/` holds retired modules and the previous resumes (LaTeX, Markdown, devops/fullstack PDFs). Reference only; do not edit.
- Treat `README.md` as GitHub profile content, not resume content.
- Do not edit `resume.pdf` directly.

Workflow:
1. Read the relevant `payloads/*.yaml`.
2. Rewrite for scope, context, impact, clarity, and factual precision before touching layout.
3. Preserve the context that makes the work matter; cut lower-signal detail before cutting context or impact.
4. If rendered output changes, rebuild the PDF and confirm it still fits on one page with clean wrapping.

Writing:
- Control sentence flow carefully. Keep bullets smooth, direct, and easy to scan.
- Lead with the context and why the work mattered, then the action, then the impact when the evidence supports it.
- Each bullet should express one core idea with clear context and clear impact.
- Prefer operational judgment, reliability, migration, deployment, security, and system impact over task lists.
- Mention technologies only when they are necessary for credibility.
- Use concise North American resume English.
- Avoid filler, inflated verbs, clipped phrasing, and README tone in the resume.

Output:
- If the user asks for bullets in chat, return 1 to 3 strong bullets unless asked otherwise.
- Keep bullets concise, but do not strip out the context or impact needed to make them persuasive.
- Do not include explanations unless the user asks.
