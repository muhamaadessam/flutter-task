import 'package:flutter/material.dart';
import 'package:flutter_task/Home/presentation/widgets/Item_card.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/mobile_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: LayoutBuilder(builder: (context, constraints) {
        double width = constraints.maxWidth;

        int crossAxisCount = 0;
        if (width < 600) {
          crossAxisCount = 1;
        } else if (width < 850) {
          crossAxisCount = 2;
        } else if (width < 1200) {
          crossAxisCount = 3;
        } else if (width < 1600) {
          crossAxisCount = 4;
        } else if (width < 2000) {
          crossAxisCount = 5;
        } else {
          crossAxisCount = 6;
        }
        bool showAppBar = true;
        if (width < 900) {
          showAppBar = false;
        } else {
          showAppBar = true;
        }
        return Column(
          children: [
            if (showAppBar) WebAppBar() else MobileAppBar(),
            Expanded(
              child: GridView.builder(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 80),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    childAspectRatio: .755,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 16),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) =>
                    const ItemCard(),
              ),
            ),
          ],
        );
      }),
    );
  }
}
