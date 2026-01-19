import 'package:flutter/material.dart';

class BasicAnimation extends StatefulWidget {
  const BasicAnimation({super.key});

  @override
  State<BasicAnimation> createState() => _BasicAnimationState();
}

class _BasicAnimationState extends State<BasicAnimation> {
  bool NonAniselected = false;
  bool selected = false;
  bool showMessage = false;
  bool isLogin = false;
  bool showPanel = false;
  int cartCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Animation')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                height: selected ? 140 : 110,
                decoration: BoxDecoration(
                  color: selected ? Colors.green : Colors.grey,
                  borderRadius: BorderRadius.circular(12),
                ),
                alignment: Alignment.center,
                child: Text('Product card'),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                setState(() {
                  NonAniselected = !NonAniselected;
                });
              },
              child: Container(
                height: NonAniselected ? 140 : 110,
                decoration: BoxDecoration(
                  color: NonAniselected ? Colors.green : Colors.grey,
                  borderRadius: BorderRadius.circular(12),
                ),
                alignment: Alignment.center,
                child: Text('Product card'),
              ),
            ),

            SizedBox(height: 50),
            Divider(),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  showMessage = !showMessage;
                });

                Future.delayed(Duration(seconds: 3), () {
                  setState(() {
                    showMessage = false;
                  });
                });
              },
              child: Text('Add to cart'),
            ),
            AnimatedOpacity(
              opacity: showMessage ? 1 : 0,
              duration: Duration(milliseconds: 700),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  elevation: 6,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 13,
                    ),
                    child: Text(
                      'Added to cart',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Cart: '),
                AnimatedSwitcher(
                  duration: Duration(milliseconds: 1000),
                  key: ValueKey(cartCount),
                  child: Text('$cartCount', style: TextStyle(fontSize: 24)),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      cartCount++;
                    });
                  },
                  icon: Icon(Icons.add),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isLogin = !isLogin;
                });
              },
              child: Text('Login'),
            ),

            SizedBox(height: 30),

            SizedBox(
              height: 200,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          showPanel = !showPanel;
                        });

                        Future.delayed(Duration(seconds: 3), () {
                          setState(() {
                            showPanel = false;
                          });
                        });
                      },
                      child: Text('Toggle bottom'),
                    ),
                  ),

                  AnimatedPositioned(
                    duration: Duration(milliseconds: 800),
                    bottom: showPanel ? 0 : -120,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 120,
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child: Text('Bottom panel'),
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
