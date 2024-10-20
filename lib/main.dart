import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Acceuil Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  void _navigateToNextPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const NextPage()),

    );
  }

  @override
    Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Welcome Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            const Text(
              'Welcome To The App',
              style: TextStyle(
                fontSize: 24, fontWeight:FontWeight.bold),
            ),
            const SizedBox(height: 50),
            Image.network('https://img.freepik.com/vecteurs-libre/illustration-du-concept-bienvenue_114360-27447.jpg?t=st=1729433661~exp=1729437261~hmac=2716d625dae15b3deea179684e121198833badf085544bac48ceb700abeff083&w=740',
            width: 300,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 30), // Space between image and button
            ElevatedButton(
              onPressed: () => _navigateToNextPage(context),
              child: const Text('Next'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                textStyle: const TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




