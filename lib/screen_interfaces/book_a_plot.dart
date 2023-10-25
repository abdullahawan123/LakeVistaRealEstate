import 'package:flutter/material.dart';
import 'package:lakevistaapp/screen_interfaces/form_screen.dart';

class BookAPlot extends StatelessWidget {
  const BookAPlot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(Colors.white.withOpacity(.9), BlendMode.lighten),
              child: Image.asset(
                'assets/leaf-01.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 65,),
                  Center(
                    child: Image.asset(
                      'assets/logo.png',
                      fit: BoxFit.fill,
                      height: 100,
                      width: 250,
                    ),
                  ),
                  const SizedBox(height: 80,),
                  const Text(
                    'BOOK A PLOT!',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(height: 45),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, right: 50),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const FormScreen(sizeOfPlot: '5 MARLA',)));
                      },
                      child: Container(
                        height: 45,
                        width: 210,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFF01321c),
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Center(
                          child: Text(
                            '5 MARLA',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, right: 50),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const FormScreen(sizeOfPlot: '7 MARLA',)));
                      },
                      child: Container(
                        height: 45,
                        width: 210,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFF01321c),
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Center(
                          child: Text(
                            '7 MARLA',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, right: 50),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const FormScreen(sizeOfPlot: '10 MARLA',)));
                      },
                      child: Container(
                        height: 45,
                        width: 210,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFF01321c),
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Center(
                          child: Text(
                            '10 MARLA ',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, right: 50),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const FormScreen(sizeOfPlot: '1 KANAL',)));
                      },
                      child: Container(
                        height: 45,
                        width: 210,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFF01321c),
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Center(
                          child: Text(
                            '1 KANAL',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
