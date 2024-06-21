import 'package:flutter/material.dart';

import 'login/login.dart';


class MUALocateOptions extends StatelessWidget {
  const MUALocateOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 100.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 50),
              //Image.asset(
              //'assets/images/muasearch2.png',
              // height: 190,
              // width: 250,
              // ),
              Image.asset(
                'assets/images/mua-search.png', // Ubah nama file sesuai
                height: 300,
                width: 300,
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(height: 20),
              Text(
                'Helping You Find Make-Up Artist',
                style: TextStyle(
                  color: Colors.brown[800],
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const Text(
                'Without Looking ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Already have an Account?',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
