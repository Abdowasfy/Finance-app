# 💰 Finance App

A modern **finance management mobile application** built with **Flutter**.
The app provides a clean and user-friendly experience for managing financial cards, viewing statistics, and handling user account information.

## ✨ Features

* 🔐 Login and Register screens
* 🔑 Forgot password flow
* 🔢 OTP verification
* 🔄 Reset password
* 💳 View available cards
* 🗂️ View all cards
* 💰 Display card balance
* 🔎 View card details
* ➕ Add new card
* 📊 Income and expense overview
* 📅 Monthly financial statistics
* 📈 Interactive charts
* 👤 Profile screen with personal information
* 📱 Responsive UI using ScreenUtil
* 🧩 Separation between UI and application state

## 🛠️ Tech Stack

* **Flutter**
* **Dart**
* **Provider** — State Management
* **Flutter ScreenUtil** — Responsive UI
* **FL Chart** — Financial charts
* **Gap** — UI spacing
* **Flutter SVG** — SVG assets
* **Google Fonts** — Custom fonts

## 🏗️ Architecture

The project follows a feature-based structure with separation between UI, state management, and core widgets.

```text
lib/
│
├── core/
│   ├── routing/
│   ├── styling/
│   └── widgets/
│
├── features/
│   ├── add_card/
│   ├── all_card/
│   ├── auth/
│   │   ├── provider/
│   │   ├── screens/
│   │   └── widgets/
│   ├── home_page/
│   │   └── widget/
│   ├── main_screen/
│   ├── on_boarding_screen/
│   ├── profile/
│   └── statistics/
│       └── provider/
│
└── main.dart
```

## 📱 Screens

* 🚀 Splash / Onboarding
* 🔐 Login
* 📝 Register
* 🔑 Forgot Password
* 🔢 OTP Verification
* 🔄 Reset Password
* 🏠 Home
* 💳 All Cards
* ➕ Add Card
* 📊 Statistics
* 👤 Profile

## 🎯 Project Goals

This project was built to practice and improve Flutter development skills, including:

* Building responsive user interfaces
* Managing application state using Provider
* Creating reusable and maintainable widgets
* Working with charts and financial data
* Implementing authentication flows
* Structuring Flutter apps using a feature-based architecture

## 📦 Installation

Clone the repository:

```bash
git clone https://github.com/Abdowasfy/finance_app.git
```

Navigate to the project:

```bash
cd finance_app
```

Get dependencies:

```bash
flutter pub get
```

Run the application:

```bash
flutter run
```

```text
screenshots/
├── home.png
├── all_cards.png
├── add_card.png
├── statistics.png
└── profile.png
```

## 🚀 Future Improvements

* 🌐 Connect the app to a backend API
* 💳 Real card and payment integration
* ☁️ Persistent data storage
* 🔔 Notifications
* 🌙 Dark mode
* 📄 Export statistics as PDF
* 🔒 Biometric authentication

## 👨‍💻 Author

**Abdelrahman Mohamed Wasfy**

Flutter Developer

GitHub: **Abdowasfy**

---

⭐ If you like this project, consider giving it a star!