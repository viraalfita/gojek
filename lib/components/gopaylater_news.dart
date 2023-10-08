import 'package:flutter/cupertino.dart';
import 'package:gojek/theme.dart';

import '../datas/news.dart';

class GopayLaterNews extends StatelessWidget {
  const GopayLaterNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 32, left: 20, right: 31),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/gopaylater.png',
                height: 14,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Lebih hemat pake GoPayLater 🤩',
                style: bold16.copyWith(color: dark1),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Yuk, belanja di Tokopedia pake GoPay Later dan nikmatin cashback-nya~',
                style: regular14.copyWith(color: dark2),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        ...news.map(
          (item) => Padding(
            padding: const EdgeInsets.only(bottom: 24, left: 16, right: 16),
            child: Container(
              width: double.infinity,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: dark4),
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/${item.image}',
                    width: double.infinity,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.title,
                          style: bold16.copyWith(color: dark1),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          item.description,
                          style: regular14.copyWith(color: dark2),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
