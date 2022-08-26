import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: Home()
));

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
      ),
      body: Center(
        child:
        ListTile(
            title: Text('Home',
              style: TextStyle(
                fontSize: 25,
                color: Colors.grey[100],
              ),
            ),
            onTap: () =>  Navigator.of(context).pushNamed('/page1')
        ),
      ),
      );
  }
}

