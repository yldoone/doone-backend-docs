#!/bin/bash

# Doone Backend Docs Deployment Script

echo "🚀 Deploying Doone Backend API Documentation..."

# Check if we're in the right directory
if [ ! -f "dist/index.html" ]; then
    echo "❌ Error: dist/index.html not found. Please run this script from the project root."
    exit 1
fi

# Add all changes
echo "📝 Adding changes..."
git add .

# Check if there are changes to commit
if git diff --cached --quiet; then
    echo "ℹ️  No changes to commit."
else
    # Commit changes
    echo "💾 Committing changes..."
    git commit -m "Update API documentation - $(date '+%Y-%m-%d %H:%M:%S')"
    
    # Push to GitHub
    echo "📤 Pushing to GitHub..."
    git push origin master
    
    echo "✅ Deployment completed!"
    echo "🌐 Your documentation will be available at: https://yldoone.github.io/doone-backend-docs/"
    echo "⏳ It may take a few minutes for GitHub Pages to update."
else
    echo "✅ No changes to deploy."
fi

echo "🎉 Done!" 