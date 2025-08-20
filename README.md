# Doone Backend API Documentation

This repository contains the API documentation for the Doone Backend system, built with Swagger UI.

## 🚀 Live Documentation

The documentation is deployed and available at: [https://yldoone.github.io/doone-backend-docs/](https://yldoone.github.io/doone-backend-docs/)

## 🤝 Contributing

To update the API documentation:

1. Modify the `dist/openapi.yaml` file
2. Test the changes locally
3. Commit and push the changes
4. GitHub Pages will automatically deploy the updates

## 🧭 Run locally (quick start)


```bash
# Python (built-in)
cd dist && python3 -m http.server 8000

# PHP (built-in)
php -S localhost:8000 -t dist
```

Then open http://localhost:8000

## 🏗️ Generate/refresh openapi.yaml from PHP annotations (optional)

If your controllers are annotated (e.g., in `api/`), you can (re)generate the spec:

```bash
composer install
./vendor/bin/openapi api --exclude vendor -o dist/openapi.yaml
```

## ✅ Validate and lint the spec

See `docs/openapi-verify-fix.md` for copy‑pasteable commands to validate and lint `dist/openapi.yaml`.
