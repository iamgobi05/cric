import 'package:cricbuzz05/CRICBUZZ PLUS.dart';
import 'package:cricbuzz05/FEATURED.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Cricbuzzdemo",
      home: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color.fromRGBO(29, 224, 139, 10.0),
              actions: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  height: 80.0,
                  width: 150.0,
                  child: Text(
                    "cricbuzz",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0),
                  ),
                ),
                SizedBox(
                  width: 75.0,
                ),
                IconButton(
                  onPressed: () {
                    debugPrint("Account");
                  },
                  icon: Icon(Icons.account_circle_outlined),
                )
              ],
              bottom: TabBar(
                indicatorColor: Colors.white,
                tabs: [
                  Tab(
                    text: "FEATURED",
                  ),
                  Tab(
                    text: "CRICBUZZ PLUS",
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: [FEATURED(), CRICBUZZPLUS()],
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.sports_cricket_outlined),
                  label: "Matches",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.slow_motion_video_sharp),
                  label: "videos",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.newspaper_outlined),
                  label: "News",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.more_vert_sharp),
                  label: "More",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
