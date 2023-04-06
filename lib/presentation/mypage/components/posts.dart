import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:refri_mobile/constants/colors.dart';
import 'package:refri_mobile/constants/icon.dart';

class Posts extends StatelessWidget {
  const Posts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: PRIMARY_COLOR,
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(5),
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5),
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(height: 8),
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) =>
                    renderCard(img: "asset/img/post_sample_1.png")),
          ),
        ),
      ),
    );
  }

  Widget renderCard({required final String img}) {
    return Container(
      height: 105,
      decoration: BoxDecoration(
        border: Border.all(color: SUB_COLOR_3),
      ),
      child: Row(children: [
        SizedBox(width: 138, child: Image.asset(img, fit: BoxFit.cover)),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text("게시글제목",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: SUB_COLOR_1)),
                const Text("게시글 내용 첫줄 게시글 내용 첫줄 게시글 내용 첫줄 게시글 내용 첫줄",
                    style: TextStyle(fontSize: 9, color: SUB_COLOR_2)),
                Row(
                  children: [
                    SvgPicture.asset(IconAsset.likeIcon.path,
                        width: 13, height: 13, fit: BoxFit.cover),
                    const SizedBox(width: 4),
                    const Text("532",
                        style: TextStyle(fontSize: 11, color: SUB_COLOR_2)),
                    const SizedBox(width: 6),
                    SvgPicture.asset(IconAsset.timeIcon.path,
                        width: 13, height: 13),
                    const SizedBox(width: 4),
                    const Text("1일전",
                        style: TextStyle(fontSize: 11, color: SUB_COLOR_2)),
                  ],
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
