# JCC Brand: Jacobs, Coolidge & Company design system

Brand-only design system for **Jacobs, Coolidge & Company** (wealth advisory, since 1962). Built to be imported into Claude Design ("Set up your design system" → link code on GitHub / local folder, or upload assets). Contains no client or project material.

## Contents
```
BRAND.md                 Brand guidelines (source of truth: logo, color, type, voice, components)
tokens/tokens.css        CSS custom properties (--jcc-*)
tokens/tokens.json       Same tokens as JSON
css/jcc.css              Brand components (buttons, cards, hero, chips, footer...)
examples/index.html      Reference page: type scale, buttons, cards, swatches, dark section
logos/svg/               Vector logos (converted from the 2017 Illustrator EPS)
logos/png/               Transparent high-res PNGs
fonts/                   Source Serif 4 + Source Sans 3 woff2 (SIL OFL) as open stand-ins
assets/web/              Brand imagery from jacobsandcoolidge.com (bridge photo, background texture)
docs/                    Official 2017 brand palette + styleboard (PDF + PNG preview)
```

## Quick start
```html
<link rel="stylesheet" href="tokens/tokens.css">
<link rel="stylesheet" href="css/jcc.css">
<a class="jcc-btn jcc-btn--primary">Schedule a Conversation</a>
```
Brand essentials: blue `#1B75BC`, light blue `#27AAE1`, orange accent `#F68C1F`, Cool Gray 9 `#6D6E71`, navy `#0C1F2F`; Justus Pro headlines / Proxima Nova body (fallback Georgia / Arial); tagline "Judicious. Creative. Collaborative."

## Importing into Claude Design
1. claude.ai → Design systems → Create new design system.
2. **Link code on GitHub:** paste this repo's URL (the whole repo is small and frontend-only). Or use **Link code from your computer** with a local clone.
3. **Add fonts, logos and assets:** upload `logos/svg/jcc.logo.color.svg`, `logos/svg/jcc.logo.white.svg`, `logos/svg/jcc.icononly.color.svg`, the `fonts/*.woff2`, and `docs/jcc-styleboard-2017.pdf`.
4. **Any other notes:** paste the key rules from BRAND.md (orange is accent only; use the white logo file on dark; Justus Pro / Proxima Nova are Adobe Fonts, not bundled).

Fonts: Justus Pro and Proxima Nova are licensed via Adobe Fonts and are not redistributed here.
