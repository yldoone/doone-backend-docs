# Disabled Workflows

This folder contains workflows from the original swagger-ui repository that have been disabled for the Doone Backend API Documentation project.

## Why These Are Disabled

These workflows were designed for the original swagger-ui project and are not needed for our API documentation deployment:

- **docker-*.yml**: Docker build and push workflows for swagger-ui packages
- **nodejs.yml**: Node.js CI/CD workflows for swagger-ui development
- **release-*.yml**: Release workflows for swagger-ui packages
- **codeql.yml**: CodeQL security analysis (not needed for static docs)
- **dependabot-merge.yml**: Dependabot merge automation
- **deploy.yml**: Original deployment workflow (replaced with static.yml)

## Current Active Workflow

Only one workflow is currently active:
- **static.yml**: GitHub Pages deployment for the API documentation

This ensures clean, focused deployments without unnecessary CI/CD overhead. 