import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Color> colors = [Colors.red, Colors.green, Colors.blue];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250.0),
              child: Container(
                height: 50,
                child: Image.asset('assets/loginhead.png'),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 200.0),
              child: Text(
                "BOOK APP",
                style: TextStyle(
                  fontSize: 33,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            PageView.builder(
              itemCount: colors.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  color: colors[index],
                  child: Center(
                    child: Text(
                      'Container ${index + 1}',
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
                    ),
                  ),
                );
              },
            ),
            Expanded(
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
