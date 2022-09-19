import 'package:basic_state_management/pages/theme.dart';
import 'package:flutter/material.dart';

class Shibnobi extends StatefulWidget {
  const Shibnobi({Key? key}) : super(key: key);

  @override
  State<Shibnobi> createState() => _ShibnobiState();
}

class _ShibnobiState extends State<Shibnobi> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    Widget Header(
      String ImageHeader,
      String TittleValue1,
      String TittleValue2,
      String SubTittleValue,
    ) {
      return Padding(
        padding: const EdgeInsets.only(
          top: 50,
          left: 30,
          right: 30,
        ),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                ImageHeader,
                width: 175,
                height: 221,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  TittleValue1,
                  style: Tittle1,
                ),
                SizedBox(width: 5),
                Text(
                  TittleValue2,
                  style: Tittle2,
                ),
              ],
            ),
            SizedBox(height: 15),
            Text(
              SubTittleValue,
              style: SubTittle,
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      );
    }

    Widget Main(
      int Index,
      String Check,
      String Coins,
      String SubCoins,
      String Prices,
    ) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = Index;
          });
        },
        child: Container(
          width: 316,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(39),
            border: Border.all(
              color: selectedIndex == Index
                  ? Color(0xff3F6DF6)
                  : Color(0xffD9DEEA),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              right: 20,
              bottom: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: selectedIndex == Index
                      ? Image.asset(
                          Check,
                          width: 26,
                          height: 26,
                        )
                      : SizedBox(width: 26),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Coins,
                        style: Coin,
                      ),
                      Text(
                        SubCoins,
                        style: SubCoin,
                      ),
                    ],
                  ),
                ),
                Text(
                  Prices,
                  style: Price,
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget Footer(
      String TextValue,
    ) {
      return Container(
        width: 295,
        height: 55,
        child: TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(17),
            ),
            backgroundColor: Color(
              0xff3F6DF6,
            ),
          ),
          onPressed: () {
            print('Success');
          },
          child: Text(
            TextValue,
            style: Button,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xff37394D),
      body: Column(
        children: [
          Header(
            'assets/shibnobi.png',
            'Shibnobi',
            'Inc',
            'Proudly the leading platform in Innovation, Transparency & Trust in the Crypto world.',
          ),
          SizedBox(height: 30),
          Main(
            0,
            'assets/check.png',
            'BSC',
            'Good for starting Up',
            '\$50',
          ),
          SizedBox(height: 15),
          Main(
            1,
            'assets/check.png',
            'ETH',
            'Focusing In building',
            '\$100',
          ),
          SizedBox(height: 15),
          Main(
            2,
            'assets/check.png',
            'MATIC',
            'Standy Company',
            '\$150',
          ),
          SizedBox(height: 40),
          Footer('Buy Now'),
        ],
      ),
    );
  }
}
