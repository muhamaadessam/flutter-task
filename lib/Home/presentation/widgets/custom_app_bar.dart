import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task/Core/constants/colors.dart';
import 'package:flutter_task/Core/constants/text.dart';

import '../../../res/assets.dart';

class WebAppBar extends StatefulWidget {
  const WebAppBar({super.key});

  @override
  State<WebAppBar> createState() => _WebAppBarState();
}

class _WebAppBarState extends State<WebAppBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<String> taps = [
      'Items',
      'Pricing',
      'Info',
      'Tasks',
      'Analytics',
    ];

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 18, left: 80, right: 80),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: SvgPicture.asset(Assets.logo),
              ),
              const Spacer(),
              Row(
                children: [
                  ...List.generate(
                    taps.length,
                    (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 32, top: 16),
                        child: GestureDetector(
                          onTap: () {
                            print(index);
                            currentIndex = index;
                            setState(() {});
                            print(currentIndex);
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              TextBody14(
                                taps[index],
                                color: currentIndex == index
                                    ? Colors.white
                                    : Color(0xff999999),
                              ),
                              SizedBox(height: 34),
                              if (currentIndex == index)
                                Container(
                                  width: 40,
                                  height: 2,
                                  color: mainColor,
                                ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 18.0),
                    child: Row(
                      children: [
                        Container(
                          width: 1,
                          height: 22,
                          color: Color(0xff262626),
                        ),
                        const SizedBox(width: 24),
                        SvgPicture.asset(Assets.setting),
                        const SizedBox(width: 24),
                        SvgPicture.asset(Assets.notification),
                        const SizedBox(width: 24),
                        Container(
                          width: 1,
                          height: 22,
                          color: Color(0xff262626),
                        ),
                        const SizedBox(width: 24),
                        Image.asset(Assets.avatar),
                        const SizedBox(width: 12),
                        TextBody14('Johna Doe', color: Colors.white),
                        Icon(Icons.keyboard_arrow_down_rounded,
                            color: Colors.white),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 1,
          color: Color(0xff262626),
        )
      ],
    );
  }
}
