import 'package:flutter/material.dart';
import 'package:flutter_task/Core/constants/colors.dart';

import '../../../Core/constants/text.dart';
import '../../../res/assets.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color(0xff262626),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  width: double.infinity,
                  height: constraints.maxHeight * .6,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.asset(
                    Assets.testImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  width: double.infinity,
                  height: constraints.maxHeight * .52,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff171717).withValues(alpha: 0.4),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: const Offset(0, -4),
                      ),
                    ],
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Color(0xff171717),
                      ],
                      stops: [0, .1],
                    ),
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(8)),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Color(0xffC25F30)),
                            color: Color(0xffC25F30).withValues(alpha: 0.1),
                          ),
                            height: constraints.maxHeight * .087,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                TextBody14(
                                  'Pending Approval',
                                  color: Colors.white,
                                ),
                                Icon(Icons.keyboard_arrow_down_rounded,
                                    color: Colors.white),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: constraints.maxHeight * .045,
                        ),
                        SizedBox(
                          height: constraints.maxHeight * .083,
                          child: TextTitle(
                            'Item title',
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: constraints.maxHeight * .019,
                        ),
                        SizedBox(
                            height: constraints.maxHeight * .056,
                          child: Row(
                            children: [
                              Image.asset(Assets.calendar),
                              SizedBox(
                                width: constraints.maxWidth * .0012,
                              ),
                              TextDescription(
                                '5 Nights (Jan 16 - Jan 20, 2024) ',
                                color: Color(0xff999999),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: constraints.maxHeight * .037,
                        ),
                        Container(
                          height: .2,
                          width: double.infinity,
                          color: Color(0xff999999),
                        ),
                        SizedBox(
                          height: constraints.maxHeight * .037,
                        ),
                        SizedBox(
                          height: constraints.maxHeight * .0745,
                          child: Row(
                            children: [
                              ...List.generate(
                                4,
                                (index) => Align(
                                  widthFactor: .5,
                                  child: CircleAvatar(
                                    radius: 13,
                                    backgroundColor: Color(0xff262626),
                                    child: CircleAvatar(
                                      radius: 12,
                                      backgroundColor: Color(0xff262626),
                                      backgroundImage: index == 3
                                          ? null
                                          : const AssetImage(Assets.avatar),
                                      child: index == 3
                                          ? TextDescription(
                                              '+${6 - 3}',
                                              color: mainColor,
                                            )
                                          : null,
                                    ),
                                  ),
                                ),
                              ),
                              Spacer(),
                              TextBody12(
                                '4 unfinished tasks',
                                color: Color(0xff999999),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black38,
                  ),
                  height: 32,
                  width: 32,
                  child: Icon(
                    Icons.more_horiz_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ));
    });
  }
}
