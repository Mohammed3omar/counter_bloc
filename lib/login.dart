import 'package:flutter/material.dart';
class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(children: [
              SizedBox(height: 50),
              Image.asset(
                'assets/image/vector.png',
                height: 100,
                width: 100,
              ),
              SizedBox(height: 5),
              Text(
                'Welcome to my app',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text('sign in to continue', style: TextStyle(fontSize: 16)),
              SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.mail,
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 400,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    print('user is signed in');
                  },
                  child: Text('Sign in'),
                  style: ElevatedButton.styleFrom(),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'OR',
                style: TextStyle(color: Colors.black12),
              ),
              SizedBox(height: 3),
              Container(
                width: 400,
                height: 40,
                child: TextButton(
                  onPressed: () {
                    print('user is signed in with Google');
                  },
                  child: Text(
                    'Sign in with Google',
                    style: TextStyle(color: Colors.black38),
                  ),
                ),
              ),
              SizedBox(height: 3),
              Container(
                width: 400,
                height: 40,
                child: TextButton(
                  onPressed: () {
                    print('user is signed in with facebook');
                  },
                  child: Text(
                    'Sign in with facebook',
                    style: TextStyle(color: Colors.black38),
                  ),
                ),
              ),
              Container(
                width: 400,
                height: 40,
                child: TextButton(
                  onPressed: () {
                    print('user forgot the password');
                  },
                  child: Text(
                    'Forget the password?',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
              SizedBox(height: 3),
              Center(
                child: Container(
                  width: 200,
                  height: 40,
                  child: Row(
                    children: [
                      Text('dont have an account?'),
                      TextButton(
                        onPressed: () {
                          print('user want an account');
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}