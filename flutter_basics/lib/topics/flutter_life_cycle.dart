import 'package:flutter/material.dart';

class FlutterLifeCycle extends StatefulWidget {

    FlutterLifeCycle({super.key}){
     print('1. This is constructor');
   }

   @override
   State<FlutterLifeCycle> createState() {
     print('2. This is Create state');
     return _FlutterLifeCycleState();
   }
}

class _FlutterLifeCycleState extends State<FlutterLifeCycle> {
  int number = 5 ;

  @override
  void initState() {
    print('3. This is initState');
    super.initState();
  }
  @override
  void deactivate() {
    super.deactivate();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter app'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              number.toString(),
              style: TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        number++;
                        print(number);
                      });

                    },
                    child: Text(
                      '+',
                      style: TextStyle(fontSize: 35),
                    )),
                ElevatedButton(
                    onPressed: () {

                      setState(() {
                        number--;
                        print(number);
                      });

                    },
                    child: Text('-', style: TextStyle(fontSize: 35)))
              ],
            )
          ],
        ),
      ),
    );
  }
}