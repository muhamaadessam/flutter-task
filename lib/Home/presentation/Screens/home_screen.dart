import 'package:flutter/material.dart';
import 'package:flutter_task/Home/presentation/widgets/Item_card.dart';

import '../widgets/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          CustomAppBar(),
          ItemCard(),
        ],
      ),
    );
  }
}
