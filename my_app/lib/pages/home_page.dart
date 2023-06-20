import 'package:flutter/material.dart';
import 'package:my_app/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const int days = 30;
    const String name = "Aksh";

    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: const Text("Welcome to $days days of flutter by $name!"),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
