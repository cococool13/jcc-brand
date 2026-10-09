# DESIGN.md: JCC design rules for AI agents

Concise, enforceable rules for generating Jacobs, Coolidge & Company (JCC) designs. Full rationale: `BRAND.md`. Tokens: `tokens/tokens.css` (`--jcc-*`). Components: `css/jcc.css` + `components/*.html`. Reference screens: `examples/`.

## Setup
```html
<link rel="stylesheet" href="tokens/tokens.css">  <!-- also loads JCC Adobe Fonts kit -->
<link rel="stylesheet" href="css/jcc.css">
```
Always use tokens (`var(--jcc-…)`), never raw hexes outside tokens.css.

## Color
- Structure = blue `--jcc-blue #1B75BC`; light blue `--jcc-sky #27AAE1` for highlights and the band gradient; dark surfaces = navy `--jcc-navy #0C1F2F`.
- Orange `--jcc-orange #F68C1F` = accent only: one CTA ("Learn More"), kicker rules (64×5px), divider dot. Orange buttons take **navy** text.
- Body text gray-9 `#6D6E71`; headings navy. Backgrounds: white, `--jcc-surface-alt #F2F3F3`, `--jcc-paper`, navy.
- Gradients: only `--jcc-band`, `--jcc-band-deep`, `--jcc-band-navy`.
- Contrast: only pairings listed in `docs/accessibility.md`. Never white on sky/orange, never orange or sky text on white.

## Type
- Headlines: Justus Pro (slab serif) 600 → `--jcc-font-display`. Body: Proxima Nova → `--jcc-font-body`. Labels/eyebrows: Proxima Nova Condensed 500 uppercase +0.08em → `.jcc-eyebrow`.
- Scale: `--jcc-text-xs…4xl` (0.75–3.25rem). Headings line-height 1.2, body 1.6. Sentence case for headlines.

## Layout
- 1140px container, 8px spacing scale, sections 64px vertical padding; alternate white / surface-alt / navy.
- Radius 4px (buttons, inputs, badges), 8px (cards), pill (chips). Soft shadows only. Generous white space.

## Components (class → use)
| Component | Class / file | Rule |
|---|---|---|
| Header | `.jcc-header`, `components/header.html` | Color logo left, navy nav right |
| Hero | `.jcc-hero`, `components/hero.html` | Photo + navy scrim; tagline; 1 orange CTA + ghost |
| Button | `.jcc-btn--primary/--outline/--accent/--ghost-light` | Primary blue is default; accent once per view |
| Card | `.jcc-card` | Hairline, 8px radius, never nested |
| Chip / badge | `.jcc-chip(--blue)`, `.jcc-badge(--navy/--outline)` | Chips = topics, badges = status |
| Form | `.jcc-field/.jcc-label/.jcc-input/.jcc-select/.jcc-textarea` | Label above, blue focus ring |
| Table | `.jcc-table` | Blue-deep header, zebra paper, `.num` right-aligned |
| Stat | `.jcc-stat` | Slab-serif number, 3px blue rule (orange on dark) |
| Quote band | `.jcc-quote-band` | Band-deep gradient, orange kicker |
| Footer | `.jcc-footer` | White logo file + **required disclosure** |
| One-pager | `.jcc-page` | US Letter, 6px band top, disclosure footer |
| Social | `.jcc-social` | 1080×1080 navy, band ribbons top/bottom |

## Logos
- Light backgrounds: `logos/svg/jcc.logo.color.svg`. Dark/photo: `logos/svg/jcc.logo.white.svg` (never CSS-invert). Small spaces: `jcc.icononly.*`. Favicon set: `logos/favicon/`.
- Don't redraw, recolor, stretch, rotate, outline, or add effects. Alt text "Jacobs, Coolidge & Company".

## Voice
Trusted advisor: clear, warm, plain language, specific, never salesy, jargon-heavy, or alarmist. Tagline "Judicious. Creative. Collaborative." Themes: bridge, foundation of trust, families, all life stages, legacy, "business is personal".

## Compliance
Every marketing page, one-pager, and printed piece includes verbatim:
> Securities offered through LPL Financial. Member FINRA/SIPC. Advisory services offered through NewEdge Advisors, LLC, a registered investment adviser. NewEdge Advisors, LLC and Jacobs, Coolidge & Company, LLC are separate entities from LPL Financial.

No performance promises or guarantees. No third-party (LPL/NewEdge) logos or styling.

## Don't
Rainbow/vibrant palettes · green/red for good/bad (use blue vs gray) · glassmorphism, gradient blobs, neon · tight-tracked geometric "startup" headlines · uppercase everywhere · emoji · nested cards · more than one orange CTA per view · invented people, testimonials, or client data.
