import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 170.0,
                  height: 200.0,
                  margin: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color(0xFF1D1E33),
                  ),
                ),
                Container(
                  width: 170.0,
                  height: 200.0,
                  margin: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
            Container(
              width: 370.0,
              height: 150.0,
              margin: EdgeInsets.symmetric(vertical: 10.0),
              decoration: BoxDecoration(
                  color: const Color(0xFF1D1E33),
                  borderRadius: BorderRadius.circular(10.0)),
            ),
            Row(
              children: [
                Container(
                  width: 170.0,
                  height: 200.0,
                  margin: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color(0xFF1D1E33),
                  ),
                ),
                Container(
                  width: 170.0,
                  height: 200.0,
                  margin: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
