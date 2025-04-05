import 'package:flutter/material.dart';
import 'package:personal_finance_application/secondPage.dart';
import 'package:personal_finance_application/login_sign_up.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(counter: counter, onIncrement: () {
        setState(() {
          counter++;
        });
      }),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final int counter;
  final VoidCallback onIncrement;

  const MyHomePage({
    super.key, 
    required this.counter,
    required this.onIncrement,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Finance Application'),
        backgroundColor: Colors.lightBlue,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onIncrement,
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello '),
            Text('World Counter: '),
            Text('[$counter]'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          print('Tab $index tapped');
          if (index == 1) {
            print('Attempting to navigate to Secondpage');
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => LoginSignUp()),
            );
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings), 
            label: 'Settings',
          ),
        ],
        backgroundColor: Colors.lightBlueAccent,
      ),
    );
  }
}
