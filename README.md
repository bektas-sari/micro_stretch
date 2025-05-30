# MicroStretch

![Flutter](https://img.shields.io/badge/Built%20with-Flutter-02569B?logo=flutter\&logoColor=white)
![License](https://img.shields.io/badge/license-MIT-green)

A lightweight **micro‑stretch** application that keeps your whole body active with quick, desk‑friendly exercises. 
Written entirely in **Dart / Flutter**, it showcases clean architecture, modern UI patterns, and readiness for further expansion (notifications, animations, theming).

---

## ✨ Key Features

| Feature                      | Description                                                       |
| ---------------------------- | ----------------------------------------------------------------- |
| 📋 **Daily Plan**            | Pre‑made morning, midday, afternoon and evening stretch sets.     |
| ❤️ **Favorites**             | Mark any exercise and review them in a dedicated screen.          |
| 🔀 **Motivation Quote**      | Fresh motivational line each time you open the app.               |
| 🌗 **Light & Dark Theme**    | Adapts automatically to the device theme.                         |
| 🗄 **Extensible Data Layer** | Exercises stored in a simple model – ready for API or DB swap‑in. |

---

## 📂 Project Structure (simplified)

```text
lib/
├─ data/
│  └─ exercises.dart        ← Exercise model & dummy list
├─ screens/
│  ├─ home_screen.dart      ← Landing page, motivation & list
│  ├─ daily_plan_screen.dart← Fixed stretch timetable
│  ├─ exercise_detail_screen.dart
│  └─ favorites_screen.dart
└─ main.dart                ← Entry point & theme setup
```

---

## 🚀 Getting Started

### Prerequisites

* Flutter >= 3.10
* Dart >= 3.3
* Android Studio / VS Code with Flutter plugin

### Installation

```bash
git clone https://github.com/bektas-sari/micro_strech.git
cd micro_strech
flutter pub get
```

### Running the App

```bash
# attached device or emulator
flutter run
```

> **Tip:** Use **`flutter devices`** to list emulators or real devices before running.

---

## 🔧 Customisation & Next Steps

| Idea               | How‑to                                                                                                          |
| ------------------ | --------------------------------------------------------------------------------------------------------------- |
| Push Notifications | Add [`flutter_local_notifications`](https://pub.dev/packages/flutter_local_notifications) and a timezone setup. |
| Animated GIF demos | Place assets in `assets/gifs/` and reference in `Exercise` model.                                               |
| Cloud sync         | Swap the in‑memory `allExercises` list with a REST API or Firebase Firestore.                                   |
| Unit Tests         | Add `flutter_test`, create mocks for the data layer.                                                            |

---

## 🤝 Contributing

1. Fork the repo
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

## 📝 License

Distributed under the MIT License. 


---

## 👤 Author

**Bektas Sari**<br>
*EMail:* bektas.sari@gmail.com  <br>
*GitHub:* [bektas-sari](https://github.com/bektas-sari)

