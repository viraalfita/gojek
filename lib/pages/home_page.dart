import 'package:flutter/material.dart';
import 'package:gojek/components/fast_access.dart';
import 'package:gojek/components/goclub.dart';
import 'package:gojek/components/gopay.dart';
import 'package:gojek/components/header.dart';
import 'package:gojek/components/menu.dart';
import 'package:gojek/components/gopaylater_news.dart';
import 'package:gojek/components/search.dart';
import 'package:gojek/models/news.dart';
import 'package:gojek/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: green2,
        elevation: 0,
        toolbarHeight: 71,
        title: const Header(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Search(),
            Gopay(),
            Menu(),
            Goclub(),
            FastAccess(),
            GopayLaterNews()
          ],
        ),
      ),
    );
  }
}
