import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ContentCard extends StatelessWidget {
  final String title, image;
  final int rank, viewCount;

  const ContentCard(
      {required this.title,
      required this.image,
      required this.rank,
      required this.viewCount,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      height: 75,
      child: Row(
        children: [
          Container(
            width: 80,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(5),
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5),
              ),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 13.5),
          Expanded(
              child: Container(
            decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Color(0xFF9A8266), width: 1)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("$rank",
                    style: const TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF9A8266),
                    )),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text('${NumberFormat('##,000').format(viewCount)} views',
                        style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF9A8266))),
                    const SizedBox(height: 8),
                  ],
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
