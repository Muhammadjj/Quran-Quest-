#!/bin/bash

# 🚀 Quran Quest - APK Release Script
# یہ script APK build کرے گا اور GitHub پر release کرے گا

set -e

# رنگ
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${BLUE}╔════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║   Quran Quest - APK Release Builder    ║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════╝${NC}"

# Version input
read -p "Enter version number (e.g., 1.0.0): " VERSION

if [ -z "$VERSION" ]; then
    echo -e "${RED}❌ Version cannot be empty${NC}"
    exit 1
fi

VERSION_TAG="v$VERSION"

echo -e "${YELLOW}📦 Building APK for version: $VERSION${NC}"

# Step 1: Get dependencies
echo -e "${BLUE}📥 Getting dependencies...${NC}"
flutter pub get

# Step 2: Clean build
echo -e "${BLUE}🧹 Cleaning previous builds...${NC}"
flutter clean

# Step 3: Build APK
echo -e "${BLUE}🔨 Building release APK...${NC}"
flutter build apk --release -v

APK_PATH="build/app/outputs/flutter-apk/app-release.apk"

if [ -f "$APK_PATH" ]; then
    echo -e "${GREEN}✅ APK built successfully!${NC}"
    echo -e "${GREEN}📍 Location: $APK_PATH${NC}"
    ls -lh "$APK_PATH"
else
    echo -e "${RED}❌ APK build failed!${NC}"
    exit 1
fi

# Step 4: Create git tag
echo -e "${BLUE}🏷️  Creating Git tag: $VERSION_TAG${NC}"
git tag -a "$VERSION_TAG" -m "Release $VERSION" || echo -e "${YELLOW}⚠️  Tag already exists${NC}"

# Step 5: Push to GitHub
echo -e "${BLUE}📤 Pushing to GitHub...${NC}"
git push origin "$VERSION_TAG" || echo -e "${YELLOW}⚠️  Push skipped${NC}"

# Step 6: Create release notes
RELEASE_NOTES="## 📱 Quran Quest v$VERSION

### ✨ What's New
- Enhanced features and improvements
- Better performance and stability
- Bug fixes and optimizations

### 📥 Installation Guide
1. Download the APK from the release assets
2. Enable 'Unknown Sources' in your Android settings
3. Tap the APK file to install
4. Grant all requested permissions

### 📊 System Requirements
- Android 7.0 (API level 24) or higher
- Internet connection required for certain features

### 🔐 Security Note
This APK is signed with our official release key. Always download from official releases only.

---
**Commit History:**
\`\`\`
$(git log --oneline -n 10)
\`\`\`"

# Step 7: Create release with GitHub CLI
if command -v gh &> /dev/null; then
    echo -e "${BLUE}🚀 Creating GitHub release...${NC}"
    gh release create "$VERSION_TAG" "$APK_PATH" \
        --title "Quran Quest $VERSION" \
        --notes "$RELEASE_NOTES"
    echo -e "${GREEN}✅ Release created successfully!${NC}"
else
    echo -e "${YELLOW}⚠️  GitHub CLI not installed. Manual steps:${NC}"
    echo -e "${YELLOW}1. Go to: https://github.com/Muhammadjj/Quran-Quest-/releases${NC}"
    echo -e "${YELLOW}2. Click 'Create a new release'${NC}"
    echo -e "${YELLOW}3. Tag: $VERSION_TAG${NC}"
    echo -e "${YELLOW}4. Upload: $APK_PATH${NC}"
    echo -e "${YELLOW}5. Description:${NC}"
    echo -e "${YELLOW}$RELEASE_NOTES${NC}"
fi

echo -e "${GREEN}╔════════════════════════════════════════╗${NC}"
echo -e "${GREEN}║     ✅ Release Process Complete!       ║${NC}"
echo -e "${GREEN}╚════════════════════════════════════════╝${NC}"

echo -e "${BLUE}APK Details:${NC}"
file "$APK_PATH"
du -h "$APK_PATH"
