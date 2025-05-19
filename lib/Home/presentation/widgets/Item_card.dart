import 'package:flutter/material.dart';
import 'package:flutter_task/Core/constants/colors.dart';

import '../../../Core/constants/text.dart';
import '../../../res/assets.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xff262626),
        ),
        width: 240,
        height: 322,
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
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset(Assets.testImage),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: 190,
                width: 240,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff262626).withValues(alpha: 0.4),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: const Offset(0, -10),
                    ),
                  ],
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Color(0xff262626),
                    ],
                    stops: [0, .15],
                  ),
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(8)),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Color(0xffC25F30)),
                          color: Color(0xffC25F30).withValues(alpha: 0.1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
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
                        height: 24,
                      ),
                      TextTitle(
                        'Item title',
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Image.asset(Assets.calendar),
                          SizedBox(
                            width: 8,
                          ),
                          TextDescription(
                            '5 Nights (Jan 16 - Jan 20, 2024) ',
                            color: Color(0xff999999),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Container(
                        height: .2,
                        width: double.infinity,
                        color: Color(0xff999999),
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Stack(
                            children: [
                              ...List.generate(
                                6,
                                (index) {
                                  print(index * 12);
                                  return Padding(
                                    padding: EdgeInsets.only(
                                        left: index < 4 ? (index * 12 ): 0),
                                    child: Container(
                                      height: 24,
                                      width: 24,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xff262626),
                                      ),
                                      child: index == 3
                                          ? Center(
                                              child: TextBody12(
                                                '+${6 - 3}',
                                                color: mainColor,
                                              ),
                                            )
                                          : Image.asset(Assets.avatar,height: 22,
                                        width: 22,),
                                    ),
                                  );
                                },
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
                top: 0,
                right: 0,
                child: Icon(
                  Icons.abc,
                  color: Colors.red,
                )),
          ],
        ));
  }
}
