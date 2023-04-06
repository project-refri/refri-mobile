import 'package:flutter/material.dart';
import 'package:refri_mobile/constants/colors.dart';

class ArticleCard extends StatelessWidget {
  final String title, nickname, image;
  final int viewCount, likeCount, commentCount;

  const ArticleCard(
      {required this.title,
      required this.nickname,
      required this.image,
      required this.viewCount,
      required this.likeCount,
      required this.commentCount,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 190,
        width: 163,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(5),
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(5),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 130,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(5),
                ),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            title,
                            style: const TextStyle(
                              color: SUB_COLOR_1,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text("$viewCount views",
                              style: const TextStyle(
                                color: Color(0xFF9A8266),
                                fontSize: 10,
                              )),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(nickname,
                              style: const TextStyle(
                                color: Color(0xFF9A8266),
                                fontSize: 10,
                              )),
                          const SizedBox(width: 8),
                          const Icon(Icons.favorite_border,
                              size: 12, color: Color(0xFF9A8266)),
                          const SizedBox(width: 2),
                          Text(likeCount.toString(),
                              style: const TextStyle(
                                color: Color(0xFF9A8266),
                                fontSize: 10,
                              )),
                          const SizedBox(width: 8),
                          const Icon(Icons.mode_comment_outlined,
                              size: 12, color: Color(0xFF9A8266)),
                          const SizedBox(width: 2),
                          Text(commentCount.toString(),
                              style: const TextStyle(
                                color: Color(0xFF9A8266),
                                fontSize: 10,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
