/*import 'dart:convert';
import 'dart:io';
import 'package:csv/csv.dart';
import 'package:file_picker/file_picker.dart';
import 'package:http/http.dart'as http;
import 'package:flutter/material.dart';

class HeartAttackUploader extends StatefulWidget {
  const HeartAttackUploader({super.key});

  @override
  State<HeartAttackUploader> createState() => _HeartAttackUploaderState();
}

class _HeartAttackUploaderState extends State<HeartAttackUploader> {
  String _filePath = '';

  List<List<dynamic>> _csvData = [];

  Future<void> _pickCSV() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['csv'],
    );

    if (result != null) {
      setState(() {
        _filePath = result.files.single.path!;
      });
      _readCSV();
    }
  }

  Future<void> _readCSV() async {
    final file = await File(_filePath).readAsString();
    List<List<dynamic>> csvTable = CsvToListConverter().convert(file);
    setState(() {
      _csvData = csvTable;
    });
    _sendDataToApi(_csvData);
  }

  Future<void> _sendDataToApi(List<List<dynamic>> data) async {
    // Convert CSV data to a format that your API expects
    // For example, you might want to convert it to JSON
    String jsonData = json.encode(data);

    // Make HTTP request to your API
    try {
      final response = await http.post(
        Uri.parse('https://remotepatient.onrender.com/api/sendData/7'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonData,
      );

      if (response.statusCode == 200) {
        // Data sent successfully
        print('Data sent successfully');
      } else {
        // Handle errors
        print('Failed to send data. Status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error sending data: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CSV Uploader'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: _pickCSV,
              child: Text('Pick CSV File'),
            ),
            SizedBox(height: 20),
            Text('Selected File: $_filePath'),
            SizedBox(height: 20),
            Text('CSV Data: $_csvData'),
          ],
        ),
      ),
    );
  }
}
*/