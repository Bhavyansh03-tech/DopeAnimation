import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  // Controller
  late final AnimationController _controller;

  // Initialize State
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
        vsync: this
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  bool bookmarked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.network('https://lottie.host/45ab8e6a-3d85-4e4b-b7e8-d5152939db79/wpOT4nYlS8.json'),
          const SizedBox(height: 40, width: 10),
          GestureDetector(
            onTap: (){
              if (bookmarked == false){
                bookmarked = true;
                _controller.forward();
              } else {
                bookmarked = false;
                _controller.reverse();
              }
            },
            child: Lottie.network(
                'https://lottie.host/a654a23c-1ef3-4082-800e-7451ee57339a/jgPZPmhMK0.json',
                controller: _controller
            ),
          )
        ],
      ),
    );
  }
}
