import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:gojek/theme.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: green1,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(100)),
            child: Text('Beranda', style: semibold14.copyWith(color: green1)),
          ),
          ...['Promo', 'Pesanan', 'Chat'].map((title) => Flexible(
                fit: FlexFit.loose,
                flex: 1,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
                  child: Center(
                    child: Text(
                      title,
                      style: semibold14,
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
