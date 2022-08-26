import 'package:flutter/material.dart';
import 'Home.dart';
import 'Reg/SignUp.dart';


class page1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[900],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
              child: Image.asset('assets/grab.jpg')),
          Expanded(
            flex: 1,
            child: Text('Gain total control of your money',
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.amber,
              ),
            ),

          ),
          Expanded(
            flex: 1,
            child: Text('Become your own money manager and make every cent count',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.amber,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()),
                    );
                  },
                  child: Text(''),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white
                  ),
              ),
              ]
          ),
        ],
      ),
    );
  }
}
