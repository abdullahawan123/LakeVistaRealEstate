import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lakevistaapp/screen_interfaces/term_and_condition.dart';

class UploadDocument extends StatefulWidget {
  const UploadDocument({super.key});

  @override
  State<UploadDocument> createState() => _UploadDocumentState();
}

class _UploadDocumentState extends State<UploadDocument> {
  Map<String, String?> selectedFiles = {
    'Recent Passport\nSize Photograph:': null,
    'Applicant CNIC:': null,
    'Nominee CNIC:': null,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(Colors.white70.withOpacity(.9), BlendMode.lighten),
              child: Image.asset(
                'assets/leaf-01.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/logo.png',
                        fit: BoxFit.fill,
                        height: 100,
                        width: 250,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Center(
                      child: Icon(
                        Icons.cloud_upload,
                        size: 100,
                        color: Colors.blueGrey,
                      ),
                    ),
                    const Center(
                      child: Text(
                        'UPLOAD DOCUMENT',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    buildDocumentSelectionRow(
                      label: 'Recent Passport\nSize Photograph:',
                    ),
                    const SizedBox(height: 20),
                    buildDocumentSelectionRow(
                      label: 'Applicant CNIC:',
                    ),
                    const SizedBox(height: 30),
                    buildDocumentSelectionRow(
                      label: 'Nominee CNIC:',
                    ),
                    const SizedBox(height: 20,),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const TermAndConditionScreen()));
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
        ],
      ),
    );
  }

  Future<void> _selectFile(String label) async {
    final imagePicker = ImagePicker();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select Image Source'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                ListTile(
                  title: const Text('Camera'),
                  onTap: () async {
                    final XFile? imageFile = await imagePicker.pickImage(
                      source: ImageSource.camera,
                      imageQuality: 80,
                    );
                    if (imageFile != null) {
                      setState(() {
                        selectedFiles[label] = imageFile.name;
                      });
                    }
                    goBack();
                  },
                ),
                ListTile(
                  title: const Text('Gallery'),
                  onTap: () async {
                    final XFile? imageFile = await imagePicker.pickImage(
                      source: ImageSource.gallery,
                      imageQuality: 80,
                    );
                    if (imageFile != null) {
                      setState(() {
                        selectedFiles[label] = imageFile.name;
                      });
                    }
                    goBack();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget buildDocumentSelectionRow({required String label}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          flex: 2,
          child: Text(
            label,
            style: const TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w400,
              fontSize: 20,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Align(
            alignment: Alignment.centerLeft,
            child: selectedFiles[label] != null
                ? const Icon(
              Icons.check_circle,
              color: Colors.green,
            )
                : TextButton(
              onPressed: () {
                _selectFile(label);
              },
              child: const Text('Select'),
            ),
          ),
        ),
      ],
    );
  }

  void goBack(){
    Navigator.of(context).pop();
  }
}
