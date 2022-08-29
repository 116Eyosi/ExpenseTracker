import 'package:flutter/material.dart';
import 'SignUp.dart';
import 'ForgotPassword.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
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
                MaterialPageRoute(builder: (context)=>SignUp()));
              },
                  icon: Icon(Icons.arrow_back_outlined)),

              Text('Login',
              style: TextStyle(
                fontSize: 25.0
              ),)
            ],
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),),
              filled: true,
              hintStyle: TextStyle(color: Colors.grey[500]),
              hintText: "Email",
              fillColor: Colors.white70),),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              filled: true,
              hintStyle: TextStyle(color: Colors.grey[500]),
              hintText: "Password",
              fillColor: Colors.white70,
              suffixIcon: Icon(Icons.visibility ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
            child: FloatingActionButton.extended(
              backgroundColor: Colors.purple[700],
              elevation: 0.0,
              onPressed: (){},
              label: Text('Log In',
                style: TextStyle(
                    fontSize: 30.0
                ),),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
              ),
            ),
          ),
          TextButton(onPressed: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context)=> ForgotPass())
            );
          },
              child: Text('Forgot Password?',
              style: TextStyle(
                color: Colors.purple[500],
              ),)
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(70.0,0.0,70.0,0.0),
            child: Row(
              children: [
                Text('Don’t have an account yet?'),
                TextButton(onPressed: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> SignUp()));
                },
                    child: Text(' Sign Up'))
              ],
            ),
          )

        ],
      ),
    );
  }
}
