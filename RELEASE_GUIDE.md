# 🚀 Quran Quest - Release Guide

## مختصر میں (Quick Start)

### ✅ Manual Release (آسان طریقہ)

```bash
# 1. APK بنائیں
flutter build apk --release

# 2. GitHub پر جائیں
# https://github.com/Muhammadjj/Quran-Quest-/releases

# 3. "Create a new release" کریں
# Tag: v1.0.0
# Title: Quran Quest v1.0.0
# Upload: build/app/outputs/flutter-apk/app-release.apk
```

### 🤖 Automated Release (Best Practice)

```bash
# 1. Tag بنائیں
git tag v1.0.0
git push origin v1.0.0

# GitHub Actions خود APK build اور release کرے گی!
```

---

## 📋 Complete Release Checklist

### Before Release:
- [ ] Version update کریں `pubspec.yaml`
- [ ] CHANGELOG.md update کریں
- [ ] Testing complete ہو
- [ ] `git commit` اور `git push` کریں

### During Release:
- [ ] Tag بنائیں: `git tag v1.0.0`
- [ ] Tag push کریں: `git push origin v1.0.0`
- [ ] GitHub Actions workflow چلے (check status)
- [ ] Release notes add کریں

### After Release:
- [ ] Verify APK downloadable ہے
- [ ] Test APK installation
- [ ] Announce release (اگر ضرورت ہو)

---

## 🔐 Security Setup (IMPORTANT!)

### Step 1: Android Keystore بنائیں

```bash
keytool -genkey -v -keystore android/app/upload-keystore.jks \
    -keyalg RSA \
    -keysize 4096 \
    -validity 10000 \
    -alias upload
```

**Save کریں: upload-keystore.jks password!**

### Step 2: .gitignore Update

```bash
echo "*.jks" >> .gitignore
echo "android/key.properties" >> .gitignore
git add .gitignore
git commit -m "Add security"
```

### Step 3: GitHub Secrets Setup

Go to: `https://github.com/Muhammadjj/Quran-Quest-/settings/secrets/actions`

Add these 4 secrets:

```
KEYSTORE_FILE = (base64 encoded jks)
KEYSTORE_PASSWORD = your_password
KEY_ALIAS = upload
KEY_PASSWORD = your_key_password
```

**To encode jks to base64:**
```bash
base64 -w 0 android/app/upload-keystore.jks | pbcopy
# Paste in KEYSTORE_FILE secret
```

---

## 📱 Release Files Location

```
build/app/outputs/flutter-apk/
├── app-release.apk          ← یہ GitHub پر upload کریں
└── app-release-unsigned.apk
```

---

## 🔍 Verification

### APK Details Check:
```bash
file build/app/outputs/flutter-apk/app-release.apk
ls -lh build/app/outputs/flutter-apk/app-release.apk
```

### Signature Verify:
```bash
jarsigner -verify -verbose build/app/outputs/flutter-apk/app-release.apk
```

---

## 🐛 Troubleshooting

### Problem: "APK not found"
```bash
flutter clean
flutter pub get
flutter build apk --release -v
```

### Problem: "Build fails"
- Check Flutter version: `flutter --version`
- Check Gradle: `cd android && ./gradlew -v`
- Check Android SDK: `flutter doctor`

### Problem: "GitHub Actions fails"
- Check workflow file: `.github/workflows/release-apk.yml`
- Check secrets: Settings → Secrets
- Check logs: Actions tab

---

## 📊 File Sizes (Reference)

```
APK Release: ~50-150 MB (typical)
```

---

## 🌐 Publish to Stores

### Google Play Store:
1. APK signed ہونا ضروری ہے ✅
2. Google Play Console میں upload کریں
3. Min API: 24 (Android 7.0)

### Alternative Stores:
- Amazon Appstore
- APKMirror (manual)
- F-Droid (Open Source)

---

## 📞 Quick Reference

- Workflow file: `.github/workflows/release-apk.yml`
- Release script: `./release.sh`
- Signing guide: `SIGNING.md`
- APK output: `build/app/outputs/flutter-apk/app-release.apk`

---

**Happy Releasing! 🎉**
