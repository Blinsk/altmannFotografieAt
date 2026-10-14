This is a website hosted on git (pages). Analyse the Project.

## Project overview

Plain self-contained static site for altmannfotografie.at (photographer Schervin Altmann, Salzburg), served by GitHub Pages (`CNAME`, `.nojekyll`). No build step. Jekyll was dropped in commit `ab557ec`, so there are no Liquid templates or Ruby toolchain left.

- `index.html`: the one-page site. Its sections are marked with HTML comments: intro, claim, hero, about, gallery, contact, artverwandt.
- Gallery: `assets/images/gallery/manifest.json` is loaded at runtime. After adding or removing photos, regenerate it with `scripts/update-gallery-manifest.sh`.
- Legal pages (Austrian law): `impressum.html` (§5 ECG / §25 MedienG plus disclaimer) and `datenschutz.html` (DSGVO). Both are linked from the menu overlay and the footer.
- **No third-party requests:** fonts (Lato, Parisienne), lightGallery 2.9.0-beta.1 and Vivus 0.3.1 are self-hosted in `assets/vendor/`. Don't add CDN links, Google Fonts, embeds or tracking without updating `datenschutz.html` and considering a consent banner.
- `robots.txt` and `sitemap.xml` are written by hand. Add any new page to `sitemap.xml`.

Only commit when the user explicitly asks.
