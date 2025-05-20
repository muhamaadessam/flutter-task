import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../res/assets.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical:  16,horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.menu, color: Colors.white),
              const SizedBox(width: 12),

              SvgPicture.asset(Assets.logo),
              const Spacer(),
              Row(
                children: [
                  const SizedBox(width: 12),
                  SvgPicture.asset(Assets.setting),
                  const SizedBox(width: 12),
                  SvgPicture.asset(Assets.notification),
                  const SizedBox(width: 12),
                  Container(
                    width: 1,
                    height: 22,
                    color: Color(0xff262626),
                  ),
                  const SizedBox(width: 12),
                  Image.asset(Assets.avatar),
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
