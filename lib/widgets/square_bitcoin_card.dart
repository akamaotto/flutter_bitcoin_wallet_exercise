import 'package:flutter/material.dart';
import '../constants.dart';

class SquareBitcoinCard extends StatelessWidget {
  const SquareBitcoinCard({
    Key? key,
    this.cryptoIcon = '',
    this.bitcoinButtonText = '',
  }) : super(key: key);
  final String cryptoIcon;
  final String bitcoinButtonText;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      shadowColor: backGroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 53.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/$cryptoIcon.png',
              width: 60,
            ),
            Text(
              bitcoinButtonText,
              style: blackTextStyle,
            )
          ],
        ),
      ),
    );
  }
}
