import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              TextField(),
              TextField(),
              TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [Icon(Icons.videocam), Text("Director")],
                  )),
              TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(Icons.account_circle_outlined),
                      Text("Participant")
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
