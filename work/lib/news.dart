import 'package:cricbuzz05/FEATURED.dart';
import 'package:flutter/material.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back_ios),

            onPressed: (
                ) {
              Navigator.pop(context);
            },),
          actions: [IconButton(icon: Icon(Icons.logout),

            onPressed: (
                ) {
              Navigator.pop(context);
            },),],

          title: Text("News"),

        ),

        body: Column(
          children: [
            Container(
              child: Image.asset("assets/images/baz.jpg"),
            ),
            Padding(
              padding:
              const EdgeInsets.fromLTRB(10, 15, 10, 10),
              child: Column(
                children: [
                  Container(
                    child: Text(
                      "'Bazball' bubble could burst in Manchester "
                      ,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        height: 1.5,

                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.fromLTRB(10, 30, 12, 12),
              child: Column(
                children: [
                  Container(
                    child: Text(
                      "You can take the New Zealander out of New Zealand,"
                          " but good luck getting New Zealand out of the New Zelander. So there "
                          "was no suprise that Brendon McCullum,as he strode to the middle at Old Trafford"
                          "on Tuesday to have a look at the pitch under preparation for Thursday's "
                          "second Test, wore head-to-toe black."
                      ,
                      style: TextStyle(
                        color: Colors.black,
                        height: 1.5,
                        wordSpacing: 1,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),





      ),
    );

  }
}