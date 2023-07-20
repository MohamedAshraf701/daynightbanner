import 'package:daynightbanner/daynightbanner.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Get the current hour of the day (0 to 23).
  int _currentHour = DateTime.now().hour;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('DayNightBanner Example')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Display the DayNightBanner widget with the current hour.
              const DayNightBanner(
                hour: 12,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Simulate changing the time by incrementing the current hour.
                  setState(() {
                    _currentHour = (_currentHour + 1) % 24;
                  });
                },
                child: const Text('Change Time'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
