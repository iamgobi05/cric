import 'package:cricbuzz05/news.dart';

import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cricbuzz05/main.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class FEATURED extends StatefulWidget {
  @override
  State<FEATURED> createState() => _FEATUREDState();
}

class _FEATUREDState extends State<FEATURED> {
  void initState() {
    super.initState();
    getData();
  }

  String title = "";
  String images = "";
  String title1 = "";
  String images1 = "";
  String title2 = "";
  String images2 = "";
  String title51 = "";
  String title52 = "";
  String title53 = "";
  String images3 = "";
  String title54 = "";
  String title55 = "";
  String title56 = "";
  String title57 = "";
  String title58 = "";
  String images4 = "";
  String title59 = "";
  String images5 = "";
  String title60 = "";
  String title61 = "";
  String images6 = "";
  String title62 = "";
  String title63 = "";
  String images7 = "";
  String title64 = "";
  String title65 = "";
  String title66 = "";
  String images8 = "";
  String title67 = "";
  String title68 = "";
  String title69 = "";
  String images9 = "";
  String title70 = "";
  String title71 = "";
  String title72 = "";
  String title73 = "";
  String title74 = "";
  String title75 = "";
  String title76 = "";
  String title77 = "";

  var slider = [];
  var slider1 = [];
  var text = [];
  var text1 = [];
  var text2 = [];
  var icons = [];
  var icons1 = [];
  var text3 = [];
  var text4 = [];
  var text5 = [];
  var text6 = [];
  var text7 = [];

  Future<void> getData() async {
    var getData = await FirebaseFirestore.instance
        .collection("Cricbuzz05")
        .doc("Cricbuzz05")
        .get();
    title = getData['title'];
    images = getData['image'];
    title1 = getData['sa20'];
    images1 = getData["morgan"];
    title2 = getData['cricbuzzplus'];
    images2 = getData["boult"];
    title51 = getData['tb'];
    title52 = getData['tb1'];
    title53 = getData['reflections'];
    title54 = getData['jb1'];
    title55 = getData['jb2'];
    images3 = getData["jb"];
    title56 = getData['em'];
    title57 = getData['em2'];
    title58 = getData['mh'];
    images4 = getData["mh1"];
    title59 = getData["mh2"];
    images5 = getData["cpl1"];
    title60 = getData["cpl"];
    title61 = getData["cpl2"];
    images6 = getData["az1"];
    title62 = getData["az"];
    title63 = getData["az2"];
    images7 = getData["bigbash1"];
    title64 = getData["bigbash"];
    title65 = getData["bigbash2"];
    title66 = getData["bigbash3"];
    images8 = getData["icc1"];
    title67 = getData["icc"];
    title68 = getData["icc2"];
    title69 = getData["icc3"];
    images9 = getData["asiacup1"];
    title70 = getData["asiacup"];
    title71 = getData["asiacup2"];
    title72 = getData["asiacup3"];
    title73 = getData["ef"];
    title74 = getData["baz"];
    title75 = getData["baz1"];
    title76 = getData["baz2"];
    title77 = getData["top"];
    print(title);

    slider = getData['fb'];
    slider1 = getData['slider'];
    text = getData["md"];
    text1 = getData["md1"];
    text2 = getData["matches"];
    icons = getData["team"];
    icons1 = getData["team1"];
    text3 = getData["score"];
    text4 = getData["tenam"];
    text5 = getData["tenam1"];
    text6 = getData["score1"];
    text7 = getData["result"];

    setState(() {});
  }

  get pageLength => null;
  List data = [
    [
      "2st Match • CPL 2022",
      "TKRW",
      "BRW",
      "114-9 (20)",
      "113-7 (20)",
      "TKR Women won by 1 runs",
      "assets/icons/tkr.png",
      "assets/icons/br.png",
      Colors.amber,
    ],
    [
      "6th Match, Asia Cup  2022",
      "PAK",
      "HK",
      "193-2 (20)",
      "38 (10.4)",
      "Pakistan Won by 155 runs",
      "assets/icons/pak.png",
      "assets/icons/hk.png",
      Colors.pink,
    ],
    [
      "4th Match, Asia Cup  2022",
      "IND",
      "HK",
      "192-2 (20)",
      "152/5 (20)",
      "India Won by 40 runs",
      "assets/icons/ind.png",
      "assets/icons/hk.png",
      Colors.brown
    ],
    [
      "1st Match • CPL 2022",
      "JT",
      "SNP",
      "183-2 (20)",
      "136-8 (20)",
      "Jamaica Tallawahs won by 47 runs",
      "assets/icons/jt.png",
      "assets/icons/skn.png",
      Colors.greenAccent
    ],
    [
      "2st Match • CPL 2022",
      "SLK",
      "TKR",
      "143-9 (20)",
      "148-7 (19.2)",
      "Trinbago Knight Riders won by 3 wkts",
      "assets/icons/slk.png",
      "assets/icons/tkr.png",
      Colors.blue,
    ],
    [
      "2st Test • Manchester",
      "ENG",
      "RSA",
      "415-9",
      "151 & 179",
      "England won by an innings and 12 runs",
      "assets/icons/eng.png",
      "assets/icons/sa.png",
      Colors.amber,
    ],
    [
      "2st ODI • Townsville",
      "ZIM",
      "AUS",
      "96 (27.5)",
      "100-2 (14.4)",
      "Australia won by 8 wkts",
      "assets/icons/aus.png",
      "assets/icons/zim.png",
      Colors.amber,
    ]
  ];
  final imgList = [
    "assets/images/pakind.jpg",
    "assets/images/saeng.jpg",
    "assets/images/cplw.jpg",
    "assets/images/tr1.jpg",
    "assets/images/rahim1.jpg",
    "assets/images/jadja.jpg",
  ];

  final List<String> news = [
    'ASIA CUP Preview',
    'ENG vs SA,Third test Preview',
    'CPL2022 Womens final Match Preview',
    'THE HUNDERED title winners',
    "Mushfiqur Rahim retires from T20",
    "Dravid on Jadeja Injury",
  ];
  final List<String> imgList1 = [
    "assets/images/indhk.jpg",
    "assets/images/trf.jpg",
    "assets/images/tkrw.jpg",
    "assets/images/ovelw.jpg",
    "assets/images/ben.jpg",
    "assets/images/sa20.jpg",
  ];
  final List<String> trend = [
    'ASIA CUP PREVIW',
    'THE HUNDERED',
    'CPL2022',
    "Hundred Women",
    " T20 World Cup Squad",
    "SA T20",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                        child: Text(
                          "MATCHES",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
                    height: 225,
                    width: 400,
                    child: Swiper(
                        pagination: SwiperPagination(
                          alignment: Alignment.bottomCenter,
                          builder: new DotSwiperPaginationBuilder(
                              color: Colors.grey,
                              activeColor: Color(0xff808080)),
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            child: Container(
                              height: 190,
                              width: 400,
                              color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 5, left: 10),
                                    child: Text(
                                      (text2[index]).toString(),
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 5, left: 10),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 25,
                                          width: 25,
                                          child: Image.network(
                                            icons[index].toString(),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                            width: 50,
                                            child: Text(
                                              (text4[index]).toString(),
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                        SizedBox(
                                          width: 100,
                                        ),
                                        Container(
                                            width: 100,
                                            child: Text(
                                              (text3[index]).toString(),
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 5, left: 10),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 25,
                                          width: 25,
                                          child: Image.network(
                                            icons1[index].toString(),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                            width: 50,
                                            child: Text(
                                              (text5[index]).toString(),
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                        SizedBox(
                                          width: 100,
                                          height: 20,
                                        ),
                                        Container(
                                            width: 100,
                                            child: Text(
                                              (text6[index]).toString(),
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Container(
                                    height: 20,
                                    margin: EdgeInsets.only(top: 2, left: 10),
                                    child: Text(
                                      (text7[index]).toString(),
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.brown),
                                      // style: TextStyle(color: data[index][8]),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 18),
                                    child: Container(
                                      color: Colors.grey[300],
                                      height: 50,
                                      padding: EdgeInsets.only(left: 120),
                                      child: Row(
                                        children: [
                                          Text(
                                            "POINTS TABLE",
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                color: Colors.grey[700]),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            "SCHEDULE",
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                color: Colors.grey[700]),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        itemCount: data.length,
                        viewportFraction: 0.9,
                        scale: 0.9,
                        indicatorLayout: PageIndicatorLayout.SCALE),
                  ),
                  SizedBox(
                    height: 10.0,
                    width: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: Row(
                      children: [
                        Text(
                          "Featured Videos",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 280,
                    width: 380,
                    child: Swiper(
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            child: Card(
                              child: Stack(
                                children: [
                                  Container(
                                    height: 400,
                                    width: 400,
                                    color: Colors.white,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height: 170,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Image.network(
                                            slider[index].toString(),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Container(
                                            margin: EdgeInsets.only(
                                                left: 5, top: 5),
                                            height: 30,
                                            child: Text(
                                              (text[index]).toString(),
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )),
                                        Container(
                                          margin:
                                              EdgeInsets.only(top: 5, left: 5),
                                          child: Text("1 day ago"),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        itemCount: imgList.length,
                        viewportFraction: 0.8,
                        scale: 1,
                        indicatorLayout: PageIndicatorLayout.SCALE),
                  ),
                  SizedBox(
                    height: 15.0,
                    width: 25.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              (title),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 290,
                    width: 380,
                    child: Swiper(
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            child: Container(
                              height: 400,
                              width: 400,
                              color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 170,
                                    width: MediaQuery.of(context).size.width,
                                    child: Image.network(
                                      slider1[index].toString(),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: 5, top: 5),
                                      height: 30,
                                      child: Text(
                                        (text1[index]).toString(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )),
                                  Container(
                                    margin: EdgeInsets.only(top: 10, left: 5),
                                    child: Text("Mon 22, Aug 2022"),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        itemCount: imgList.length,
                        viewportFraction: 0.8,
                        scale: 1,
                        indicatorLayout: PageIndicatorLayout.SCALE),
                  ),
                  SizedBox(
                    height: 25.0,
                    width: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Row(
                      children: [
                        Text(
                          title77,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Column(
                    children: [
                      Card(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 15.0,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 35.0,
                                  width: 15.0,
                                ),
                                Text(
                                  title74,
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => News()));
                              },
                              child: Container(
                                height: 300.0,
                                width: 450.0,
                                child: Image.network(images.toString()),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 275, 10, 10),
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      (title75),
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
                                  const EdgeInsets.fromLTRB(10, 338, 12, 12),
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      (title76),
                                      style: TextStyle(
                                        color: Colors.grey,
                                        height: 1.5,
                                        wordSpacing: 1,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 1.0,
                  ),
                  Container(
                    height: 50.0,
                    child: Card(
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 18.0,
                                width: 10.0,
                              ),
                              Text(
                                (title73),
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 15.0,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 15.0,
                                  height: 35.0,
                                ),
                                Text(
                                  (title70),
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                  ),
                                )
                              ],
                            ),
                            Container(
                              height: 285.0,
                              width: 450.0,
                              child: Image.network(images9.toString()),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 265, 10, 10),
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      (title71),
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
                                  const EdgeInsets.fromLTRB(10, 330, 12, 12),
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      title72,
                                      style: TextStyle(
                                        color: Colors.grey,
                                        height: 1.5,
                                        wordSpacing: 1,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 15.0,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 15.0,
                                  height: 35.0,
                                ),
                                Text(
                                  (title67),
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                  ),
                                )
                              ],
                            ),
                            Container(
                              height: 310.0,
                              width: 450.0,
                              child: Image.network(images8.toString()),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 290, 10, 10),
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      (title68),
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
                                  const EdgeInsets.fromLTRB(10, 360, 12, 12),
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      title69,
                                      style: TextStyle(
                                        color: Colors.grey,
                                        height: 1.5,
                                        wordSpacing: 1,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 15.0,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 15.0,
                                  height: 35.0,
                                ),
                                Text(
                                  (title64),
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                  ),
                                )
                              ],
                            ),
                            Container(
                                height: 300.0,
                                width: 450.0,
                                child: Image.network(images7.toString())),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 270, 10, 10),
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      (title65),
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
                                  const EdgeInsets.fromLTRB(10, 310, 12, 12),
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      (title66),
                                      style: TextStyle(
                                        color: Colors.grey,
                                        height: 1.5,
                                        wordSpacing: 1,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Card(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 15.0,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text(
                                    (title62),
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              height: 140.0,
                              width: 150.0,
                              child: Image.network(images6.toString()),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(150, 25, 12, 12),
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      (title63),
                                      style: TextStyle(
                                          height: 1.5,
                                          wordSpacing: 2,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Card(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 10.0,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text(
                                    (title60),
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                              height: 120.0,
                              width: 150.0,
                              child: Image.network(images5.toString()),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(160, 25, 12, 12),
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      (title61),
                                      style: TextStyle(
                                          height: 1.5,
                                          wordSpacing: 2,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Card(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 10.0,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text(
                                    (title58),
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                              height: 120.0,
                              width: 150.0,
                              child: Image.network(images4.toString()),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(160, 25, 12, 12),
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      (title59),
                                      style: TextStyle(
                                          height: 1.5,
                                          wordSpacing: 2,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Card(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 15.0,
                                  height: 35.0,
                                ),
                                Text(
                                  (title1),
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                  ),
                                )
                              ],
                            ),
                            Container(
                              height: 300.0,
                              width: 450.0,
                              child: Image.network(images1.toString()),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 270, 10, 10),
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      title56,
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
                                  const EdgeInsets.fromLTRB(10, 340, 12, 12),
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      (title57),
                                      style: TextStyle(
                                        color: Colors.grey,
                                        height: 1.5,
                                        wordSpacing: 1,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Card(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 15.0,
                                  height: 35.0,
                                ),
                                Text(
                                  (title53),
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                  ),
                                )
                              ],
                            ),
                            Container(
                              height: 335.0,
                              width: 450.0,
                              child: Image.network(images3.toString()),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 310, 10, 10),
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      (title54),
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
                                  const EdgeInsets.fromLTRB(10, 380, 12, 12),
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      (title55),
                                      style: TextStyle(
                                        color: Colors.grey,
                                        height: 1.5,
                                        wordSpacing: 1,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 15.0,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 15.0,
                                  height: 35.0,
                                ),
                                Text(
                                  (title2),
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                  ),
                                )
                              ],
                            ),
                            Container(
                              height: 300.0,
                              width: 450.0,
                              child: Image.network(images2.toString()),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 275, 10, 10),
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      (title51),
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
                                  const EdgeInsets.fromLTRB(10, 355, 12, 12),
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      (title52),
                                      style: TextStyle(
                                        color: Colors.grey,
                                        height: 1.5,
                                        wordSpacing: 1,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

//Swiper imageSlider(context) {
//return new Swiper(
// itemBuilder: (BuildContext context, int index) {
//  return new Image.asset(
//   "assets/images/ce.jpg",
//  );
// },
// itemCount: 8,
//  viewportFraction: 0.9,
// scale: 0.8,
// );
}
