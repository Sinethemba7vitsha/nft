import 'package:flutter/material.dart';
import 'package:nft/components/nftcard.dart';

class TrendingTab extends StatelessWidget {
  const TrendingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const NftCard(
      imagePath: 'lib/images/apiens_3.png',
    );
    
  }
}
