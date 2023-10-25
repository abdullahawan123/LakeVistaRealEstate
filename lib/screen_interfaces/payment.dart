import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String selectedPaymentOption = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Center(
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(Colors.white70.withOpacity(.9), BlendMode.lighten),
              child: Image.asset(
                'assets/leaf-01.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Image.asset(
                        'assets/logo.png',
                        width: 350,
                        height: 150,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          'PAYMENT DETAIL',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Column(
                      children: [
                        buildPaymentOption('easypaisa', 'EasyPaisa'),
                        buildPaymentOption('jazzcash', 'JazzCash'),
                        buildPaymentOption('bank', 'Bank Payment'),
                      ],
                    ),
                    const SizedBox(height: 15),
                    buildPaymentFields(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildPaymentOption(String option, String label) {
    return Row(
      children: [
        Radio(
          value: option,
          groupValue: selectedPaymentOption,
          onChanged: (value) {
            setState(() {
              selectedPaymentOption = value as String;
            });
          },
        ),
        Text(
          label,
          style: const TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        ),
      ],
    );
  }

  Widget buildPaymentFields() {
    if (selectedPaymentOption == 'easypaisa' || selectedPaymentOption == 'jazzcash') {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: TextFormField(
          keyboardType: TextInputType.number,
          cursorColor: Colors.green,
          obscureText: true,
          style: const TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
          decoration: InputDecoration(
            hintText: 'Enter your Account No',
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
      );
    } else if (selectedPaymentOption == 'bank') {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextFormField(
              keyboardType: TextInputType.number,
              cursorColor: Colors.green,
              style: const TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
              decoration: InputDecoration(
                hintText: 'Credit/ Debit Card No',
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
          const SizedBox(height: 7),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextFormField(
              keyboardType: TextInputType.datetime,
              cursorColor: Colors.green,
              style: const TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
              decoration: InputDecoration(
                hintText: 'Expiry Date',
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
          const SizedBox(height: 7),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextFormField(
              keyboardType: TextInputType.number,
              cursorColor: Colors.green,
              style: const TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
              decoration: InputDecoration(
                hintText: 'CVV',
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
        ],
      );
    } else {
      // Return an empty container if no payment option is selected
      return Container();
    }
  }
}
