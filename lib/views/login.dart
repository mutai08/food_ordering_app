import 'package:flutter/material.dart';
import 'package:shopping_app/views/home.dart';
 class LoginScreen extends StatelessWidget {
   const LoginScreen({Key key}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return Padding(
       padding: const EdgeInsets.all(30.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column (
              children: [ 
                const Text(
                  "MarsYetu Login",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextFormField (
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: "Enter your email",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email), 
                ),
              ),
               const SizedBox(
                    height: 25,
                  ),
                  TextFormField (
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: "Enter your password",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock), 
                      suffixIcon: Icon(Icons.remove_red_eye),
                ),
              ),
              const SizedBox(
                    height: 5,
                  ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: (){}, child: const Text(
                    "Forget Password"
                  ))
                ],
              ),
              const SizedBox(
                    height: 25,
                  ),
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  gradient: const LinearGradient(colors: [Colors.pink, Colors.pinkAccent]),
                ),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Home()
                        ));

                  },
                  child: const Text (
                    "LOGIN",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    ),
                  ),
              ),
              const SizedBox(
                    height: 30,
                  ),
              const Icon(Icons.fingerprint, size: 60, color: Colors.teal,),
              const SizedBox(
                    height: 10,
                  ),
              const Divider(
                height: 30,
                color: Colors.black, 
              ),
              const SizedBox(
                    height: 10,
                  ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Dont have an account?",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                  TextButton(onPressed: (){}, child: const Text(
                    "Register Account"
                  ))
                ],
              ),   
            ],
                  ),
          ),
      ),
    );
  }
}

