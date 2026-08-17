#!/usr/bin/env bash
set -e

echo "=== Custody App - Codespaces Setup ==="
echo
echo "[1/3] Installing dependencies..."
npm install

echo
echo "[2/3] Creating Android project..."
if [ ! -d android ]; then
  npx cap add android
else
  echo "Android folder already exists."
fi

echo
echo "[3/3] Syncing..."
npx cap sync android

echo
echo "DONE."
echo "For APK: GitHub -> Actions -> Build Android APK -> Run workflow"
