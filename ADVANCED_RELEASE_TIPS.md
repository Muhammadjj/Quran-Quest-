# ⚡ Hidden Tips & Tricks - GitHub Release Mastery

## 🔥 Advanced Pro Tips

### 1. Automated Versioning (Semantic Versioning)
```bash
# Install: npm install -g @semantic-release/cli

# یہ automatically version بڑھاتا ہے
semantic-release --help
```

### 2. Generate Changelog Automatically
Create: `.github/workflows/changelog.yml`

```yaml
name: Generate Changelog
on:
  release:
    types: [published]

jobs:
  changelog:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Update CHANGELOG
        run: |
          echo "# Release: ${{ github.event.release.tag_name }}" >> CHANGELOG.md
          echo "${{ github.event.release.body }}" >> CHANGELOG.md
          git add CHANGELOG.md
          git commit -m "Update changelog"
          git push
```

### 3. Pre-Release Notifications (Discord/Slack)
```bash
# Add to workflow for Slack notification:
- name: Notify Release
  uses: slackapi/slack-github-action@v1
  with:
    webhook-url: ${{ secrets.SLACK_WEBHOOK }}
    payload: |
      {
        "text": "🚀 New Release: ${{ github.event.release.tag_name }}",
        "blocks": [
          {
            "type": "section",
            "text": {
              "type": "mrkdwn",
              "text": "*Quran Quest Released*\n${{ github.event.release.body }}"
            }
          }
        ]
      }
```

---

## 🎭 Hidden GitHub Features

### 1. Automatic Release Notes (GitHub does it!)
```yaml
- uses: softprops/action-gh-release@v1
  with:
    generate_release_notes: true  # ← یہ لگائیں!
```

### 2. Pre-Release vs Full Release
```bash
# Pre-release بنائیں (Beta):
gh release create v1.0.0-beta app.apk --title "Beta" --prerelease

# Full release:
gh release create v1.0.0 app.apk --title "Stable"
```

### 3. Draft Release (Publish جب یقین ہو)
```bash
gh release create v1.0.0-draft app.apk --draft
# Later: gh release edit v1.0.0-draft --draft=false
```

---

## 🔐 Secret Management Pro Tips

### 1. Check Exposed Secrets (GitHub CLI)
```bash
gh secret list
```

### 2. Rotate Secrets
```bash
# Delete old secret:
gh secret delete KEYSTORE_FILE

# Add new:
gh secret set KEYSTORE_FILE < keystore.b64
```

### 3. Use Environment Variables Safely
```yaml
env:
  SAFE_VAR: value  # ❌ Don't use secrets here!

jobs:
  build:
    runs-on: ubuntu-latest
    env:
      SAFE_VAR: ${{ secrets.API_KEY }}  # ✅ Use like this
```

---

## 📊 Monitoring & Analytics

### 1. Track Downloads (Custom Script)
```bash
# In release notes:
printf "[📥 Downloads](https://github.com/Muhammadjj/Quran-Quest-/releases/download/v1.0.0/app-release.apk)"
```

### 2. Release Badges in README
```markdown
[![Latest Release](https://img.shields.io/github/v/release/Muhammadjj/Quran-Quest-?label=Latest&sort=semver&style=flat-square&logo=github&logoColor=white&color=00AA00)](https://github.com/Muhammadjj/Quran-Quest-/releases)
```

### 3. Track Release Stats
```bash
# Get download count:
curl -s https://api.github.com/repos/Muhammadjj/Quran-Quest-/releases | jq '.[].assets[].download_count'
```

---

## ⚙️ Build Optimization Tips

### 1. APK Size Optimization
```bash
# Remove unused code:
flutter build apk --release --split-per-abi

# Results in 3 smaller APKs for different architectures
```

### 2. Multi-ABI Release
```bash
# In workflow:
flutter build apk --release --split-per-abi

# Upload all 3:
files: |
  build/app/outputs/flutter-apk/app-arm64-v8a-release.apk
  build/app/outputs/flutter-apk/app-armeabi-v7a-release.apk
  build/app/outputs/flutter-apk/app-x86_64-release.apk
```

### 3. Build Caching (Speed up CI/CD)
```yaml
- uses: actions/cache@v3
  with:
    path: ~/.gradle/caches
    key: ${{ runner.os }}-gradle-${{ hashFiles('android/build.gradle') }}
```

---

## 🚨 Security Hardening

### 1. Sign Commits (Extra Security)
```bash
# Setup GPG signing:
git config --global user.signingkey YOUR_GPG_KEY
git tag -s v1.0.0 -m "Signed release"
git push origin v1.0.0

# In workflow:
- name: Sign Release
  run: |
    gpg --import-ownertrust /path/to/trust
    git tag -s v1.0.0 -m "Release"
```

### 2. Verify Signature After Download
```bash
gpg --verify app-release.apk.sig app-release.apk
```

### 3. SCA (Software Composition Analysis)
```yaml
- name: Dependency Check
  uses: dependency-check/Dependency-Check_Action@main
  with:
    path: '.'
    format: 'JSON'
```

---

## 📈 Release Analytics

### 1. Add Telemetry
```dart
// في التطبيق:
void trackReleaseNumber() {
  // Get installed version
  PackageInfo.fromPlatform().then((PackageInfo packageInfo) {
    print('Release: ${packageInfo.version}');
    // Send to analytics server
  });
}
```

### 2. Auto-Update Check
```dart
// Check for new release:
final uri = Uri.parse(
  'https://api.github.com/repos/Muhammadjj/Quran-Quest-/releases/latest'
);
final response = await http.get(uri);
// Compare version and notify user
```

---

## 🎁 Bonus: Complete Release Command

```bash
#!/bin/bash
set -e

VERSION="${1:-1.0.0}"
TAG="v$VERSION"

# Build
flutter clean && flutter pub get
flutter build apk --release

# Git
git add -A
git commit -m "Release $VERSION"
git tag -s "$TAG" -m "Release $VERSION"
git push origin main "$TAG"

# GitHub Release
gh release create "$TAG" \
  build/app/outputs/flutter-apk/app-release.apk \
  --title "Quran Quest $VERSION" \
  --generate-release-notes

echo "✅ Released: $TAG"
```

---

## 📝 Useful Links

- Release API: https://docs.github.com/en/rest/releases
- Actions: https://github.com/Muhammadjj/Quran-Quest-/actions
- Secrets: https://github.com/Muhammadjj/Quran-Quest-/settings/secrets/actions
- Releases: https://github.com/Muhammadjj/Quran-Quest-/releases

---

**یہ ہیں Pro Tips! 🎯**
