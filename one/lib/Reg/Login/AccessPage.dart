import 'package:flutter/material.dart';
import 'LogIn.dart';


class Access extends StatelessWidget {
  const Access({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15.0, 0.0, 10.0, 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('assets/sentemail.png'),
            const Text('Your email is on the way',
            style: TextStyle(
              fontSize: 30.0,
            ),),
            const Text('Check your email test@test.com and follow the instructions to reset your password',
            style: TextStyle(
              fontSize: 20.0
            ),),
            FloatingActionButton.extended(
                backgroundColor: Colors.purple[500],
                onPressed: (){
                  Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => LogIn()));
                },
                label: Text('Back to Login',
                style: TextStyle(
                  fontSize: 25.0
                ),),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
              ),
            ),
          ],
        ),
      ),
    );
  }
}
