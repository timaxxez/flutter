import 'package:flutter/material.dart';
import 'screens/form_screen.dart'; // Подключаем экран формы

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Form Example',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const HomeScreen(), // главный экран приложения
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Главная страница'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Переход на экран формы
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FormScreen()),
            );
          },
          child: const Text('Открыть форму'),
        ),
      ),
    );
  }
}
