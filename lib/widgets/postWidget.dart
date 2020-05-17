import 'package:flutter/material.dart';
import 'package:widhya/services/posts.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:html';
import 'package:firebase/firebase.dart' as fb;

class PostWidget extends StatefulWidget {
  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  String story;
  File imageFile;
  _pickImage() async {
    InputElement uploadInput = FileUploadInputElement();
    uploadInput.click();

    uploadInput.onChange.listen((changeEvent) {
      final file = uploadInput.files.first;
      final reader = FileReader();
      reader.readAsDataUrl(file);
      reader.onLoadEnd.listen((loadEndEvent) async {
        setState(() {
          imageFile = file;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 171,
      width: 590,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(24),
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 5, left: 5),
              padding: EdgeInsets.only(top: 5, left: 5),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    story = value;
                  });
                },
                cursorColor: Colors.grey[600],
                decoration: InputDecoration(
                  hintText: 'What Are Your Thoughts Today',
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.attach_file,
                      color: Colors.grey[600],
                    ),
                    onPressed: () {
                      _pickImage();
                    },
                  ),
                  fillColor: Colors.grey[200],
                  filled: true,
                  focusColor: Colors.grey[600],
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white24, width: 2),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[600], width: 2),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                maxLines: null,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    'People Loves to Read Your Professional Experiences',
                    style: TextStyle(color: Colors.grey[600], fontSize: 16),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(18),
                  child: FlatButton(
                    onPressed: () {
                      Uploader(
                        title: 'Jon Snow',
                        description: story,
                        file: imageFile,
                      );
                      print(imageFile);
                    },
                    child: Text(
                      'Post This!',
                      style: TextStyle(fontSize: 16, color: Colors.blue),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Uploader extends StatefulWidget {
  final File file;
  final String title;
  final String description;

  Uploader({Key key, this.file, this.description, this.title})
      : super(key: key);

  @override
  _UploaderState createState() => _UploaderState();
}

class _UploaderState extends State<Uploader> {
  final FirebaseStorage _storage =
      FirebaseStorage(storageBucket: 'gs://mecmanagementapp.appspot.com/');

  fb.UploadTask _uploadTask;

  void _startUpload() async {
    final filePath = 'images/${DateTime.now()}.png';
    setState(() {
      _uploadTask = fb
          .storage()
          .refFromURL('gs://mecmanagementapp.appspot.com/')
          .child(filePath)
          .put(widget.file);
    });

    post();
  }

  void post() async {
    String url;
    var dowurl = await (await _uploadTask.future).ref.getDownloadURL();
    url = dowurl.toString();
    PostManagement().makePostReq(widget.title, widget.description, url);
    // ignore: unnecessary_statements
    Navigator.of(context).pushReplacementNamed('/');
  }

  @override
  Widget build(BuildContext context) {
    if (_uploadTask != null) {
      return StreamBuilder<fb.UploadTaskSnapshot>(
        stream: _uploadTask?.onStateChanged,
        builder: (context, snapshot) {
          // var event = snapshot?.data?.snapshot;

          return Column(
            children: <Widget>[],
          );
        },
      );
    } else {
      return FlatButton.icon(
        onPressed: _startUpload,
        icon: Icon(Icons.cloud_upload),
        label: Text('Upload'),
      );
    }
  }
}
