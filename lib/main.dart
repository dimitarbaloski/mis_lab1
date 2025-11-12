import 'package:flutter/material.dart';
import 'screens/exam_list_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'screens/exam_detail_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true, 
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Распоред за испити - 221068',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const ExamListScreen(),
        '/exam_detail_screen': (context) => const ExamDetailScreen(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 108, 197)),
      ),
    );
  }
}
