# DayNightBanner

[![Pub Version](https://img.shields.io/pub/v/gradient_icon.svg)](https://pub.dev/packages/gradient_icon)
![Flutter Platform](https://img.shields.io/badge/platform-flutter-yellow)

[![pub package](https://img.shields.io/pub/v/daynightbanner.svg)](https://pub.dev/packages/daynightbanner)

DayNightBanner is a Flutter package that provides a customizable banner widget displaying the Sun and Moon based on the time of day. It's a visually appealing way to represent the current time and create a day-to-night transition effect.

## Screenshot

Here are the screenshots of the DayNightBanner widget in action:

<img src="https://github.com/MohamedAshraf701/daynightbanner/assets/92545354/71bdbb66-91ee-4589-9a4d-7eeb0c880bba" width="300" alt="DayNightBanner Screenshot 2">
<img src="https://github.com/MohamedAshraf701/daynightbanner/assets/92545354/56b8e1ca-d97c-44ff-87ce-9f5723afc6b6" width="300" alt="DayNightBanner Screenshot 1">

## Features

- Display a visually appealing banner with the Sun and Moon based on the time of day.
- Automatically updates based on the current time of day.
- Highly customizable with various properties.
- Supports both light and dark themes.

## Installation

Add `daynightbanner` as a dependency in your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  daynightbanner: <latest_version>
```

## Usage

Import the package in your Dart file:

```dart
import 'package:daynightbanner/daynightbanner.dart';
```

To use the `DayNightBanner` widget, simply add it to your widget tree:

```dart
DayNightBanner(
  hour: DateTime.now().hour,
  // Add other customization properties here
)
```

## Customization

The `DayNightBanner` widget offers various properties for customization:

- `sunImage` and `moonImage`: Set the paths to custom images for the Sun and Moon.
- `backgroundImage`: Set a custom background image for the banner.
- `bannerHeight`: Adjust the height of the banner.
- `backgroundImageHeight`: Set the height of the background image.
- `decoration`: Apply a custom decoration to the banner container.
- `sunSize` and `moonSize`: Define the exact size of the Sun and Moon images.
- `child`: Add child widgets to the banner, such as text or icons.

## Documentation

Detailed documentation for the package can be found in the [API reference](https://pub.dev/documentation/daynightbanner/latest/daynightbanner/daynightbanner-library.html).

## Changelog

See the [CHANGELOG](https://github.com/MohamedAshraf701/daynightbanner/blob/main/CHANGELOG.md) for a history of changes in the package.

## License

This project is licensed under the MIT License - see the [LICENSE](https://zaid.digital) file for details.

## Example Code

Here is the code for the `main.dart` file in the example project:

```dart
import 'package:daynightbanner/daynightbanner.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('DayNightBanner Example')),
        body: DayNightBanner(
        hour: DateTime.now().hour,
  // Add other customization properties here
)
,
      ),
    );
  }
}
```

The `MyApp` widget is a stateful widget that displays the DayNightBanner widget in the `Scaffold` body. The banner will automatically adjust its appearance based on the current time of day.

For more examples and customization options, check out the [example](https://github.com/MohamedAshraf701/daynightbanner/tree/main/example) folder.

## Contributing

Contributions to the `daynightbanner` package and the example project are welcome! Feel free to open issues or submit pull requests.

## Credits

The DayNightBanner widget and example project are developed and maintained by [Mohamed Ashraf](https://github.com/MohamedAshraf701).

---

Feel free to explore the example project and the DayNightBanner widget. If you have any questions or feedback, don't hesitate to reach out. Happy coding! 🌞🌙

---
