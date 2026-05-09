#!/bin/bash

# 🎯 GitHub Secrets Configuration Helper
# This script guides you through secrets setup

echo "╔═════════════════════════════════════════════════════╗"
echo "║   GitHub Secrets Setup - Quran Quest Release        ║"
echo "╚═════════════════════════════════════════════════════╝"
echo ""

REPO_OWNER="Muhammadjj"
REPO_NAME="Quran-Quest-"
SECRETS_URL="https://github.com/$REPO_OWNER/$REPO_NAME/settings/secrets/actions"

echo "📍 Steps to follow:"
echo ""
echo "1️⃣  KEYSTORE GENERATION"
echo "    First time only - Generate Android signing keystore:"
echo ""
echo "    \$ keytool -genkey -v -keystore android/app/upload-keystore.jks \\"
echo "        -keyalg RSA -keysize 4096 -validity 10000 -alias upload"
echo ""
echo "    ⚠️  SAVE THIS PASSWORD - You'll need it!"
echo ""

echo "2️⃣  ENCODE KEYSTORE TO BASE64"
echo "    Convert keystore to base64 for GitHub secret:"
echo ""
echo "    macOS/Linux:"
echo "    \$ base64 -i android/app/upload-keystore.jks | pbcopy"
echo ""
echo "    Linux (alternative):"
echo "    \$ base64 -w 0 android/app/upload-keystore.jks > keystore.b64"
echo "    \$ cat keystore.b64"
echo ""
echo "    Windows (Git Bash):"
echo "    \$ certutil -encode android\\app\\upload-keystore.jks temp.txt"
echo ""

echo "3️⃣  ADD GITHUB SECRETS"
echo "    Go to: $SECRETS_URL"
echo ""

# Secret 1
echo "    Secret 1: KEYSTORE_FILE"
echo "    ├─ Value: [paste the base64 string from step 2]"
echo "    └─ Type: Base64 Encoded Keystore"
echo ""

# Secret 2
echo "    Secret 2: KEYSTORE_PASSWORD"
echo "    ├─ Value: [password you created during keytool]"
echo "    └─ ⚠️  NEVER commit this!"
echo ""

# Secret 3
echo "    Secret 3: KEY_ALIAS"
echo "    ├─ Value: upload"
echo "    └─ (same as the -alias value from keytool)"
echo ""

# Secret 4
echo "    Secret 4: KEY_PASSWORD"
echo "    ├─ Value: [key password from keytool]"
echo "    └─ ⚠️  NEVER commit this!"
echo ""

echo "4️⃣  VERIFY SECRETS ADDED"
echo "    Using GitHub CLI (if installed):"
echo ""
echo "    \$ gh secret list --repo $REPO_OWNER/$REPO_NAME"
echo ""

echo "5️⃣  UPDATE .gitignore"
echo "    Ensure sensitive files are NOT in git:"
echo ""
echo "    $ cat >> .gitignore << 'EOF'"
echo "    # 🔐 Security - Android Signing"
echo "    *.jks"
echo "    *.keystore"
echo "    android/key.properties"
echo "    android/app/upload-keystore.jks"
echo "    EOF"
echo ""
echo "    $ git add .gitignore"
echo "    $ git commit -m 'Add security: ignore signing files'"
echo "    $ git push"
echo ""

echo "6️⃣  TEST THE WORKFLOW"
echo "    Create a git tag to trigger the workflow:"
echo ""
echo "    \$ git tag v1.0.0-test"
echo "    \$ git push origin v1.0.0-test"
echo ""
echo "    Check status at:"
echo "    https://github.com/$REPO_OWNER/$REPO_NAME/actions"
echo ""

echo "✅ VERIFICATION CHECKLIST"
echo "─────────────────────────────────────────────────"
echo ""

# Check 1
if [ -f "android/app/upload-keystore.jks" ]; then
    echo "  ⚠️  Keystore file FOUND locally - Make sure it's in .gitignore!"
    if grep -q "upload-keystore.jks\|*.jks" .gitignore; then
        echo "  ✅ Correctly excluded via .gitignore"
    else
        echo "  ❌ NOT in .gitignore - Add immediately!"
    fi
else
    echo "  ℹ️  Keystore file not found (will be created or stored only in secrets)"
fi

# Check 2
if grep -q "KEYSTORE_PASSWORD\|KEY_PASSWORD" .env 2>/dev/null || \
   grep -q "KEYSTORE_PASSWORD\|KEY_PASSWORD" pubspec.yaml 2>/dev/null; then
    echo "  ❌ PASSWORDS FOUND IN CODE - Remove immediately!"
else
    echo "  ✅ No passwords in code files"
fi

# Check 3
echo ""
echo "  ℹ️  Workflow file: .github/workflows/release-apk.yml"
if [ -f ".github/workflows/release-apk.yml" ]; then
    echo "  ✅ Workflow file exists"
else
    echo "  ⚠️  Workflow file not found"
fi

echo ""
echo "═════════════════════════════════════════════════════"
echo ""
echo "🎯 Quick Command Reference:"
echo ""
echo "List all secrets:"
echo "  \$ gh secret list"
echo ""
echo "Delete a secret:"
echo "  \$ gh secret delete SECRET_NAME"
echo ""
echo "Update a secret:"
echo "  \$ gh secret set SECRET_NAME < new_value.txt"
echo ""

echo "═════════════════════════════════════════════════════"
echo ""
echo "Need help? Check:"
echo "  📄 SIGNING.md"
echo "  📄 RELEASE_GUIDE.md"
echo "  📄 ADVANCED_RELEASE_TIPS.md"
echo ""
