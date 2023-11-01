import 'package:flutter/foundation.dart';

class UploadDocSelectionProvider with ChangeNotifier{
  Map<String, String?> selectedFiles = {
    'Recent Passport\nSize Photograph:': null,
    'Applicant CNIC:': null,
    'Nominee CNIC:': null,
  };

  void selectFile(String label, String fileName) {
    selectedFiles[label] = fileName;
    notifyListeners();
  }

  void removeFile(String label) {
    selectedFiles[label] = null;
    notifyListeners();
  }
}