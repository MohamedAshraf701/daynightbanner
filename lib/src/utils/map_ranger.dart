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
 * The [MathUtils] class provides utility methods for mathematical operations.
 * It includes a method to map a value from one range to another.
 */
class MathUtils {
  /// Maps a value from one range to another.
  ///
  /// This method takes a value and maps it from an input range (iMin to iMax)
  /// to an output range (oMin to oMax).
  ///
  /// Example:
  /// ```dart
  /// double result = MathUtils.mapRange(50, 0, 100, 0, 1);
  /// print(result); // Output: 0.5
  /// ```
  ///
  /// If `oMin` and `oMax` are not provided, the method will map the value to the default
  /// output range of 0 to 1.
  ///
  /// Example:
  /// ```dart
  /// double result = MathUtils.mapRange(50, 0, 100);
  /// print(result); // Output: 0.5
  /// ```
  ///
  /// [value]: The value to be mapped to the new range.
  /// [iMin]: The lower bound of the input range.
  /// [iMax]: The upper bound of the input range.
  /// [oMin]: The lower bound of the output range (default is 0).
  /// [oMax]: The upper bound of the output range (default is 1).
  ///
  /// Returns the mapped value in the output range.
  static double mapRange(
    double value,
    double iMin,
    double iMax, [
    double oMin = 0,
    double oMax = 1,
  ]) {
    // Calculate the mapped value using the formula ((value - iMin) * (oMax - oMin)) / (iMax - iMin) + oMin
    return ((value - iMin) * (oMax - oMin)) / (iMax - iMin) + oMin;
  }
}
