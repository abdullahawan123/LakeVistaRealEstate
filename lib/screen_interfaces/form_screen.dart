import 'package:flutter/material.dart';
import 'package:lakevistaapp/provider/form_radiobutton.dart';
import 'package:lakevistaapp/screen_interfaces/book_a_plot.dart';
import 'package:lakevistaapp/screen_interfaces/upload_docs.dart';
import 'package:provider/provider.dart';

class FormScreen extends StatelessWidget {
  final String sizeOfPlot;
  final bool isChecked;

  const FormScreen({Key? key, required this.sizeOfPlot, this.isChecked = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FormRadioButtonProvider(),
      child: _FormScreenContent(sizeOfPlot: sizeOfPlot, isChecked: isChecked),
    );
  }
}

class _FormScreenContent extends StatefulWidget {
  final String sizeOfPlot;
  final bool isChecked;

  const _FormScreenContent({required this.sizeOfPlot, this.isChecked = true});

  @override
  State<_FormScreenContent> createState() => _FormScreenState();
}

class _FormScreenState extends State<_FormScreenContent> {
  @override
  Widget build(BuildContext context) {
    final radioBtnProvider = Provider.of<FormRadioButtonProvider>(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/logo.png', fit: BoxFit.contain, width: 180, height: 100),
                    Image.asset('assets/approved_logo.png', fit: BoxFit.contain, width: 180, height: 80),
                  ],
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
                      'REGISTRATION FORM',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      value: widget.isChecked,
                      onChanged: (bool? value) {
                        //In this case the checkbox is always checked, so no need to assign any value.
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const BookAPlot()));
                      },
                    ),
                    Text(
                      widget.sizeOfPlot,
                      style: const TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  'Property Selection:',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 3,),
                ListTile(
                  title: const Text('Residential'),
                  leading: Radio<PropertySelection>(
                    value: PropertySelection.residential,
                    groupValue: radioBtnProvider.selection,
                    onChanged: (PropertySelection? value) {
                      if (value != null) {
                        radioBtnProvider.setSelection(value);
                      }
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Commercial'),
                  leading: Radio<PropertySelection>(
                    value: PropertySelection.commercial,
                    groupValue: radioBtnProvider.selection,
                    onChanged: (PropertySelection? value) {
                      if (value != null) {
                        radioBtnProvider.setSelection(value);
                      }
                    },
                  ),
                ),

                const Text(
                  'PERSONAL INFORMATION',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
                const Divider(height: 1, thickness: 2),
                const SizedBox(height: 10),
                buildRoundedTextField('Name of Applicant', 'S/O, W/O, D/O'),
                const SizedBox(height: 10),
                buildRoundedTextField('Email', 'District'),
                const SizedBox(height: 10),
                buildRoundedTextField('CNIC/ Passport No', 'DOB (DD/MM/YYYY)'),
                const SizedBox(height: 10),
                buildRoundedTextField('Mobile #1', 'Mobile #2', 'Permanent Address', TextInputType.number),
                const SizedBox(height: 10),
                const Text(
                  'NOMINEE INFORMATION',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
                const Divider(height: 1, thickness: 2),
                const SizedBox(height: 10),
                buildRoundedTextField('Nominee Name', 'S/O, W,O, D/O'),
                const SizedBox(height: 10),
                buildRoundedTextField('Relation with Nominee', 'Email'),
                const SizedBox(height: 10),
                buildRoundedTextField('CNIC/ Passport No', 'Mobile No', 'Permanent Address', TextInputType.number),
                const SizedBox(height: 10),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const UploadDocument()));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    child: const Text(
                      'Next',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildRoundedTextField(String hint1, String hint2, [String hint3 = "", TextInputType keyboardType = TextInputType.text]) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: TextField(
                    cursorColor: Colors.green,
                    keyboardType: keyboardType,
                    style: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      hintText: hint1,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: TextField(
                    cursorColor: Colors.green,
                    keyboardType: keyboardType,
                    style: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      hintText: hint2,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        if (hint3.isNotEmpty)
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: TextField(
                      maxLines: 4,
                      cursorColor: Colors.green,
                      style: const TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.zero,
                        hintText: hint3,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }
}

enum PropertySelection { residential, commercial }
