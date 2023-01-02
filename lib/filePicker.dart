import 'package:flutter/material.dart';
import "package:file_picker/file_Picker.dart";

class FilePickerApp extends StatefulWidget {
  const FilePickerApp({Key? key}) : super(key: key);

  @override
  _FilePickerAppState createState() => _FilePickerAppState();
}

class _FilePickerAppState extends State<FilePickerApp> {
  FilePickerResult? result;
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("File picker demo"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(result != null)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Selected file:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: result?.files.length ?? 0,
                        itemBuilder: (context, index) {
                          return Text(result?.files[index].name ?? '', style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold));
                        })
                  ],
                ),),
            Center(
              child: ElevatedButton(
                onPressed: () async{
                  result = await FilePicker.platform.pickFiles(allowMultiple: true );
                  if (result == null) {
                    print("No file selected");
                  } else {
                    setState(() {
                    });
                    result?.files.forEach((element) {
                      print(element.name);
                    });
                  }
                },
                child: const Text("File Picker"),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
