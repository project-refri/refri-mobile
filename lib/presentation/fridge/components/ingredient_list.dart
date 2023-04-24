import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:refri_mobile/components/accordion.dart';
import 'package:refri_mobile/constants/colors.dart';
import 'package:refri_mobile/constants/icon.dart';
import 'package:refri_mobile/constants/typography.dart';

class IngredientList extends StatelessWidget {
  final List<int> numbers = List.generate(5, (i) => i);

  IngredientList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Accordion(
            title: "냉장보관",
            description: "종류별로 칸을 나눠서 정리해봐요",
            content: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: ingredientCard(
                        icon: SvgPicture.asset(IconAsset.eggIcon.path),
                        name: "달걀",
                        count: 2,
                        days: 3,
                      )),
                      const SizedBox(width: 12),
                      Expanded(
                          child: ingredientCard(
                        icon: SvgPicture.asset(IconAsset.baconIcon.path),
                        name: "베이컨",
                        count: 2,
                        days: 7,
                      )),
                    ],
                  )
                ],
              ),
            )),
        Accordion(
            title: "냉동보관",
            description: "냉동실은 시간이 멈추는 곳이 아니에요.",
            content: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: ingredientCard(
                        icon: SvgPicture.asset(IconAsset.eggIcon.path),
                        name: "달걀",
                        count: 2,
                        days: 3,
                      )),
                      const SizedBox(width: 12),
                      Expanded(
                          child: ingredientCard(
                        icon: SvgPicture.asset(IconAsset.baconIcon.path),
                        name: "베이컨",
                        count: 2,
                        days: 7,
                      )),
                    ],
                  )
                ],
              ),
            )),
        Accordion(
            title: "실온보관",
            description: "따듯한 날씨에는  실온 보관에 유의해요.",
            content: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: ingredientCard(
                        icon: SvgPicture.asset(IconAsset.eggIcon.path),
                        name: "달걀",
                        count: 2,
                        days: 3,
                      )),
                      const SizedBox(width: 12),
                      Expanded(
                          child: ingredientCard(
                        icon: SvgPicture.asset(IconAsset.baconIcon.path),
                        name: "베이컨",
                        count: 2,
                        days: 7,
                      )),
                    ],
                  )
                ],
              ),
            ))
      ],
    );
  }

  Widget ingredientCard({
    required SvgPicture icon,
    required String name,
    required int count,
    required int days,
  }) {
    return Row(
      children: [
        icon,
        const SizedBox(width: 6),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                name,
                textAlign: TextAlign.left,
                style: defaultTextStyle.copyWith(
                    fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 8),
              Container(height: 4, color: primaryColor)
            ],
          ),
        ),
        const SizedBox(width: 6),
        Column(
          children: [
            Text("$count개",
                style: defaultTextStyle.copyWith(
                    fontSize: 12, fontWeight: FontWeight.w500)),
            Text("$days일",
                style: defaultTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: tintColor))
          ],
        ),
      ],
    );
  }
}
