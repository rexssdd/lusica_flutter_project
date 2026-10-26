# Lusica_Activity_1 – Strawberry Pavlova

A single-screen Flutter app that displays a recipe card for **Strawberry Pavlova**, built as a class activity on basic Flutter layout widgets.

## Features

- App bar with the activity title
- Full-width recipe image
- Title and short description of the dish
- Star rating row with review count
- Info tabs for prep time, cook time, and servings

## Preview

![alt text](<Screenshot 2026-10-26 235523.png>)

## Widgets Used

| Widget | Purpose |
|---|---|
| `Scaffold` / `AppBar` | Page structure and top bar |
| `Column` / `Row` | Vertical and horizontal layout |
| `Image.asset` | Displays the Pavlova photo |
| `Padding` / `SizedBox` | Spacing between elements |
| `Text` / `TextStyle` | Title, description, and labels |
| `Icon` | Stars and the PREP / COOK / FEEDS icons |
| `Expanded` / `Center` | Fitting the image and centering the rating |

## Project Structure

```
lusica_flutter_project/
├── assets/
│   └── Pavlova.png
├── lib/
│   ├── main.dart
│   └── pavlova.dart      # Pavlova screen widget
└── pubspec.yaml
```

## Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- An editor such as VS Code or Android Studio
- An emulator or a physical device

### Installation

```bash
git clone <your-repo-url>
cd lusica_flutter_project
flutter pub get
```

### Run

```bash
flutter run
```

## Assets Setup

The image must be declared in `pubspec.yaml`, and the file name must match exactly (it is case-sensitive on some platforms):

```yaml
flutter:
  assets:
    - assets/Pavlova.png
```

Then use the screen in `main.dart`:

```dart
import 'package:flutter/material.dart';
import 'pavlova.dart';

void main() => runApp(const MaterialApp(home: Pavlova()));
```

## Troubleshooting

| Problem | Fix |
|---|---|
| `RenderFlex overflowed by N pixels` | Wrap the image in `Expanded`, or give it a fixed `height` |
| Image not showing | Check the asset path in `pubspec.yaml`, then run `flutter pub get` and restart the app |
| Changes not appearing | Do a full restart instead of a hot reload after editing assets |

## Author

**Rexcel Jay A. Lusica**