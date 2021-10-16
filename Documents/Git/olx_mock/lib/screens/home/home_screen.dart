import 'package:flutter/material.dart';
import 'package:olx_mock/components/components_custom_drawer/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(),
    );
  }
}
