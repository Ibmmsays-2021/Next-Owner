import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CustomBottomSheet extends StatefulWidget {
  @override
  _CustomBottomSheetState createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  PickedFile _pickedFile;
  final ImagePicker _imagePicker = ImagePicker();
  void takePhoto(ImageSource imageSource) async {
    final pickedFile = await _imagePicker.getImage(source: imageSource);
    setState(() {
      _pickedFile = pickedFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => Container(
        decoration: new BoxDecoration(color: Colors.white),
        height: 120.0,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Choose a Photo: ',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton.icon(
                  onPressed: () {
                    takePhoto(ImageSource.camera);
                  },
                  icon: Icon(Icons.camera_alt),
                  label: Text('Camera'),
                ),
                new Container(width: 25.0),
                ElevatedButton.icon(
                  onPressed: () {
                    takePhoto(ImageSource.gallery);
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.image),
                  label: Text('Gallery'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget bottomSheet(BuildContext context) {}
