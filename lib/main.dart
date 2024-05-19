import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek_swu/common/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gojek SWU',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        toolbarHeight: 80.0,
        backgroundColor: AppColors.primaryColor,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: SvgPicture.asset(
              'images/profile.svg',
              semanticsLabel: 'Icon Profile',
            ),
          )
        ],
        title: Container(
          margin: const EdgeInsets.only(
            left: 16.0,
            top: 16.0,
            bottom: 16.0,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(45),
          ),
          child: TextField(
            controller: controller,
            decoration: const InputDecoration(
              hintText: 'Find services, food, or places',
              contentPadding: EdgeInsets.symmetric(horizontal: 20),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
