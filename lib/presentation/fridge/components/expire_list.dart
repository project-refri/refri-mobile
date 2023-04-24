import 'package:flutter/material.dart';
import 'package:refri_mobile/constants/colors.dart';
import 'package:refri_mobile/constants/typography.dart';

class ExpireList extends StatelessWidget {
  final List<int> numbers = List.generate(5, (i) => i);

  ExpireList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: subColor1,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "유통기한 임박!",
                  style: defaultTextStyle.copyWith(
                      color: primaryColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "관련 레시피 검색 바로가기",
                  style: defaultTextStyle.copyWith(
                      color: primaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 76,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: numbers.length,
                itemBuilder: (context, index) => renderCard(),
                separatorBuilder: (context, index) => const SizedBox(
                  width: 12,
                ),
              ),
            )
          ]),
        ));
  }

  Widget renderCard() {
    return Container(
      width: 125,
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
