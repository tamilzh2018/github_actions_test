#!/bin/bash
set -e  # Exit immediately if a command exits with a non-zero status

echo "🔧 Starting deployment..."

# Optional: Pull latest changes (if deploying from a remote server)
# git pull origin master

# Install dependencies
echo "📦 Installing dependencies..."
npm install

# Build the application (if applicable)
echo "🏗️ Building application..."
npm run build

# Start the application (or restart with PM2 or similar)
echo "🚀 Starting application..."
npm run start

# Optional: Use PM2 for process management
# pm2 restart node16-sample-app || pm2 start index.js --name node16-sample-app

echo "✅ Deployment complete."
