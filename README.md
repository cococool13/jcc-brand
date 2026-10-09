# JCC Brand: Jacobs, Coolidge & Company design system

Brand-only design system for **Jacobs, Coolidge & Company** (wealth advisory, since 1962), structured for Claude Design import. No client or project material.

## Start here
1. `DESIGN.md`: agent-facing rules (do/don't, tokens, component usage). **Read first.**
2. `BRAND.md`: full brand guidelines and sources.
3. `tokens/tokens.css` + `css/jcc.css`: the code. `components/` and `examples/` show it in use.

## Contents
```
DESIGN.md                    Agent rules: color, type, layout, components, logos, voice, compliance, don'ts
BRAND.md                     Full guidelines (identity, logo usage, palette, type, imagery, voice)
tokens/tokens.css            --jcc-* CSS variables (+ @import of JCC's Adobe Fonts kit)
tokens/tokens.json           Same tokens as JSON
css/jcc.css                  All component styles
components/                  One HTML file per component: button, card, hero, header, footer,
                             form-fields, table, stat, quote-band, badge-chip (+ index.html)
examples/landing.html        Landing page
examples/one-pager.html      US Letter one-pager / report
examples/social-post.html    1080x1080 social post
examples/index.html          Style gallery (type scale, swatches)
logos/svg, logos/png         Full logo, icon, social mark: color (light bg) + white (dark bg)
logos/favicon/               favicon.svg/.ico, 32, 180 (apple-touch), 512
fonts/                       Source Serif 4 / Source Sans 3 woff2 (OFL stand-ins)
assets/web/                  Brand imagery (bridge photo, background texture)
docs/                        2017 palette + styleboard (PDF + PNG), accessibility.md (contrast table)
```

## Import into Claude Design
1. In Claude (claude.ai): Settings → Design systems → create a new design system (or in standalone claude.ai/design: Design systems → Create new design system).
2. **Link code on GitHub:** paste `https://github.com/cococool13/jcc-brand`. The repo is private, so your GitHub account must be connected/authorized for Claude when prompted. If the link can't be read, use **Link code from your computer** and pick a local clone of this repo instead (it's small and frontend-only, no subfolder needed).
3. **Add fonts, logos and assets:** upload `logos/svg/jcc.logo.color.svg`, `logos/svg/jcc.logo.white.svg`, `logos/svg/jcc.icononly.color.svg`, `fonts/*.woff2`, and `docs/jcc-styleboard-2017.pdf`.
4. **Any other notes:** paste the contents of `DESIGN.md`.
5. Review the generated palette/type/components, then test with: "Create a landing page for JCC", "Make a one-pager about our planning process", "Design a 1080×1080 LinkedIn post". Compare against `examples/`. Publish when it matches.

## Brand fonts (licensed)

Justus Pro, Proxima Nova and Proxima Nova Condensed are licensed to JCC through Adobe Fonts and load from JCC's kit: `<link rel="stylesheet" href="https://use.typekit.net/yko2ltc.css">` (CSS names `justus-pro`, `proxima-nova`, `proxima-nova-condensed`). The font files themselves can't be redistributed, so they aren't in this repo. Source Serif 4 and Source Sans 3 in `fonts/` are open-licensed stand-ins.
