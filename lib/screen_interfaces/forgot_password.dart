import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: ColorFiltered(
                colorFilter: ColorFilter.mode(Colors.white70.withOpacity(.9), BlendMode.lighten),
              child: Image.asset('assets/leaf-01.png',
              fit: BoxFit.fill,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Center(
                        child: Image.asset(
                          'assets/logo.png',
                          fit: BoxFit.fill,
                          height: 100,
                          width: 250,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Icon(Icons.lock_open, size: 100, color: Colors.black,),
                    const SizedBox(height: 10),
                    const Text('    FORGET\nPASSWORD?',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text("Confirm the email and we'll send the\n                         instructions.",
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    const SizedBox(height: 35,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        cursorColor: Colors.green,
                        keyboardType: TextInputType.emailAddress,
                        style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.email, color: Colors.black,),
                          hintText: 'Enter your Email',
                          contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(
                              color: Colors.black,
                              width: 2.0,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(
                              color: Colors.green,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30,),
                    ElevatedButton(onPressed: (){},
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all(Colors.green),
                        ),
                      child: const Text('Reset Password',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
