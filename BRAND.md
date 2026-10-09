# Jacobs, Coolidge & Company (JCC) Brand Guidelines

Source of truth for JCC-branded design. Tokens live in `tokens/tokens.css` and `tokens/tokens.json`; components in `css/jcc.css`; a live reference page in `examples/index.html`. Where something is unknown it is marked **UNKNOWN**; don't fill gaps with guesses.

## 1. Identity
- **Name:** Jacobs, Coolidge & Company (short: JCC). Legal entity: Jacobs, Coolidge & Company, LLC.
- **What it is:** an independent wealth-advisory and financial-planning firm, serving clients since 1962.
- **Tagline:** "Judicious. Creative. Collaborative." (In the tagline, "Creative." may be set in light blue `#27AAE1`.)
- **Mission:** "Our mission at JCC is to design and implement creative solutions so our clients and their families can live the lives that they desire."
- **Website lines (jacobsandcoolidge.com):** "We don't just manage your wealth; we enrich your life." · "Here, business is personal." · "Exceptional service is our baseline." · "Our Difference Is In The Details. And it's a commitment you can count on." · "A holistic approach to financial wellness."
- **Programs named on the site (trademarks, use exact form):** The RICH® Planning Experience.
- **Website:** www.jacobsandcoolidge.com

## 2. Logo
The mark is a stylized **bridge** ("The Four Pillars Bridge") over the wordmark "JACOBS•COOLIDGE & COMPANY". The icon places the bridge in a **hexagon**; the social mark adds "JCC" under the hexagon. Original vectors: Adobe Illustrator, Aug 2017.

| Variant | SVG (preferred) | PNG (transparent, 600 dpi) | Use |
|---|---|---|---|
| Full logo, color | `logos/svg/jcc.logo.color.svg` | `logos/png/jcc.logo.color.png` | Primary, on white/light |
| Full logo, white | `logos/svg/jcc.logo.white.svg` | `logos/png/jcc.logo.white.png` | On navy, blue, or photo-with-scrim |
| Icon, color | `logos/svg/jcc.icononly.color.svg` | `logos/png/jcc.icononly.color.png` | Favicon, app icon, small marks |
| Icon, white | `logos/svg/jcc.icononly.white.svg` | `logos/png/jcc.icononly.white.png` | Icon on dark |
| Social mark, color | `logos/svg/jcc.socialicon.initials.color.svg` | `logos/png/jcc.socialicon.initials.color.png` | Social avatar |
| Social mark, white | `logos/svg/jcc.socialicon.initials.white.svg` | `logos/png/jcc.socialicon.initials.white.png` | Social/OG image on dark |
| Logo + URL lockup | n/a | `logos/png/jcc.logo.color.with-website.png` | Small lockup (use UNKNOWN) |
| Website favicon | n/a | `logos/png/jcc.favicon.web.png` | As served by jacobsandcoolidge.com |

Favicon / app icons: `logos/favicon/` (favicon.svg, favicon.ico, 32px, 180px apple-touch, 512px). See `logos/README.md`.

**Usage rules**
- Use the supplied files only; don't redraw, recolor, stretch, rotate, outline, add shadows/effects, or rearrange the bridge and wordmark.
- Light backgrounds → `color` files. Navy, blue, or photo-under-scrim → `white` files (never a CSS invert).
- Keep the full logo's proportions (1.90:1). Typical web header height 64–80px; LinkedIn/social masthead ~78px.
- Alt text: "Jacobs, Coolidge & Company".
- Styleboard (2017) shows the logo with ample surrounding white space and the bridge icon used alone in the hexagon for social. It does **not** specify clear-space, minimum size, or misuse rules: those remain **UNKNOWN**. Recommended (not official): clear space ≥ the bridge's tower height on all sides; full logo ≥ 120px wide on screen, icon ≥ 16px.
- Styleboard shows Option A (bridge over wordmark) and Option B (hexagon icon over wordmark). The 2017 logo files delivered to JCC use the bridge mark (Option A) for the full logo and the hexagon for icons (the website favicon is the hexagon), so treat that as current. Formal approval record: **UNKNOWN**.

## 3. Color
### Core palette (official 2017 palette, `docs/jcc-brand-palette.pdf`)
| Name | HEX | Pantone | CMYK | Role |
|---|---|---|---|---|
| Blue | `#1B75BC` | 2174C | 85/50/0/0 | Primary, structure, links, primary buttons |
| Light blue | `#27AAE1` | 299C | 70/15/0/0 | Secondary, highlights, gradient partner |
| Cool Gray 9 | `#6D6E71` | Cool Gray 9 | 0/0/0/70 | Body text |
| Cool Gray 7 | `#A7A9AC` (print) / `#75767A` (web, AA) | Cool Gray 7 | 0/0/0/40 | Muted text, rules |
| Orange | `#F68C1F` | 144C | 0/54/100/0 | **Accent only** |
| Brand gradient | `#27AAE1 → #1B75BC` (135°) | | | Bands, hero fills |

### Web extensions (from jacobsandcoolidge.com global styles)
Navy `#0C1F2F` (dark sections, headings), photo scrim `rgba(10,38,60,.77)`, light section `#F2F3F3`, neutral `#EEEEEE`, text gray `#6D6F71`. The live site's Elementor "primary" is `#3677B7` (a near-match of brand blue); prefer `#1B75BC`.

### Color rules
- Blue carries structure; orange is a small accent (CTA such as "Learn More", kicker rules, dots). Orange text only on navy/dark; on light use orange as a tinted chip (`#FEF3E5` bg, `#9A560C` text).
- No rainbow palettes, no green/red for good/bad in data (use blue vs gray).
- Allowed gradients only: `135° #27AAE1→#1B75BC`, `135° #1B75BC→#0E3F66`, `140° #1B75BC→#0E3F66→#0C2A46`.
- All text meets WCAG AA. Approved and failing text/background pairs: `docs/accessibility.md`.

## 4. Typography
| Role | Brand font (print + website) | Digital fallback | Self-hostable open stand-in (in `fonts/`) |
|---|---|---|---|
| Headlines | **Justus Pro** (slab serif), semibold 600 | Georgia | Source Serif 4 |
| Body | **Proxima Nova** 400 | Arial | Source Sans 3 |
| Labels / eyebrows | **Proxima Nova Condensed** 500, uppercase, +0.08em | Arial Narrow | Source Sans 3 |

Justus Pro and Proxima Nova are licensed through Adobe Fonts and load from JCC's kit `https://use.typekit.net/yko2ltc.css` (imported by `tokens/tokens.css`). Font files are **not** redistributed here. Source Serif 4 / Source Sans 3 (SIL OFL) are included as `.woff2` for self-hosting.
Scale (rem): 0.75 / 0.875 / 1 / 1.25 / 1.5 / 2 / 2.5 / 3.25. Headings line-height 1.2; body 1.6. Avoid tight negative tracking and "tech startup" geometric headlines; avoid uppercase labels everywhere.

## 5. Layout, shape, imagery
- Generous white space; restraint reads as premium. Alternate white / `#F2F3F3` / navy sections.
- Radius 4–12px (buttons 4px, cards 8px); soft shadows only; hairline borders `#DCE4EA`. Never nest cards.
- Hero: full-bleed photo (bridges, water, architecture, families, handshakes) under a navy scrim with white slab-serif headline, or the blue gradient band.
- Brand imagery themes (styleboard): abstract water pattern; architectural geometric/hexagon pattern ("Built on a Foundation of Trust"); service and relationships; The Four Pillars Bridge; clients for a lifetime, through all life stages. Sample assets: `assets/web/bridge.jpg`, `assets/web/jcc-background-texture.svg` (site background texture).
- Icons: blue/gray line-and-fill pictograms (styleboard). No icon files available (**UNKNOWN**).

## 6. Voice and tone
Judicious, creative, collaborative. Classic and conservative with an updated feel; reliable, trustworthy, professional, consultative. Sound like a trusted advisor explaining clearly: plain language, specific, never salesy or jargon-heavy, never alarmist. Recurring ideas: the bridge, foundation of trust, families, all life stages, legacy, "business is personal".

## 7. Components (see `css/jcc.css`, `components/`, `examples/`)
Header (logo left, nav right) · Hero (photo + scrim, tagline, orange "Learn More" + ghost button) · Buttons (primary blue, outline blue, accent orange, ghost on dark) · Eyebrow label + 64×5px orange kicker rule · Cards (white, hairline, 8px radius) · Chips · Divider with 6px orange dot · Navy footer with white logo and compliance disclosure · Form fields · Table · Stat/figure · Quote band · Badge · US Letter one-pager · 1080×1080 social post.

## 8. Required disclosure
Include on marketing pages and printed pieces, verbatim:
> Securities offered through LPL Financial. Member FINRA/SIPC. Advisory services offered through NewEdge Advisors, LLC, a registered investment adviser. NewEdge Advisors, LLC and Jacobs, Coolidge & Company, LLC are separate entities from LPL Financial.

Never mix third-party (LPL, NewEdge) logos or styling into JCC designs.
