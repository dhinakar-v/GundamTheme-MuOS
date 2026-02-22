#!/bin/bash
# Simple Theme Packaging Script
# This script creates a .muxthm file from your theme

THEME_NAME="GundamTheme"
OUTPUT_FILE="${THEME_NAME}.muxthm"

echo "📦 Packaging ${THEME_NAME}..."
echo ""

# Check if we're in the right directory
if [ ! -f "credits.txt" ]; then
    echo "❌ Error: Please run this script from inside the GundamTheme folder"
    exit 1
fi

# Check for required files
if [ ! -f "scheme/global.ini" ]; then
    echo "❌ Error: scheme/global.ini not found"
    exit 1
fi

if [ ! -f "720x480/scheme/default.ini" ]; then
    echo "❌ Error: 720x480/scheme/default.ini not found"
    exit 1
fi

# Warn if no background image
if [ ! -f "720x480/image/wall/default.png" ]; then
    echo "⚠️  Warning: No background image found at 720x480/image/wall/default.png"
    echo "   The theme will work but may look incomplete."
    echo ""
fi

# Warn if no preview image
if [ ! -f "720x480/preview.png" ]; then
    echo "⚠️  Warning: No preview image found at 720x480/preview.png"
    echo "   Theme picker won't show a preview."
    echo ""
fi

# Create the zip file
echo "Creating archive..."
zip -r "${OUTPUT_FILE}" . -x "*.sh" -x "README.md" -x ".git/*" -x "*.muxthm"

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Success! Theme packaged as: ${OUTPUT_FILE}"
    echo ""
    echo "📋 Next steps:"
    echo "1. Copy ${OUTPUT_FILE} to your device's /MUOS/theme/ folder"
    echo "2. Go to Configuration → Customisation on your device"
    echo "3. Select ${THEME_NAME} and press A to activate"
    echo ""
else
    echo "❌ Error: Failed to create package"
    exit 1
fi
