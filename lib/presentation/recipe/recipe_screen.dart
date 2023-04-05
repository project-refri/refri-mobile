import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:refri_mobile/components/banner_card.dart';
import 'package:refri_mobile/components/favorit_recipe_card.dart';
import 'package:refri_mobile/components/main_section.dart';
import 'package:refri_mobile/components/recipe_card.dart';
import 'package:refri_mobile/components/recipe_header.dart';
import 'package:refri_mobile/components/refri_app_bar.dart';
import 'package:refri_mobile/constants/colors.dart';

class RecipeScreen extends StatelessWidget {
  const RecipeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          RefriAppBar(
            logoPath: "asset/svg/logo_recipe_icon.svg",
          ),
          RecipeHeader(),
          SliverToBoxAdapter(child: _CarouselSlider()),
          SliverToBoxAdapter(child: _FavoritRecipe()),
          SliverToBoxAdapter(child: Container(height: 6, color: PRIMARY_COLOR)),
          SliverToBoxAdapter(child: _Recipe()),
          SliverToBoxAdapter(child: _PublishBanner()),
          SliverToBoxAdapter(child: _SimilarRecipe()),
          SliverToBoxAdapter(child: _RecentRecipe()),
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
      'asset/img/main_sample_2.png',
      'asset/img/main_sample_2.png',
    ];

    return Container(
        child: CarouselSlider(
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
                title: "여름이\n시원해지는\n레시피 모음.",
                description: "트렌디한 플레이팅으로\n완성하는 건강한 미식 레시피");
          },
        );
      }).toList(),
    ));
  }
}

class FavoritRecipeData {
  int id;
  String title, author, image;
  FavoritRecipeData(
      {required this.id,
      required this.title,
      required this.author,
      required this.image});
}

class _FavoritRecipe extends StatelessWidget {
  const _FavoritRecipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<FavoritRecipeData> data = [
      FavoritRecipeData(
        id: 1,
        title: "매콤한\n닭가슴살 또띠아",
        author: "jinhun.k",
        image: "asset/img/favorit_recipe_sample_1.png",
      ),
      FavoritRecipeData(
        id: 2,
        title: "만두가 더\n맛있어지는 소스",
        author: "나래의 식탁",
        image: "asset/img/favorit_recipe_sample_2.png",
      ),
      FavoritRecipeData(
        id: 3,
        title: "이열치열\n새우 완탕",
        author: "jinhun.k",
        image: "asset/img/favorit_recipe_sample_3.png",
      )
    ];

    return MainSection(
        padding: EdgeInsets.only(top: 26, bottom: 26, left: 20),
        title: "이번달 인기있는 레시피",
        child: SizedBox(
          height: 256,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            separatorBuilder: (context, index) => SizedBox(width: 16),
            itemBuilder: (context, index) {
              return FavoritRecipeCard(
                title: data[index].title,
                author: data[index].author,
                image: data[index].image,
              );
            },
          ),
        ));
  }
}

class _Recipe extends StatelessWidget {
  const _Recipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainSection(
        title: "현재 재료로 만들 수 있어요",
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

class _PublishBanner extends StatelessWidget {
  const _PublishBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 115,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("asset/img/레시피등록배경.png")),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("리프렌즈에게 나의 집밥 레시피를 공유해요!\n레시피 채택시 리프리에서 멋진 선물을 보내드려요.",
                  style: TextStyle(
                      color: SUB_COLOR_1,
                      fontSize: 10,
                      fontWeight: FontWeight.w500)),
              SizedBox(
                width: 155,
                height: 31,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      )),
                      backgroundColor: MaterialStateProperty.all(SUB_COLOR_1),
                    ),
                    child: Text("등록 신청하기",
                        style: TextStyle(
                            color: Color(0xFFFFAE68),
                            fontSize: 10,
                            fontWeight: FontWeight.w500))),
              )
            ],
          ),
        ));
  }
}

class _SimilarRecipe extends StatelessWidget {
  const _SimilarRecipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainSection(
        title: "같은 식이성향이 저장했어요",
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          RecipeCard(
            title: "닭가슴살 키토 김밥",
            tags: ["키토", "가벼운", "단백질"],
            image: "asset/img/recipe_sample_3.png",
          ),
          RecipeCard(
            title: "소스 자작한 연어 스테이크",
            tags: ["키토", "따뜻한", "단백질"],
            image: "asset/img/recipe_sample_4.png",
          ),
        ]));
  }
}

class _RecentRecipe extends StatelessWidget {
  const _RecentRecipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainSection(
        padding: EdgeInsets.only(top: 0, bottom: 26, left: 20, right: 20),
        title: "최근 업로드 레시피",
        child: GridView.count(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: EdgeInsets.only(bottom: 20),
          childAspectRatio: 163.97 / 189.88,
          crossAxisCount: 2,
          mainAxisSpacing: 16.5,
          crossAxisSpacing: 20,
          children: const [
            RecipeCard(
              title: "견과류를 얹은 노오븐 머핀",
              tags: ["호두", "디저트", "달콤한"],
              image: "asset/img/recipe_sample_5.png",
            ),
            RecipeCard(
              title: "연어 바지락 크림스프",
              tags: ["키토", "따뜻한", "편안한"],
              image: "asset/img/recipe_sample_2.png",
            ),
            RecipeCard(
              title: "연어 바지락 크림스프",
              tags: ["키토", "따뜻한", "편안한"],
              image: "asset/img/recipe_sample_2.png",
            ),
            RecipeCard(
              title: "연어 바지락 크림스프",
              tags: ["키토", "따뜻한", "편안한"],
              image: "asset/img/recipe_sample_2.png",
            ),
            RecipeCard(
              title: "연어 바지락 크림스프",
              tags: ["키토", "따뜻한", "편안한"],
              image: "asset/img/recipe_sample_2.png",
            ),
            RecipeCard(
              title: "연어 바지락 크림스프",
              tags: ["키토", "따뜻한", "편안한"],
              image: "asset/img/recipe_sample_2.png",
            ),
            RecipeCard(
              title: "연어 바지락 크림스프",
              tags: ["키토", "따뜻한", "편안한"],
              image: "asset/img/recipe_sample_2.png",
            ),
            RecipeCard(
              title: "연어 바지락 크림스프",
              tags: ["키토", "따뜻한", "편안한"],
              image: "asset/img/recipe_sample_2.png",
            ),
          ],
        ));
  }
}
