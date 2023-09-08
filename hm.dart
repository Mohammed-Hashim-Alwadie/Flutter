import 'package:flutter/material.dart';

class HomeWork55 extends StatelessWidget {
  const HomeWork55({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        color: Colors.white,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.list_rounded,
                    color: Colors.grey,
                    size: 30,
                  ),
                ),
                Text(
                  'Layouts',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.cloud_outlined,
                    color: Colors.grey,
                    size: 30,
                  ),
                ),
              ],
            ),
            Container(
              height: 250,
              margin: EdgeInsets.all(5),
              child: Image.asset('images/image.jpg'),
            ),
            Container(
                margin: EdgeInsets.only(left: 22),
                alignment: Alignment.topLeft,
                child: Text(
                  'My Birthday',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 42),
                )),
            Divider(),
            Container(
                margin: EdgeInsets.only(left: 22),
                alignment: Alignment.topLeft,
                child: Text(
                  'It\'s going to be a great birthday. We are going out for dinner at my favorite place, then watch a movie after we go to the gelateria for ice cream and espresso',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                )),
            Divider(),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Icon(
                    Icons.sunny,
                    color: Colors.amber,
                    size: 30,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '81° Clear',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.orange),
                    ),
                    Text(
                      '4500 San Alpho Dive, Dallas, TX United States',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                    )
                  ],
                )
              ],
            ),
            Divider(),
            Container(
                margin: EdgeInsets.only(left: 22, right: 22),
                height: 110,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      crossAxisSpacing: 9,
                      mainAxisSpacing: 9,
                      mainAxisExtent: 42),
                  itemBuilder: (context, index) {
                    return Container(height: 55, child: card('Gift'));
                  },
                  itemCount: 7,
                )),
            Divider(),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('images/food1.jpeg'),
                    ),SizedBox(width: 12,),
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('images/food2.webp'),
                    ),SizedBox(width: 12,),
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('images/food3.jpeg'),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Column(
                    children: [
                      Icon(Icons.cake),
                      Icon(Icons.star_border),
                      Icon(Icons.music_note_rounded),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }

  Container card(String text) {
    return Container(
      // height: 10,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black)),
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.wallet_giftcard_sharp,
            color: Colors.blue,
          ),
        ),
        Text(text)
      ]),
    );
  }
}
