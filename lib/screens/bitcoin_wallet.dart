import 'package:bitcoin_wallet_challenge/widgets/square_bitcoin_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/big_crypto_card.dart';
import '../widgets/chart_card.dart';
import '../constants.dart';

class BitcoinWallet extends StatelessWidget {
  const BitcoinWallet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: iconColor),
        title: const Text(
          'Bitcoin Wallet',
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w600,
            fontSize: 26,
          ),
        ),
        centerTitle: true,
        actions: const [
          Icon(Icons.more_vert),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
          )
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const Expanded(
              flex: 8,
              child: BigBitcoinCard(),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Day',
                      style: TextStyle(color: iconColor, fontSize: 16),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        ' Week ',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(iconColor),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Month',
                      style: TextStyle(color: iconColor, fontSize: 16),
                    ),
                    const Text(
                      'Year',
                      style: TextStyle(color: iconColor, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            const Expanded(
              flex: 8,
              child: ChartCard(),
            ),
            Expanded(
              flex: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      bottom: 20,
                      left: 5,
                    ),
                    child: const SquareBitcoinCard(
                      cryptoIcon: 'bitcoin-blue',
                      bitcoinButtonText: 'Buy BTC',
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      right: 5,
                      bottom: 20,
                    ),
                    child: const SquareBitcoinCard(
                      cryptoIcon: 'bitcoin-pink',
                      bitcoinButtonText: 'Sell BTC',
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: textColor,
        unselectedItemColor: iconColor,
      ),
    );
  }
}
