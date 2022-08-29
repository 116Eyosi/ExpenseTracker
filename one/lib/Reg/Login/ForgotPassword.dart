import 'package:flutter/material.dart';
import 'LogIn.dart';
import 'AccessPage.dart';
class ForgotPass extends StatefulWidget {
  const ForgotPass({Key? key}) : super(key: key);

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              IconButton(onPressed: (){
                Navigator.pop(context,
                  MaterialPageRoute(builder: (context)=> LogIn())
                );
              },
                  icon: Icon(Icons.arrow_back_outlined)),
              const Text('Forgot Password',
              style: TextStyle(
                fontSize: 25.0,
              ),),
            ],
          ),
          const Text('Don’t worry.\nEnter your email and we’ll send you a link to reset your password.',
          style: TextStyle(
            fontSize: 30.0
          ),),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),),
                filled: true,
                hintStyle: TextStyle(color: Colors.grey[500]),
                hintText: "Email",
                fillColor: Colors.white70),),
          FloatingActionButton.extended(
              backgroundColor: Colors.purple[800],
              elevation: 0.0,
              onPressed: () {
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => Access())
                );
              },
              label: Text('Continue',
              style: TextStyle(
                fontSize: 30.0
              ),),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))
    ),
          )
        ],
      ),
    );
  }
}
