# Resume Repo Guide

One-page US Letter resumes for Lou Chang: `backend`, `enterprise` (.NET), `platform`. They mirror the 202609 baseline PDFs and share the same facts.

## Rules
- Use only facts in this repo or given by Lou. Never invent metrics, ownership, scale, or technologies. If evidence is weak, use the conservative wording and flag it.
- Font is Helvetica Neue only. Never commit a PDF built with another font.
- Duotify was project-based consulting: one scope line, then selected, separate client systems.
- Each bullet is `label - text`: label names the system; text gives context, then scale, then impact.
- Contract clients are never named; use "Independent Consulting". Duotify clients may be named.
- Phone is off by default (public repo). Email: louchang@loustack.dev.

## Verified facts
- Used-car site: Lou set up Auto Scaling only. WAF and the production-to-staging reroute were others' work.
- TOTO "60+ stores" is public context, not Lou's record; still unconfirmed.
- Cathay: Lou chose not to refactor to meet the delivery date.
- Duotify: 12-14 projects at a time, 20+ over the role. Never "managed 14 projects".

## Files
- Content: `payloads/<target>.yaml`, shared header and education in `metadata.toml`, layout in `modules/`.
- Cover letter: `letter.typ` + `payloads/letter.yaml` (`--input company=... --input role=...`).
- Review prompts: `docs/agents/`. `archive/` is reference only. `README.md` is GitHub profile content.

## Build
`typst compile cv.typ <out>.pdf --input target=<target>`, then confirm one page and the embedded fonts. Do not edit PDFs directly.
