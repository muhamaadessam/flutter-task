import 'package:flutter/material.dart';
import 'package:flutter_task/Core/constants/colors.dart';
import 'package:flutter_task/Core/constants/text.dart';
import 'package:flutter_task/Home/presentation/widgets/Item_card.dart';
import 'package:flutter_task/res/assets.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/mobile_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: LayoutBuilder(
        builder: (context, constraints) {
          double width = constraints.maxWidth;
          bool isWeb = true;
          if (width < 900) {
            isWeb = false;
          } else {
            isWeb = true;
          }
          print(constraints.maxWidth);
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (isWeb) WebAppBar() else MobileAppBar(),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: isWeb ? 80 : 16, vertical: isWeb ? 32 : 16),
                child: Row(
                  children: [
                    TextTitle(
                      'Items',
                      color: Colors.white,
                      fontSize: isWeb ? 24 : 18,
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(48),
                        color: Color(0xff262626),
                      ),
                      width: isWeb ? 48 : 40,
                      height: isWeb ? 48 : 40,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          Assets.sliders,
                        ),
                      ),
                    ),
                    if (isWeb)
                      Row(
                        children: [
                          SizedBox(width: 14),
                          Container(
                            width: 1,
                            height: 48,
                            color: Color(0xff262626),
                          ),
                          SizedBox(width: 14),
                          GestureDetector(
                            onTap: () {
                              print('else');
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(48),
                                color: mainColor,
                              ),
                              height: 48,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 14, horizontal: 24),
                                child: Row(
                                  children: [
                                    // SvgPicture.asset(Assets.add),
                                    // Image.asset(Assets.add),
                                    Icon(
                                      Icons.add,
                                    ),
                                    const SizedBox(width: 8),
                                    TextBody14('Add a New Item',
                                        color: Colors.black),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                  ],
                ),
              ),
              Expanded(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return GridView.builder(
                      physics: BouncingScrollPhysics(),
                      padding:
                          EdgeInsets.symmetric(horizontal: isWeb ? 80 : 16),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 322,
                        childAspectRatio: .755,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 16,
                      ),
                      itemCount: 20,
                      itemBuilder: (BuildContext context, int index) =>
                          const ItemCard(),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
