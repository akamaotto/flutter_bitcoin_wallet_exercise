import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/big_crypto_card.dart';
import '../widgets/small_card.dart';
import '../constants.dart';

class Wallets extends StatelessWidget {
  const Wallets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: iconColor),
        leading: const Icon(Icons.sort),
        title: const Text(
          'Wallets',
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w600,
            fontSize: 26,
          ),
        ),
        centerTitle: true,
        actions: const [
          Icon(Icons.account_balance_wallet_rounded),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
          )
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
              flex: 8,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  BigCryptoCard(),
                  BigBitcoinCard(),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Sorted by higher %',
                    style: TextStyle(color: iconColor, fontSize: 16),
                  ),
                  Row(
                    children: const [
                      Text(
                        '24H',
                        style: TextStyle(color: iconColor, fontSize: 16),
                      ),
                      Icon(Icons.keyboard_arrow_down),
                    ],
                  ),
                ],
              ),
            ),
            const SmallCard(
              iconBackgroundColor: Colors.red,
              cryptoIcon: 'bitcoin',
              cryptoAmount: '3.529020 BTC',
              dollarAmount: '\$19.153',
              exchangeRate: '\$5.411',
              growthRate: '+4.32%',
              growthRateColor: greenColor,
              screenLink: 'bitcoin_wallet',
            ),
            const SmallCard(
              iconBackgroundColor: greenColor,
              cryptoIcon: 'eth',
              cryptoAmount: '12.633681 ETH',
              dollarAmount: '\$4.822',
              exchangeRate: '\$401',
              growthRate: '+3.97%',
              growthRateColor: greenColor,
            ),
            const SmallCard(
              iconBackgroundColor: greenColor,
              cryptoIcon: 'xrp',
              cryptoAmount: '1911.633681 XRP',
              dollarAmount: '\$859',
              exchangeRate: '\$0.45',
              growthRate: '- 13.55%',
              growthRateColor: Colors.red,
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
