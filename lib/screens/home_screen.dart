import 'package:flutter/material.dart';

import '/screens/details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});
  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 0, 0),

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(

              'Столько раз вы нажали кнопку:',

              style: TextStyle(fontSize: 18),
            ),
            Text(
              '$_counter',
              style: const TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,

                color: Color.fromARGB(255, 245, 85, 85),

              ),
            ),
            const SizedBox(height: 20),

            // 👉 Добавленный ElevatedButton
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailsScreen(),
                  ),
                );
              },

              child: const Text('Перейти на экран '),

            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Увеличить счётчик',

        backgroundColor: const Color.fromARGB(255, 236, 95, 60),

        child: const Icon(Icons.add),
      ),
    );
  }


}


