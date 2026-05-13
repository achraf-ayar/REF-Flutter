# tp1_dwm_flutter_app

Flutter TP1 - multi-page app with navigation drawer, counter, and custom-painted graphics (static + animated).

## Features

- **Home** (`/`) - landing page with "Hello World".
- **Counter** (`/counter`) - increment counter with FAB.
- **Graphics** (`/graphics`) - `CustomPainter` drawing concentric shapes, radius slider.
- **Graphics2** (`/graphics2`) - animated version using `AnimationController`, controls for radius + rotation angle, play/pause.
- **Settings** (`/settings`) - placeholder page.
- **Drawer** - global navigation between pages, header with avatar (`images/profile.jpeg`).

## Structure

```
lib/
├── main.dart                  # MaterialApp, routes, theme (teal)
├── pages/
│   ├── home.page.dart
│   ├── counter.page.dart
│   ├── graphics.page.dart
│   ├── animated.graphics.page.dart
│   └── settings.page.dart
└── widgets/
    ├── drawer.widget.dart
    ├── drawer.header.widget.dart
    ├── drawer.counter.widget.dart
    ├── drawer.graphics.widget.dart
    ├── drawer.animatedgraphics.widget.dart
    ├── drawer.settings.widget.dart
    └── shape.painter.widget.dart   # CustomPainter implementations
```

## Routes

| Path         | Page                  |
|--------------|-----------------------|
| `/`          | HomePage              |
| `/counter`   | CounterPage           |
| `/graphics`  | GraphicsPage          |
| `/graphics2` | AnimatedGraphicsPage  |
| `/settings`  | SettingsPage          |

## Run

```bash
flutter pub get
flutter run
```

## Assets

- `images/profile.jpeg` - drawer header avatar.
