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

/// A Flutter widget that displays a sun or moon icon based on the provided [isSun] flag.
class SunMoon extends StatelessWidget {
  /// Whether currently the Sun is displayed.
  final bool isSun;

  /// Path to the image representing the sun icon.
  final String? sunImagePath;

  /// Path to the image representing the moon icon.
  final String? moonImagePath;

  /// Size of the sun icon. Defaults to null, uses the [imageSize] if not provided.
  final Size? sunSize;

  /// Size of the moon icon. Defaults to null, uses the [imageSize] if not provided.
  final Size? moonSize;

  /// Size of the sun/moon icon. Used when [sunSize] and [moonSize] are null.
  final double imageSize;

  /// Initialize the [SunMoon] widget.
  ///
  /// [isSun]: Whether to display the sun or moon icon.
  /// [sunImagePath]: Path to the image representing the sun icon.
  /// [moonImagePath]: Path to the image representing the moon icon.
  /// [imageSize]: Size of the sun/moon icon. Used when [sunSize] and [moonSize] are null.
  /// [sunSize]: Size of the sun icon. Defaults to null, uses the [imageSize] if not provided.
  /// [moonSize]: Size of the moon icon. Defaults to null, uses the [imageSize] if not provided.
  const SunMoon({
    Key? key,
    required this.isSun,
    required this.sunImagePath,
    required this.moonImagePath,
    required this.imageSize,
    this.sunSize,
    this.moonSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: imageSize,
      child: AnimatedSwitcher(
        switchInCurve: Curves.ease,
        switchOutCurve: Curves.ease,
        duration: const Duration(milliseconds: 250),
        child: isSun
            ? Container(
                key: const ValueKey(1),
                child: sunImagePath == null
                    ? const Image(
                        image: AssetImage(ImagesPath.sunImage, package: 'daynightbanner'),
                      )
                    : Image.asset(
                        sunImagePath!,
                        height: sunSize?.height,
                        width: sunSize?.width,
                      ),
              )
            : Container(
                key: const ValueKey(2),
                child: moonImagePath == null
                    ? const Image(
                        image: AssetImage(ImagesPath.moonImage, package: 'daynightbanner'),
                      )
                    : Image.asset(
                        moonImagePath!,
                        height: moonSize?.height,
                        width: moonSize?.width,
                      ),
              ),
        transitionBuilder: (child, anim) {
          return ScaleTransition(
            scale: anim,
            child: FadeTransition(
              opacity: anim,
              child: SlideTransition(
                position: anim.drive(
                  Tween(
                    begin: const Offset(0, 4),
                    end: const Offset(0, 0),
                  ),
                ),
                child: child,
              ),
            ),
          );
        },
      ),
    );
  }
}
