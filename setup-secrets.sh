#!/bin/bash

# 🔐 SECRET MANAGEMENT - GitHub Release کے لیے Hidden Tips

echo "╔════════════════════════════════════════════════════════════╗"
echo "║   ⚡ IMPORTANT HIDDEN TIPS - GitHub Release API Secrets    ║"
echo "╚════════════════════════════════════════════════════════════╝"

echo ""
echo "🔑 API Secrets jو add کرنے ہیں:"
echo ""

# Create secrets script
cat > setup-secrets.sh << 'EOF'
#!/bin/bash

# 1. KEYSTORE_FILE - Android Signing Keystore
echo "📝 Step 1: Android Keystore کو encode کریں"
echo "Command: base64 -w 0 android/app/upload-keystore.jks | pbcopy"
echo "(یہ value KEYSTORE_FILE secret میں paste کریں)"
echo ""

# 2. Check files
echo "📝 Step 2: اہم فائلوں کو چیک کریں"
echo "Files to ignore:"
ls -la android/app/ | grep -E "(jks|keystore|key.properties)" || echo "✅ Safe - کوئی sensitive file expose نہیں"
ls -la android/ | grep key.properties || echo "✅ Safe"
echo ""

# 3. Check .gitignore
echo "📝 Step 3: .gitignore میں ہے؟"
if grep -q "*.jks\|*.keystore\|key.properties" .gitignore; then
    echo "✅ Correctly configured"
else
    echo "⚠️ Add یہ lines to .gitignore:"
    cat >> .gitignore << 'GITIGNORE'

# 🔐 Security - Android Signing
*.jks
*.keystore
android/key.properties
android/app/upload-keystore.jks
GITIGNORE
    echo "Updated!"
fi
echo ""

# 4. GitHub Secrets List
echo "📝 Step 4: یہ Secrets GitHub پر add کریں:"
echo "URL: https://github.com/Muhammadjj/Quran-Quest-/settings/secrets/actions"
echo ""
echo "Required Secrets:"
echo "  1. KEYSTORE_FILE (base64 encoded jks file)"
echo "  2. KEYSTORE_PASSWORD (* * * * *)"
echo "  3. KEY_ALIAS (upload)"
echo "  4. KEY_PASSWORD (* * * * *)"
echo ""

# 5. Verify GitHub Token
echo "📝 Step 5: GitHub Token Permission Check"
echo "یقینی بنائیں کہ GITHUB_TOKEN کے پاس ہے:"
echo "  ✅ contents:write (for releases)"
echo "  ✅ actions:read (for workflow)"
echo ""

# 6. Release Branch Setup
echo "📝 Step 6: Branch Protection Rules"
echo "Recommended settings:"
echo "  - Require pull request reviews: 1"
echo "  - Require status checks to pass"
echo "  - Include administrators"
echo ""

EOF

chmod +x setup-secrets.sh

echo "✅ setup-secrets.sh تیار ہے"
echo ""
echo "Run: ./setup-secrets.sh"
