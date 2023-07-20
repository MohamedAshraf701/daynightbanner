/*
MIT License

Copyright (c) 2023 MohmedAshraf

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/

library daynightbanner;

/*
 * The [daynightbanner] library provides a customizable Flutter widget called DayNightBanner,
 * which displays a banner with a Sun and Moon based on the time of day.
 * This library also includes utility classes for colors, background colors, mapping ranges, and image paths.
 */

// Import Dart core library for mathematical operations.
import 'dart:math';

// Import the Flutter material library.
import 'package:flutter/material.dart';

// Import the Banner class, which is the main widget in the daynightbanner package.
part 'src/banner.dart';
// Import the SunMoon class, used to display the Sun or Moon in the DayNightBanner.
part 'src/sun_moon.dart';
// Import the PackageColor class, which provides a collection of static color constants for the gradients.
part 'src/utils/colors.dart';
// Import the DayNightBackgroundColor class, which provides gradients for day and night backgrounds.
part 'src/utils/day_night_background_color.dart';
// Import the MathUtils class, which provides utility methods for mathematical operations.
part 'src/utils/map_ranger.dart';
// Import the ImagesPath class, which provides static paths to image assets used in the DayNightBanner.
part 'src/utils/paths.dart';
