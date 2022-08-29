import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:one/page1.dart';
import 'LogIn.dart';



class SignUp extends StatefulWidget {

  @override
  State<SignUp> createState() => _SignUpState();
}

  bool isChecked = false;
class _SignUpState extends State<SignUp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Row(
          children: [
            IconButton(
            icon: const Icon(Icons.arrow_back_outlined),
    onPressed: () {
      Navigator.pop(context,
            MaterialPageRoute(builder: (context) => page1()),
      );
    }),
          Center(
            child: Text('Sign Up',
            style: TextStyle(
              fontSize: 25.0,
            ),
            ),
          )
        ],),
          Container(
            padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "Name",
                  fillColor: Colors.white70),
            )
          ),
          Container(
              padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "Email",
                    fillColor: Colors.white70),
              )
          ),
          Container(
              padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "Password",
                    fillColor: Colors.white70,
                  suffixIcon: Icon(Icons.visibility ),
                ),
              )
          ),
            Row(
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  }),
                Expanded(
                  child: Text('By signing up, you agree to the Terms of Service and Privacy Policy',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                  ),
                ),
              ],
            ),
      Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        child:
        FloatingActionButton.extended(
          backgroundColor: Colors.purple[800],
          elevation: 0.0,
          onPressed: (){},
          label: Text('Sign Up',
          style: TextStyle(
            fontSize: 30.0
          ),),
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))
          ),
        ),
      ),
          Center(
            child: Text('or with',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
            child:
            FloatingActionButton.extended(
              backgroundColor: Colors.white,
              elevation: 0.0,
              onPressed: (){},
              label:
              Text('Sign Up with Google ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0
                ),),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(70.0, 0.0, 10.0, 0.0),
            child: Row(
              children: [
                Text('Already have an account?',
                style: TextStyle(
                  fontSize: 15.0,
                ),),
                TextButton(onPressed: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LogIn()),
                  );
                },
                    child: Text('Login',
                      style: TextStyle(
                        fontSize: 15.0
                      ),
                    ))

              ],
            ),
          )
        ]
      )
    );
  }
}
