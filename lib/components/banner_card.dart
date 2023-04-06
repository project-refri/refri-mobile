import 'package:flutter/material.dart';
import 'package:refri_mobile/presentation/banner_detail/banner_detail_screen.dart';

class BannerCard extends StatelessWidget {
  final int id;
  final String image, title, description;
  const BannerCard(
      {required this.title,
      required this.description,
      required this.id,
      required this.image,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            PageRouteBuilder(
              settings: RouteSettings(arguments: {
                'id': id,
                'image': image,
              }),
              pageBuilder: (context, animation, secondaryAnimation) =>
                  const BannerDetailScreen(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return ScaleTransition(
                  scale: animation,
                  child: child,
                );
              },
            ));
      },
      child: Stack(fit: StackFit.expand, children: [
        ClipRRect(child: Image.asset(image, fit: BoxFit.cover)),
        _Content(title: title, description: description)
      ]),
    );
  }
}

class _Content extends StatelessWidget {
  final String title, description;
  const _Content({required this.title, required this.description, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: [
            Colors.transparent,
            Colors.black.withOpacity(0.3),
            Colors.black.withOpacity(0.5),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(title,
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFEFEFE3))),
            const SizedBox(height: 8),
            Text(description,
                style: const TextStyle(fontSize: 12, color: Color(0xFFEFEFE3))),
          ],
        ),
      ),
    );
  }
}
