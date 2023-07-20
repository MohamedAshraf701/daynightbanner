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
part of daynightbanner;

/*
 * The [GradientManager] class is responsible for providing different linear gradients based on the current hour.
 * It takes the [hour] as input and returns the corresponding [LinearGradient].
 */
class GradientManager {
  /// The current hour, used to determine the gradient based on the time of day.
  final int hour;

  /// Initialize the [GradientManager] with the current [hour].
  GradientManager(this.hour);

  /// Returns the [LinearGradient] corresponding to the current [hour].
  /// If the [hour] matches any of the predefined times, it returns the specific gradient for that hour.
  /// If none of the predefined times match, a default gradient is returned.
  LinearGradient get gradient {
    if (hour > 7 && hour <= 8) {
      // Gradient for the time between 7 AM and 8 AM.
      return const LinearGradient(
        begin: Alignment(-0.00, -1.00),
        end: Alignment(0, 1.5),
        colors: [PackageColor.first7To8, PackageColor.second7To8, PackageColor.white],
      );
    }
    if (hour >= 9 && hour <= 11) {
      // Gradient for the time between 9 AM and 11 AM.
      return const LinearGradient(
        begin: Alignment(-0.00, -1.00),
        end: Alignment(0, 1.5),
        colors: [PackageColor.first9To11, PackageColor.second9To11, PackageColor.white],
      );
    }
    if (hour >= 12 && hour <= 15) {
      // Gradient for the time between 12 PM and 3 PM.
      return const LinearGradient(
        begin: Alignment(-0.00, -1.00),
        end: Alignment(0, 1.5),
        colors: [PackageColor.first12To15, PackageColor.second12To15, PackageColor.white],
      );
    }
    if (hour == 16) {
      // Gradient for 4 PM.
      return const LinearGradient(
        begin: Alignment(-0.00, -1.00),
        end: Alignment(0, 1.5),
        colors: [PackageColor.first16, PackageColor.second16, PackageColor.white],
      );
    }
    if (hour == 17) {
      // Gradient for 5 PM.
      return const LinearGradient(
        begin: Alignment(0.00, -1.00),
        end: Alignment(0, 1.5),
        colors: [PackageColor.first17, PackageColor.second17],
      );
    }
    if (hour == 18) {
      // Gradient for 6 PM.
      return const LinearGradient(
        begin: Alignment(-0.00, -1.00),
        end: Alignment(0, 1.5),
        colors: [PackageColor.first18, PackageColor.second18, PackageColor.white],
      );
    }
    if (hour >= 19 && hour <= 20) {
      // Gradient for the time between 7 PM and 8 PM.
      return const LinearGradient(
        begin: Alignment(0.00, -1.00),
        end: Alignment(0, 1),
        colors: [
          PackageColor.first19To20,
          PackageColor.second19To20,
        ],
      );
    }
    if (hour > 20) {
      // Gradient for the time after 8 PM.
      return const LinearGradient(
        begin: Alignment(-0.00, -1.00),
        end: Alignment(0, 1.5),
        colors: [PackageColor.first20, PackageColor.white],
      );
    }
    if (hour <= 5) {
      // Gradient for the time before 6 AM.
      return const LinearGradient(
        begin: Alignment(-0.00, -1.00),
        end: Alignment(0, 1.5),
        colors: [PackageColor.first5, PackageColor.white],
      );
    }
    if (hour > 5 && hour <= 7) {
      // Gradient for the time between 5 AM and 7 AM.
      return const LinearGradient(
        begin: Alignment(-0.00, -1.00),
        end: Alignment(0, 1.5),
        colors: [PackageColor.first5To7, PackageColor.second5To7, PackageColor.white],
      );
    }

    // If the above conditions do not match, return a default gradient.
    return const LinearGradient(
      colors: [Colors.grey, PackageColor.white],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );
  }
}
