import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackPractice extends StatelessWidget {
  const StackPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: 180,
                  width: 180,
                  color: Colors.green,
                ),
                Positioned(
                  top: 50,
                  left: 10,
                  child: Container(

                    height: 100,
                    width: 100,
                    color: Colors.red,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
