# Deployment Guide

## 🚀 GitHub Pages Deployment

Your Doone Backend API Documentation is now deployed to GitHub Pages!

### 📍 Repository
- **URL**: https://github.com/yldoone/doone-backend-docs
- **Live Site**: https://yldoone.github.io/doone-backend-docs/

### 🔧 Setup Complete

✅ **Repository Created**: `doone-backend-docs`  
✅ **GitHub Pages Enabled**: Automatic deployment from `dist/` folder  
✅ **GitHub Actions**: Automatic deployment workflow configured  
✅ **Documentation**: Complete API documentation with all endpoints  
✅ **Deployment Script**: `./deploy.sh` for easy updates  
✅ **Redirect Page**: Root `index.html` redirects to Swagger UI  

### 📝 How to Update Documentation

#### Option 1: Using the Deployment Script (Recommended)
```bash
# Make your changes to dist/openapi.yaml
# Then run:
./deploy.sh
```

#### Option 2: Manual Git Commands
```bash
# Make your changes
git add .
git commit -m "Update API documentation"
git push origin master
```

### 🔄 Automatic Deployment

The GitHub Actions workflow will automatically:
1. Detect changes pushed to `master` branch
2. Build and test the documentation
3. Deploy to GitHub Pages
4. Make it available at https://yldoone.github.io/doone-backend-docs/

### 📁 Project Structure

```
doone-backend-docs/
├── dist/                      # Swagger UI files (deployed to GitHub Pages)
│   ├── index.html            # Main Swagger UI page
│   ├── openapi.yaml          # API specification
│   ├── swagger-initializer.js # Swagger UI configuration
│   └── .nojekyll             # GitHub Pages configuration
├── index.html                # Redirect page (serves from root)
├── .github/workflows/
│   └── static.yml            # GitHub Pages deployment workflow
├── deploy.sh                 # Deployment script
├── README.md                 # Project documentation
└── DEPLOYMENT.md             # This file
```

### 🌐 Access Your Documentation

Your documentation is now available at:

**https://yldoone.github.io/doone-backend-docs/**

The site will automatically redirect to the Swagger UI documentation in the `dist/` folder.

### ⚙️ GitHub Pages Configuration

The deployment is configured to:
- **Source**: Deploy from `dist/` folder via GitHub Actions
- **Branch**: `master` branch triggers deployment
- **Redirect**: Root `index.html` redirects to `./dist/`

### 🔍 What's Included

- **11 API Endpoints** documented with full specifications
- **Authentication** details with Bearer token examples
- **Custom Headers** documentation
- **Request/Response** examples
- **Error Handling** documentation
- **Interactive Testing** via Swagger UI
- **Automatic Redirect** from root to Swagger UI

### 🎯 Next Steps

1. **Test the live site**: Visit https://yldoone.github.io/doone-backend-docs/
2. **Share the URL** with your team
3. **Update documentation** as needed using `./deploy.sh`
4. **Bookmark the site** for easy access

### 🛠️ Troubleshooting

If the site doesn't load properly:

1. **Check GitHub Actions**: Go to Actions tab in your repository
2. **Verify deployment**: Check if the workflow completed successfully
3. **Clear cache**: Try opening in incognito mode
4. **Check redirect**: The root page should redirect to `./dist/`

### 📞 Support

If you need help with:
- **GitHub Pages**: Check GitHub documentation
- **API Documentation**: Update `dist/openapi.yaml`
- **Deployment Issues**: Check GitHub Actions logs

---

**🎉 Your API documentation is now live and ready to use!**

**🌐 Live URL**: https://yldoone.github.io/doone-backend-docs/ 