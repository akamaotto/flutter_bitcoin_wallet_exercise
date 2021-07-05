import 'package:flutter/material.dart';
import '../constants.dart';

class SmallCard extends StatelessWidget {
  const SmallCard({
    Key? key,
    this.cryptoIcon,
    this.iconBackgroundColor,
    this.growthRateColor,
    this.cryptoAmount = '',
    this.exchangeRate = '',
    this.dollarAmount = '',
    this.growthRate = '',
    this.screenLink = '',
  }) : super(key: key);

  final String? cryptoIcon;
  final Color? iconBackgroundColor;
  final String cryptoAmount;
  final String exchangeRate;
  final String dollarAmount;
  final String growthRate;
  final String screenLink;
  final Color? growthRateColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/$screenLink');
          },
          child: Card(
            elevation: 20,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            shadowColor: backGroundColor,
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                children: [
                  Image.asset(
                    'assets/$cryptoIcon.png',
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                cryptoAmount,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: textColor,
                                ),
                              ),
                              Text(
                                dollarAmount,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: textColor,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                exchangeRate,
                                style: greyTextStyle,
                              ),
                              Text(
                                growthRate,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: growthRateColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
