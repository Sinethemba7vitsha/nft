import 'package:flutter/material.dart';
import 'package:nft/components/nftcard.dart';

class TopTab extends StatelessWidget {
  const TopTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const NftCard(
      imagePath: 'lib/images/apiens_2.png',
    );
  
  }
}
