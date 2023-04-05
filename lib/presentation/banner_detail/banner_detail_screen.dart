import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BannerDetailScreen extends StatelessWidget {
  const BannerDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map arguments = ModalRoute.of(context)?.settings.arguments as Map;

    return Hero(
      tag: 'art_detail_${arguments["id"]}',
      child: Scaffold(
        body: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Stack(
            children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Image.asset(arguments['image'], fit: BoxFit.cover)),
              Positioned(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                bottom: 0,
                child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Color.fromARGB(223, 0, 0, 0)
                      ],
                    )),
                    child: CupertinoActivityIndicator()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
