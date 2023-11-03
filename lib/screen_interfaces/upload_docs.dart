import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lakevistaapp/provider/upload_doc_selection.dart';
import 'package:lakevistaapp/screen_interfaces/term_and_condition.dart';
import 'package:provider/provider.dart';

class UploadDocument extends StatefulWidget {
  const UploadDocument({Key? key}) : super(key: key);

  @override
  State<UploadDocument> createState() => _UploadDocumentState();
}

class _UploadDocumentState extends State<UploadDocument> {
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
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Center(
                        child: Image.asset(
                          'assets/logo.png',
                          fit: BoxFit.fill,
                          height: 100,
                          width: 250,
                        ),
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
                          'Upload',
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

  void _selectFile(String label) async {
    final imagePicker = ImagePicker();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select Image Source'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Consumer<UploadDocSelectionProvider>(builder: (context, value, child){
                  return ListTile(
                    title: const Text('Camera'),
                    onTap: () async {
                      final XFile? imageFile = await imagePicker.pickImage(
                        source: ImageSource.camera,
                        imageQuality: 80,
                      );
                      if (imageFile != null) {
                        value.selectFile(label, imageFile.name);
                      }
                      goBack();
                    },
                  );
                }),
                Consumer<UploadDocSelectionProvider>(builder: (context, value, child){
                  return ListTile(
                    title: const Text('Gallery'),
                    onTap: () async {
                      final XFile? imageFile = await imagePicker.pickImage(
                        source: ImageSource.gallery,
                        imageQuality: 80,
                      );
                      if (imageFile != null) {
                        value.selectFile(label, imageFile.name);
                      }
                      goBack();
                    },
                  );
                }),
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
          child: Consumer<UploadDocSelectionProvider>(builder: (context, value, child){
            return Row(
              children: [
                if (value.selectedFiles[label] != null)
                  Row(
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(
                          Icons.check_circle,
                          color: Colors.green,
                        ),
                      ),
                      const SizedBox(width: 25,),
                      IconButton(
                        icon: const Icon(Icons.delete, color: Colors.red),
                        onPressed: () {
                          value.removeFile(label);
                        },
                      ),
                    ],
                  )
                else
                  TextButton(
                    onPressed: () {
                      _selectFile(label);
                    },
                    child: const Text('Select'),
                  ),
                const SizedBox(width: 5),
              ],
            );
          })
        ),
      ],
    );
  }

  void goBack() {
    Navigator.of(context).pop();
  }
}
