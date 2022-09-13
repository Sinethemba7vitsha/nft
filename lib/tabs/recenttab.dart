import 'package:flutter/material.dart';
import 'package:nft/components/nftcard.dart';

class RecentTab extends StatelessWidget {
  const RecentTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const NftCard(
      imagePath: 'lib/images/apiens_1.png',
    );
  }
}
