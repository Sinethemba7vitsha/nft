import 'package:flutter/material.dart';
import 'package:nft/components/bottombar.dart';
import 'package:nft/components/myappbar.dart';
import 'package:nft/components/tabbar.dart';
import 'package:nft/design/design.dart';
import 'package:nft/tabs/recenttab.dart';
import 'package:nft/tabs/toptab.dart';
import 'package:nft/tabs/trendingtab.dart';

import 'themes.dart/themes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // user tapped searched button
  void searchButtonTapped() {}

  // tab options
  List tabOption = [
    ["Recent", const RecentTab()],
    ["Trending", const TrendingTab()],
    ["Top", const TopTab()],
  ];

  // bottom bar navigation
  int _currentBottonIndex = 0;
  void _handleIndexChanged(int? index) {
    setState(() {
      _currentBottonIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabOption.length,
      child: Scaffold(
        backgroundColor: backgroundColor,
        extendBody: true,
        bottomNavigationBar: GlassBox(
          child: MyBottomBar(
            index: _currentBottonIndex,
            onTap: _handleIndexChanged,
          ),
        ),
        body: ListView(
          children: [
            // title + search button
            MyAppBar(
              title: 'My NFT Collections',
              onSearchTap: searchButtonTapped,
            ),

            // tab bar
            SizedBox(
              height: 600,
              child: MyTabBar(
                tabOptions: tabOption,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
