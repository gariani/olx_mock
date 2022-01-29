import 'package:flutter/material.dart';
import 'package:olx_mock/components/custom_drawer/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: Colors.purple,
        drawer: CustomDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.purple,
        ),
      ),
    );
  }
}
