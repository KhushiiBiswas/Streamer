import 'package:flutter/material.dart';
import 'package:streamer/pages/director.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(
                0.8, 0.0), // 10% of the width, so there are ten blinds.
            colors: <Color>[
              Color(0xff5f0a87),
              Color(0xff28313b)
            ], // red to yellow
            tileMode: TileMode.repeated, // repeats the gradient over the canvas
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                "assets/KHUSHI STREAM LOGO1.png",
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height / 6,
                width: MediaQuery.of(context).size.width / 2,
                fit: BoxFit.scaleDown,
              ),
            ),
            TextField(),
            TextField(),
            Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Director()),
                      );
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.videocam,
                          color: Color(0xff9966cc),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Director",
                          style: TextStyle(
                            color: Color(0xff9966cc),
                          ),
                        )
                      ],
                    )),
                SizedBox(
                  width: 70,
                ),
                TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.account_circle_outlined,
                          color: Color(0xff9966cc),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Participant",
                          style: TextStyle(
                            color: Color(0xff9966cc),
                          ),
                        )
                      ],
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
