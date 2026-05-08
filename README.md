# Quran Quest

Quran Quest is a modern Flutter application for interactive Quran learning and daily spiritual engagement.
It combines a polished UI with Quran browsing, flash cards, Qibla direction, audio playback, localization,
and theme support, all built with Clean Architecture and BLoC state management.

## Overview

- Clean Architecture with BLoC/Cubit for predictable state handling
- Multi-language support with English and Urdu
- Dynamic light and dark themes with saved preferences
- Location-based features for Qibla direction and permission handling
- Quran content browsing with Surah, Parah, detail, and favorite screens
- Interactive flash cards and random Ayah content on the dashboard

## Key Features

- Beautiful onboarding flow with Lottie animations and page indicators
- Location permission flow for Qibla direction features
- Real-time Qibla compass using device sensors and location data
- Quran browsing by Surah and Parah with detailed reading screens
- Random Ayah and Allah names cards on the dashboard
- Flash cards with language selection for learning and revision
- Audio playback support for Quran recitation
- Zoomable content view with PhotoView
- Offline-friendly local storage with SharedPreferences and Hive CE
- Responsive UI that adapts to different screen sizes
- Share support for content and learning cards

## Screens

1. Onboarding screen
2. Location permission and service handling screens
3. Main dashboard screen
4. Quran browsing screens
5. Surah and Parah detail screens
6. Flash cards screen
7. Qibla direction screen
8. Settings screen

## Tech Stack

- State management: flutter_bloc, bloc, equatable
- Networking: dio, pretty_dio_logger
- Dependency injection: get_it
- Local storage: hive_ce, hive_ce_flutter, shared_preferences
- UI and animations: flutter_screenutil, flutter_card_swiper, smooth_page_indicator, lottie, flutter_svg, iconsax, auto_size_text
- Audio and media: just_audio, photo_view, share_plus
- Location and sensors: geolocator, geocoding, flutter_compass, permission_handler
- Functional programming: fpdart
- Code generation: freezed, json_serializable, build_runner, hive_ce_generator, easy_localization_generator
- Code quality: very_good_analysis, flutter_lints, logger

## Architecture

The project follows a layered structure:

- Presentation layer for UI, pages, widgets, BLoC, and Cubits
- Domain layer for entities, use cases, and repository contracts
- Data layer for remote data sources, repository implementations, and models
- Core layer for shared helpers, themes, navigation, utilities, and dependency management

## APIs Used

- QuranHub API: https://api.quranhub.com/v1
- AlQuran Cloud API: https://api.alquran.cloud/v1

## Project Structure

- lib/app: app-level blocs and permission handling
- lib/core: shared helpers, themes, navigation, utilities, and managers
- lib/feature: all feature modules and screens
- assets/translations: localization files
- assets/images, assets/lottie, assets/svg_images, assets/fonts: app assets

## Getting Started

### Prerequisites

- Flutter SDK with Dart 3.5 or newer
- Android Studio, VS Code, or another Flutter-compatible IDE

### Install

```bash
git clone https://github.com/Muhammadjj/Quran-Quest-.git
cd quran_quest
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
flutter run
```

## Localization

- English: assets/translations/en.json
- Urdu: assets/translations/ur.json

## Screenshots

<img src="https://github.com/user-attachments/assets/0ecc16bf-cf15-4ff6-bc24-b6b87bcc5e26" width="32%">
<img src="https://github.com/user-attachments/assets/0a4fa1b9-8608-4477-a4ce-3e68e8382442" width="32%">
<img src="https://github.com/user-attachments/assets/a4a692db-c003-4a90-8761-77c83ec56999" width="32%">
<img src="https://github.com/user-attachments/assets/7b27638f-9aa0-4c82-ac5c-0ea36235c8e9" width="32%">

## Contributing

Contributions, issues, and feature suggestions are welcome.

## Security and Usage

- This repository is public for review and showcase purposes.
- The source code is protected by the project license and may not be reused,
	copied, or redistributed without written permission.
- Do not commit API keys, secrets, or private credentials to the repository.
- If you need stronger protection, keep the repository private and only publish
	releases or sanitized source snapshots.

## License

This project is licensed under the Quran Quest Proprietary License.
