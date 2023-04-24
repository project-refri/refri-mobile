import 'package:flutter/material.dart';
import 'package:refri_mobile/constants/colors.dart';
import 'package:refri_mobile/constants/typography.dart';

class NutrientInfo extends StatelessWidget {
  final List<int> numbers = List.generate(5, (i) => i);

  NutrientInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: subColor1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "이번달 주연님의 식생활",
                style: defaultTextStyle.copyWith(
                    color: primaryColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                "자세히보기",
                style: defaultTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: tintColor),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  height: 48,
                  decoration: const BoxDecoration(
                    color: orangeColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                    ),
                  ),
                  child: Center(
                    child: Text("40%",
                        style: defaultTextStyle.copyWith(
                          color: subColor1,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  height: 48,
                  decoration: const BoxDecoration(
                    color: greenColor,
                  ),
                  child: Center(
                    child: Text("30%",
                        style: defaultTextStyle.copyWith(
                          color: subColor1,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 48,
                  decoration: const BoxDecoration(
                    color: brownColor,
                  ),
                  child: Center(
                    child: Text("10%",
                        style: defaultTextStyle.copyWith(
                          color: subColor1,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 48,
                  decoration: const BoxDecoration(
                    color: navyColor,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 48,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                    color: subColor2,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                    color: orangeColor,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
              const SizedBox(width: 4),
              Text(
                "단백질",
                style: defaultTextStyle.copyWith(
                    color: primaryColor, fontSize: 12),
              ),
              const SizedBox(width: 8),
              Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                    color: greenColor,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
              const SizedBox(width: 4),
              Text(
                "섬유질",
                style: defaultTextStyle.copyWith(
                    color: primaryColor, fontSize: 12),
              ),
              const SizedBox(width: 8),
              Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                    color: brownColor,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
              const SizedBox(width: 4),
              Text(
                "탄수화물",
                style: defaultTextStyle.copyWith(
                    color: primaryColor, fontSize: 12),
              ),
              const SizedBox(width: 8),
              Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                    color: navyColor,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
              const SizedBox(width: 4),
              Text(
                "유제품",
                style: defaultTextStyle.copyWith(
                    color: primaryColor, fontSize: 12),
              ),
              const SizedBox(width: 8),
              Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                    color: subColor2,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
              const SizedBox(width: 4),
              Text(
                "당류",
                style: defaultTextStyle.copyWith(
                    color: primaryColor, fontSize: 12),
              )
            ],
          ),
          const SizedBox(height: 16),
        ]),
      ),
    );
  }

  Widget renderCard() {
    return Container(
      width: 120,
      height: 76,
      decoration: const BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(5),
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(5)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "오늘까지",
              style: defaultTextStyle.copyWith(
                color: subColor1,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "후숙 아보카도",
              overflow: TextOverflow.ellipsis,
              style: defaultTextStyle.copyWith(
                  color: subColor1, fontSize: 17, fontWeight: FontWeight.w700),
            ),
            Row(
              children: [
                Container(
                  width: 14,
                  height: 4,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(7),
                      bottomLeft: Radius.circular(7),
                    ),
                    color: greenColor,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 4,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(7),
                        bottomRight: Radius.circular(7),
                      ),
                      color: subColor1,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
