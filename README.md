# 💰 Finance App

A modern and responsive finance management mobile application built with **Flutter**.

The app provides a clean and user-friendly interface for managing financial cards, viewing statistics, and handling user account information.

## ✨ Features

- 🔐 User Authentication
  - Login
  - Register
  - Forgot Password
  - OTP Verification
  - Reset Password

- 💳 Card Management
  - View available cards
  - Display card balance
  - Card details

- 📊 Statistics
  - Income and expense overview
  - Monthly financial statistics
  - Interactive charts

- 👤 Profile
  - View user information
  - Personal profile details

- 📱 Responsive UI
  - Responsive layouts for different screen sizes
  - Adaptive UI using `flutter_screenutil`

- 🔄 State Management
  - State management using `Provider`
  - Separation between UI and application state

## 🛠️ Technologies & Packages

- **Flutter**
- **Dart**
- **Provider** – State Management
- **Flutter ScreenUtil** – Responsive UI
- **FL Chart** – Financial charts
- **Gap** – UI spacing
- **Flutter SVG** – SVG assets
- **Google Fonts** – Custom fonts

## 📁 Project Structure

```text
lib/
│
├── features/
│   │
│   ├── auth/
│   │   ├── provider/
│   │   ├── widgets/
│   │   └── screens/
│   │
│   ├── home_page/
│   │   └── widget/
│   │
│   ├── statistics/
│   │   ├── provider/
│   │   └── statistics_screen.dart
│   │
│   ├── main_screen/
│   │   └── main_screen.dart
│   │
│   └── on_boarding_screen/
│
├── core/
│   ├── routing/
│   ├── styling/
│   └── ...
│
└── main.dart