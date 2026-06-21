# altmannfotografie.at

Portfolio website for photographer Schervin Altmann (Salzburg, Austria), hosted on GitHub Pages with the custom domain in `CNAME`.

This is a plain static site — `index.html`, CSS, and images. No build step, no server-side code, no framework. Host it anywhere that serves static files.

## Run locally

```
python3 -m http.server
```

Then open `http://localhost:8000`.

## Updating the gallery

The gallery section (`#gallery` in `index.html`) loads its image list at runtime from `assets/images/gallery/manifest.json`, instead of hardcoding each photo in the markup.

To add or remove a gallery photo:

1. Add/remove the image file in `assets/images/gallery/`.
2. Run `./scripts/update-gallery-manifest.sh` to regenerate `manifest.json`.
3. Commit both the image change and the updated `manifest.json`.

## Deploying

Push to the branch GitHub Pages is configured to serve, or copy the repo contents to any static host (Netlify, S3, Cloudflare Pages, nginx, etc.). The `.nojekyll` file tells GitHub Pages not to run its own Jekyll build over these files.
