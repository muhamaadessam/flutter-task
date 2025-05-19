import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task/Core/constants/text.dart';

import '../../../res/assets.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 80),
          child: Row(
            children: [
              SvgPicture.asset(Assets.logo),
              const Spacer(),
              Row(
                children: [
                  TextBody12('Items', color: Colors.white),
                  const SizedBox(width: 32),
                  TextBody12('Pricing', color: Color(0xff999999)),
                  const SizedBox(width: 32),
                  TextBody12('Info', color: Color(0xff999999)),
                  const SizedBox(width: 32),
                  TextBody12('Tasks', color: Color(0xff999999)),
                  const SizedBox(width: 32),
                  TextBody12('Analytics', color: Color(0xff999999)),
                  const SizedBox(width: 24),
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
                  Icon(Icons.keyboard_arrow_down_rounded, color: Colors.white)
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
