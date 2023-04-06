import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:refri_mobile/components/article_card.dart';
import 'package:refri_mobile/components/banner_card.dart';
import 'package:refri_mobile/components/content_card.dart';
import 'package:refri_mobile/components/main_section.dart';
import 'package:refri_mobile/components/recipe_card.dart';
import 'package:refri_mobile/components/refri_app_bar.dart';
import 'package:refri_mobile/components/home_header.dart';
import 'package:refri_mobile/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          const RefriAppBar(
            logoPath: 'asset/svg/logo_icon.svg',
          ),
          const HomeHeader(),
          const SliverToBoxAdapter(child: _CarouselSlider()),
          const SliverToBoxAdapter(child: _Recipe()),
          SliverToBoxAdapter(child: Container(height: 6, color: PRIMARY_COLOR)),
          const SliverToBoxAdapter(child: _Contents()),
          const SliverToBoxAdapter(child: _Refriends()),
          const SliverToBoxAdapter(child: _Article()),
        ],
      ),
    );
  }
}

class _CarouselSlider extends StatelessWidget {
  const _CarouselSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'asset/img/main_sample_1.png',
      'asset/img/main_sample_1.png',
    ];

    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        viewportFraction: 1,
        height: 236,
      ),
      items: [0, 1].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return BannerCard(
                id: i,
                image: images[i],
                title: "집에서\n연남동\n비건식당처럼.",
                description: "트렌디한 플레이팅으로\n완성하는 건강한 미식 레시피");
          },
        );
      }).toList(),
    );
  }
}

class _Recipe extends StatelessWidget {
  const _Recipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainSection(
        title: "현재 재료로 추천하는 레시피",
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          RecipeCard(
            title: "샐러드로 채운 아보카도",
            tags: ["키토", "비건", "가벼운"],
            image: "asset/img/recipe_sample_1.png",
          ),
          RecipeCard(
            title: "연어 바지락 크림스프",
            tags: ["키토", "따뜻한", "편안한"],
            image: "asset/img/recipe_sample_2.png",
          ),
        ]));
  }
}

class _Contents extends StatelessWidget {
  const _Contents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainSection(
        title: "이번달 인기 컨텐츠 TOP 6",
        child: SizedBox(
          height: 257,
          child: GridView.count(
            childAspectRatio: 75.2 / 265.37,
            scrollDirection: Axis.horizontal,
            mainAxisSpacing: 13.5,
            crossAxisSpacing: 14.7,
            crossAxisCount: 3,
            children: const [
              ContentCard(
                  rank: 1,
                  title: '리프리 여름주의보!\n식재료 관리법 바로알기',
                  image: "asset/img/content_sample_1.png",
                  viewCount: 2475),
              ContentCard(
                  rank: 2,
                  title: '아보카도 AtoZ :\n어디까지 활용해봤나요?',
                  image: "asset/img/content_sample_2.png",
                  viewCount: 2475),
              ContentCard(
                  rank: 3,
                  title: '집밥 마스터클래스!\n소스로 자취요리 레벨업',
                  image: "asset/img/content_sample_3.png",
                  viewCount: 2475),
              ContentCard(
                  rank: 4,
                  title: '리프리 여름주의보!\n식재료 관리법 바로알기',
                  image: "asset/img/content_sample_4.png",
                  viewCount: 2475),
              ContentCard(
                  rank: 5,
                  title: '리프리 여름주의보!\n식재료 관리법 바로알기',
                  image: "asset/img/content_sample_5.png",
                  viewCount: 2475),
              ContentCard(
                  rank: 6,
                  title: '리프리 여름주의보!\n식재료 관리법 바로알기',
                  image: "asset/img/content_sample_6.png",
                  viewCount: 2475),
            ],
          ),
        ));
  }
}

class _Refriends extends StatelessWidget {
  const _Refriends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: PRIMARY_COLOR,
      child: MainSection(
          title: "집밥잘알 리프렌즈",
          child: SizedBox(
            height: 88,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              separatorBuilder: (context, index) => const SizedBox(width: 16),
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 68,
                      width: 68,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.white),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                            "asset/img/profile_image_sample_${index + 1}.png"),
                      ),
                    ),
                    Text("닉네임 ${index + 1}",
                        style:
                            const TextStyle(fontSize: 12, color: SUB_COLOR_1)),
                  ],
                );
              },
            ),
          )),
    );
  }
}

class _Article extends StatelessWidget {
  const _Article({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainSection(
        title: "최근 리프렌즈 게시글",
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ArticleCard(
                title: "인기 컨텐츠에 아보카도 AtoZ레시피 따라해봤어요",
                nickname: "sjsjsj1246",
                image: "asset/img/article_sample_1.png",
                viewCount: 24,
                likeCount: 15,
                commentCount: 8),
          ],
        ));
  }
}
