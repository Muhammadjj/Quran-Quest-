#!/bin/bash

# 🎯 Quick Release Checklist
# Quran Quest - Pre-Release Validation

echo "╔═══════════════════════════════════════════╗"
echo "║  📋 PRE-RELEASE CHECKLIST v1.0           ║"
echo "╚═══════════════════════════════════════════╝"
echo ""

CHECKS_PASS=0
CHECKS_WARN=0
CHECKS_FAIL=0

# Color functions
pass() {
    echo -e "  ✅ $1"
    ((CHECKS_PASS++))
}

warn() {
    echo -e "  ⚠️  $1"
    ((CHECKS_WARN++))
}

fail() {
    echo -e "  ❌ $1"
    ((CHECKS_FAIL++))
}

echo "📋 BASELINE CHECKS"
echo "─────────────────────────────────────────"

# 1. Git status
if [ -z "$(git status --porcelain)" ]; then
    pass "Git working directory clean"
else
    fail "Uncommitted changes exist"
    git status --short
fi

# 2. Pubspec version
VERSION=$(grep "^version:" pubspec.yaml | awk '{print $2}')
pass "Current version: $VERSION"

# 3. Flutter version
FLUTTER_VER=$(flutter --version | head -1)
pass "Flutter: $FLUTTER_VER"

# 4. Android SDK
if [ -n "$ANDROID_HOME" ]; then
    pass "Android SDK detected: $ANDROID_HOME"
else
    fail "ANDROID_HOME not set!"
fi

echo ""
echo "🔍 FILE CHECKS"
echo "─────────────────────────────────────────"

# 5. Key files exist
[ -f "pubspec.yaml" ] && pass "pubspec.yaml found" || fail "pubspec.yaml missing"
[ -f "README.md" ] && pass "README.md found" || fail "README.md missing"
[ -f "CHANGELOG.md" ] && pass "CHANGELOG.md found" || warn "CHANGELOG.md missing"
[ -f "android/app/build.gradle" ] && pass "build.gradle found" || fail "build.gradle missing"

echo ""
echo "🔐 SECURITY CHECKS"
echo "─────────────────────────────────────────"

# 6. .gitignore
if grep -q "*.jks\|upload-keystore" .gitignore 2>/dev/null; then
    pass "Keystore in .gitignore"
else
    warn "Keystore NOT in .gitignore - ADD IT!"
fi

if grep -q "key.properties" .gitignore 2>/dev/null; then
    pass "key.properties in .gitignore"
else
    warn "key.properties NOT in .gitignore"
fi

# 7. No exposed secrets
if git list-files | grep -E "\.jks$|\.keystore$|key\.properties$" | grep -v "\.gitignore"; then
    fail "EXPOSED SECRETS FOUND IN GIT!"
else
    pass "No secrets in git history"
fi

echo ""
echo "🏗️  BUILD CHECKS"
echo "─────────────────────────────────────────"

# 8. Dependencies
if flutter pub get &>/dev/null; then
    pass "Dependencies resolvable"
else
    fail "Dependency resolution failed"
fi

# 9. Code analysis
ANALYSIS=$(flutter analyze --no-preamble 2>&1 | grep -v "No issues found" | head -5)
if [ -z "$ANALYSIS" ]; then
    pass "Code analysis: No issues"
else
    warn "Code analysis: Some issues found"
fi

echo ""
echo "📦 RELEASE PREPARATION"
echo "─────────────────────────────────────────"

# 10. Workflow file
if [ -f ".github/workflows/release-apk.yml" ]; then
    pass "Release workflow configured"
else
    warn "Release workflow missing"
fi

# 11. Check GitHub secrets (needs gh CLI)
if command -v gh &> /dev/null; then
    SECRETS=$(gh secret list 2>&1 | grep -E "KEYSTORE|KEY_ALIAS|KEY_PASSWORD")
    if [ -z "$SECRETS" ]; then
        warn "GitHub Secrets not configured - Need to setup for automation"
    else
        pass "GitHub Secrets configured"
    fi
fi

echo ""
echo "📊 SUMMARY"
echo "─────────────────────────────────────────"

TOTAL=$((CHECKS_PASS + CHECKS_WARN + CHECKS_FAIL))
echo ""
echo "Results:"
echo "  ✅ Pass:    $CHECKS_PASS"
echo "  ⚠️  Warn:    $CHECKS_WARN"
echo "  ❌ Fail:    $CHECKS_FAIL"
echo "  ─────────"
echo "  Total:      $TOTAL"
echo ""

if [ $CHECKS_FAIL -gt 0 ]; then
    echo "❌ FAILED CHECKS FOUND - Please fix before release!"
    exit 1
elif [ $CHECKS_WARN -gt 0 ]; then
    echo "⚠️  WARNINGS FOUND - Review before release"
    exit 0
else
    echo "✅ ALL CHECKS PASSED! Ready for release!"
    echo ""
    echo "Next steps:"
    echo "  1. flutter clean"
    echo "  2. flutter build apk --release"
    echo "  3. git tag v$VERSION"
    echo "  4. git push origin v$VERSION"
    exit 0
fi
