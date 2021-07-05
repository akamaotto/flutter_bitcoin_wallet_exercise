import 'package:flutter/material.dart';
import 'screens/wallets.dart';
import 'screens/bitcoin_wallet.dart';

void main() {
  runApp(const BitCoinWallet());
}

class BitCoinWallet extends StatelessWidget {
  const BitCoinWallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Wallets(),
        '/bitcoin_wallet': (context) => const BitcoinWallet(),
      },
    );
  }
}
