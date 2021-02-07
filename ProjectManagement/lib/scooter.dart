import 'package:flutter/material.dart';

class EscooterApp extends StatefulWidget {
  @override
  _EscooterAppState createState() => _EscooterAppState();
}

class _EscooterAppState extends State<EscooterApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color.fromRGBO(244, 38, 73, 1),
          body: Stack(
            children: [
              DetailPage(),
              ProductPage(),
            ],
          )),
    );
  }
}

//Page 1 where is the Product Page
class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromRGBO(246, 246, 246, 1),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20.0),
        child: Column(
          children: [
            _TopBar(),
            SizedBox(height: 40),
            _Escooter(),
            SizedBox(height: 30),
            _ProductDescription(),
            SizedBox(height: 17),
            _PriceBar(),
          ],
        ),
      ),
    );
  }
}

//Page 2 where is the Detail Page of the Product
class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Color.fromRGBO(244, 38, 73, 1),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            child: Center(
              child: Text(
                'SHOW DETAILS',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _PriceBar extends StatelessWidget {
  const _PriceBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Total price',
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 0.57),
                  fontSize: 10,
                  fontFamily: 'Poppins',
                ),
              ),
              Text(
                '499.-',
                style: TextStyle(
                  color: Color.fromRGBO(244, 38, 73, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(244, 38, 73, 1),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'BUY NOW',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProductDescription extends StatelessWidget {
  const _ProductDescription({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'XIAOMI M365 PRO',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            fontFamily: 'Poppins',
          ),
        ),
        SizedBox(height: 5),
        Text(
          'Intuitive and easy-to-learn 30km long-range battery life Double braking system Portable folding design',
          style: TextStyle(
            fontSize: 12,
            color: Color.fromRGBO(0, 0, 0, 0.57),
            fontFamily: 'Poppins',
          ),
        ),
      ],
    );
  }
}

class _Escooter extends StatelessWidget {
  const _Escooter({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 330,
          child: Image.asset('assets/bild.png'),
        ),
        Column(
          children: [
            Container(
              height: 79,
              width: 73,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(
                    width: 2,
                    color: Color.fromRGBO(0, 0, 0, 0.45),
                  )),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        '30',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        'km/h',
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 17),
            Container(
              height: 79,
              width: 73,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(
                    width: 2,
                    color: Color.fromRGBO(0, 0, 0, 0.45),
                  )),
              child: Center(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      children: [
                        Text(
                          '28',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Text(
                          'Miles range',
                          style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _TopBar extends StatelessWidget {
  const _TopBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/menu.png'),
          Text(
            'Electric Scooter',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontFamily: 'Poppins',
            ),
          ),
          Stack(
            children: [
              Icon(
                Icons.shopping_cart,
                size: 30,
              ),
              Positioned(
                right: 0,
                child: Container(
                  height: 14,
                  width: 14,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(244, 38, 73, 1),
                  ),
                  child: Center(
                    child: Text(
                      '1',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
