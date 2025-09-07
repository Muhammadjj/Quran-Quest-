# 📖 Quran Quest

Quran Quest is a modern Flutter application designed to provide an engaging and interactive Islamic learning experience.  
It integrates beautifully designed UI, multiple features like flash cards, random Surah data, audio playback, and Qibla direction, while following **Clean Architecture + BLoC state management**.

---

## ✨ Features

- 📱 **Beautiful Onboarding Flow** with animations (Lottie + SmoothPageIndicator).
- 🌍 **Location Access** for Qibla direction and nearby masjid features (using `geolocator` & `flutter_compass`).
- 🕌 **Quran APIs Integration**  
  - [QuranHub API](https://api.quranhub.com/v1)  
  - [AlQuran Cloud API](https://api.alquran.cloud/v1)  
- 🧾 **Flash Cards** for interactive Quran learning.
- 🎨 **Dynamic Theming** (Light/Dark mode).
- 🌐 **Localization** support (multi-language via `easy_localization`).
- 🎶 **Audio Playback** using `just_audio`.
- 📷 **PhotoView** for zoomable Quran images.
- 💾 **Offline Support** (Hive + Shared Preferences).
- 🔄 **Functional Programming** using `fpdart`.
- 📊 **Responsive Design** with `flutter_screenutil`.
- 🤝 **Open Source** – Contributions are welcome!

---

## 🛠️ Tech Stack & Packages

- **State Management:** `flutter_bloc`, `equatable`
- **Networking:** `dio`, `pretty_dio_logger`
- **Local Storage:** `hive`, `hive_flutter`, `shared_preferences`
- **Service Locator:** `get_it`
- **Functional Programming:** `fpdart`
- **UI & Utils:**  
  - `flutter_card_swiper` (Flash Cards)  
  - `flutter_staggered_grid_view`  
  - `flutter_svg`, `iconsax`  
  - `auto_size_text`  
  - `smooth_page_indicator`, `lottie`  
- **Audio & Media:** `just_audio`, `photo_view`, `share_plus`
- **Device & Location:** `geolocator`, `geocoding`, `flutter_compass`, `permission_handler`
- **Code Quality:** `very_good_analysis`, `logger`
- **Code Generation:** `freezed`, `json_serializable`, `build_runner`, `hive_generator`

---

## 📲 Screens & Flow

1. **Onboarding Screen** → Introduction to app features.  
2. **Location Permission Screen** → Asks for location to provide Qibla & nearby features.  
3. **Home Screen** → Main dashboard with Quran features, flash cards, Surah data.  
4. **Additional Features**:  
   - Random Surah fetch  
   - Themes (Light/Dark/System)  
   - Islamic resources integration  

---

## 🚀 Getting Started

### Prerequisites
- Flutter SDK ^3.6.1
- Dart ^3.6.0
- Android Studio / VS Code

### Installation
```bash
# Clone repository
git clone https://github.com/your-username/quran_quest.git

# Go into the project directory
cd quran_quest

# Get dependencies
flutter pub get

# Run app
flutter run
