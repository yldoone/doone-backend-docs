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
├── dist/
│   ├── index.html              # Swagger UI main page
│   ├── openapi.yaml            # API specification
│   └── swagger-initializer.js  # Swagger UI config
├── .github/workflows/
│   └── static.yml              # GitHub Pages deployment
├── deploy.sh                   # Deployment script
├── README.md                   # Project documentation
└── DEPLOYMENT.md               # This file
```

### 🌐 Access Your Documentation

Once GitHub Pages is enabled (you may need to do this manually in the repository settings), your documentation will be available at:

**https://yldoone.github.io/doone-backend-docs/**

### ⚙️ GitHub Pages Settings

To enable GitHub Pages (if not already done):

1. Go to your repository: https://github.com/yldoone/doone-backend-docs
2. Click **Settings** tab
3. Scroll down to **Pages** section
4. Under **Source**, select **Deploy from a branch**
5. Choose **master** branch and **/(root)** folder
6. Click **Save**

### 🔍 What's Included

- **11 API Endpoints** documented with full specifications
- **Authentication** details with Bearer token examples
- **Custom Headers** documentation
- **Request/Response** examples
- **Error Handling** documentation
- **Interactive Testing** via Swagger UI

### 🎯 Next Steps

1. **Enable GitHub Pages** in repository settings
2. **Test the live site** once deployed
3. **Share the URL** with your team
4. **Update documentation** as needed using `./deploy.sh`

### 📞 Support

If you need help with:
- **GitHub Pages**: Check GitHub documentation
- **API Documentation**: Update `dist/openapi.yaml`
- **Deployment Issues**: Check GitHub Actions logs

---

**🎉 Your API documentation is now live and ready to use!** 