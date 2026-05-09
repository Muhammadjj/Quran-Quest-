# 🔐 Android Signing Configuration Guide
# Quran Quest - Release Signing Setup

## 1️⃣ Generate Keystore (پہلی بار محفوظ کریں!)

```bash
keytool -genkey -v -keystore android/app/upload-keystore.jks \
    -keyalg RSA \
    -keysize 4096 \
    -validity 10000 \
    -alias upload
```

## 2️⃣ Configure Signing in Flutter

Create: `android/key.properties`

```properties
storePassword=YOUR_STORE_PASSWORD
keyPassword=YOUR_KEY_PASSWORD
keyAlias=upload
storeFile=upload-keystore.jks
```

## 3️⃣ Update build.gradle

In `android/app/build.gradle`, find `android { ... }` and add:

```gradle
signingConfigs {
    release {
        keyAlias keystoreProperties['keyAlias']
        keyPassword keystoreProperties['keyPassword']
        storeFile file(keystoreProperties['storeFile'])
        storePassword keystoreProperties['storePassword']
    }
}

buildTypes {
    release {
        signingConfig signingConfigs.release
    }
}
```

## 4️⃣ GitHub Secrets Setup

1. Go to: https://github.com/Muhammadjj/Quran-Quest-/settings/secrets/actions
2. Add these secrets:

- **KEYSTORE_FILE**: Base64 encoded keystore
  ```bash
  base64 -w 0 android/app/upload-keystore.jks
  ```
  
- **KEYSTORE_PASSWORD**: Your keystore password

- **KEY_ALIAS**: upload

- **KEY_PASSWORD**: Your key password

## ⚠️ IMPORTANT - محفوظ رکھیں!

```
❌ NEVER commit upload-keystore.jks to GitHub
❌ NEVER share key.properties
✅ Add to .gitignore:

android/key.properties
android/app/upload-keystore.jks
*.jks
*.keystore
```

## 🔍 Verify Signing

```bash
jarsigner -verify -verbose build/app/outputs/flutter-apk/app-release.apk
```

## 📱 Google Play Upload

If publishing to Google Play:
- APK must be signed
- Follow Google Play Console guidelines
- Minimum API level: 24 (Android 7.0)
