import 'package:flutter/material.dart';

class WidgetsPractice extends StatelessWidget {
  const WidgetsPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widgets Practice'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: 11,
        itemBuilder: (context, index){
          return Card(
            child: ListTile(
              leading: Text('Rudra'),
              trailing: Icon(Icons.remove),
            ),
          );
        },
      ),
    );
  }
}
