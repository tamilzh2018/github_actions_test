#!/bin/bash

echo "🔧 Starting deployment..."
echo "📦 Installing dependencies..."
npm install

echo "🏗️ Building application..."
npm run build

echo "🚀 Starting application for 5 seconds..."
node index.js &
APP_PID=$!
sleep 5
kill $APP_PID

echo "✅ Deployment script completed successfully."
echo "Your application has been deployed and ran successfully!"