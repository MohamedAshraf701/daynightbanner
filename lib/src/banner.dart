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

/// A Flutter widget that displays a day-night banner with a sun and moon icon
/// based on the current time of day.
class DayNightBanner extends StatelessWidget {
  /// Path to the image representing the sun icon.
  final String? sunImage;

  /// Path to the image representing the moon icon.
  final String? moonImage;

  /// Size of the sun icon. Defaults to 100x100.
  final Size? sunSize;

  /// Size of the moon icon. Defaults to 100x100.
  final Size? moonSize;

  /// Path to the background image of the banner.
  final String? backgroundImage;

  /// Width of the sun and moon icons. Defaults to 100.
  final double widthOfSunMoon;

  /// Height of the banner container. Defaults to 220.
  final double bannerHeight;

  /// Height of the background image. Defaults to 200.
  final double backgroundImageHeight;

  /// Additional child widget to be displayed in the banner.
  final Widget? child;

  /// Custom decoration for the banner container.
  final BoxDecoration? decoration;

  /// The current hour of the day (0 to 23) to determine the time of day.
  /// This variable is required.
  final int hour;

  /// Creates a new instance of the [DayNightBanner] widget.
  ///
  /// [sunImage]: Path to the image representing the sun icon.
  /// [moonImage]: Path to the image representing the moon icon.
  /// [sunSize]: Size of the sun icon. Defaults to 100x100.
  /// [moonSize]: Size of the moon icon. Defaults to 100x100.
  /// [backgroundImage]: Path to the background image of the banner.
  /// [widthOfSunMoon]: Width of the sun and moon icons. Defaults to 100.
  /// [bannerHeight]: Height of the banner container. Defaults to 220.
  /// [backgroundImageHeight]: Height of the background image. Defaults to 200.
  /// [child]: Additional child widget to be displayed in the banner.
  /// [decoration]: Custom decoration for the banner container.
  /// [hour]: The current hour of the day (0 to 23) to determine the time of day. This variable is required.
  const DayNightBanner({
    Key? key,
    this.sunImage,
    this.moonImage,
    this.sunSize,
    this.moonSize,
    this.widthOfSunMoon = 100,
    this.backgroundImage,
    this.bannerHeight = 220,
    this.backgroundImageHeight = 200,
    this.child,
    this.decoration,
    required this.hour,
  }) : super(key: key);

  /// Get the current hour to determine the time of day.

  @override
  Widget build(BuildContext context) {
    // Check if it is daytime (between 6 AM and 6 PM).
    final isDay = hour >= 6 && hour <= 18;

    // Create a gradient manager to manage the background gradient based on the current hour.
    final gradientManager = GradientManager(hour);

    // Calculate the displacement for sun/moon animation.
    final displace = MathUtils.mapRange(hour * 1.0, 1, 23);

    final decoration = this.decoration ??
        BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
                offset: Offset(2, 2),
                color: Colors.black38,
                blurRadius: 10,
                spreadRadius: 1),
          ],
        );

    return Container(
      decoration: decoration,
      child: ClipRRect(
        borderRadius: decoration.borderRadius ?? BorderRadius.zero,
        child: AnimatedContainer(
          decoration: BoxDecoration(gradient: gradientManager.gradient),
          duration: const Duration(seconds: 1),
          height: bannerHeight,
          child: Stack(
            children: [
              LayoutBuilder(
                builder: (context, constraints) {
                  // Calculate the maximum width available for the sun/moon icons to move horizontally.
                  final maxWidth =
                      constraints.maxWidth.round() - widthOfSunMoon;

                  // Calculate the vertical displacement for the sun/moon icons based on the current hour.
                  final top = sin(pi * displace) * 4.1;

                  // Calculate the horizontal displacement for the sun/moon icons based on the current hour.
                  final left = maxWidth * displace;

                  return Stack(
                    fit: StackFit.expand,
                    alignment: Alignment.center,
                    children: <Widget>[
                      // AnimatedPositioned to animate the sun/moon icons' position based on the current hour.
                      AnimatedPositioned(
                        curve: Curves.ease,
                        bottom: top * 30,
                        left: left,
                        duration: const Duration(milliseconds: 200),
                        child: SunMoon(
                          isSun: isDay,
                          sunImagePath: sunImage,
                          moonImagePath: moonImage,
                          imageSize: widthOfSunMoon,
                        ),
                      ),
                    ],
                  );
                },
              ),
              // Display the background image at the bottom of the banner.
              Align(
                alignment: Alignment.bottomCenter,
                child: backgroundImage == null
                    ? Image(
                        image: const AssetImage(ImagesPath.backgroundImage,
                            package: 'daynightbanner'),
                        height: backgroundImageHeight,
                        width: double.infinity,
                        fit: BoxFit.cover)
                    : Image.asset(
                        backgroundImage!,
                        height: backgroundImageHeight,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
              ),
              // Display the additional child widget at the center of the banner.
              child == null ? const SizedBox() : child!,
            ],
          ),
        ),
      ),
    );
  }
}
