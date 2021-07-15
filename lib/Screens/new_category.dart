import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class NewCategory extends StatefulWidget {
  final Function addCat;
  NewCategory(this.addCat);
  @override
  _NewCategoryState createState() => _NewCategoryState();
}

class _NewCategoryState extends State<NewCategory> {
  List<String> locations = ['El 7adeka', 'El nozha', 'El 4ams'];
  String dropdownValue = 'El 8aba';

  final nameController = TextEditingController();
  final priceController = TextEditingController();
  final imageController = TextEditingController();

  void submitData() {
    final enteredName = nameController.text;
    final enteredPrice = priceController.text;

    if (enteredName.isEmpty || enteredPrice.isEmpty) {
      return;
    }
    widget.addCat(enteredName, enteredPrice, dropdownValue, _pickedFile.path);
    Navigator.of(context).pop();
  }

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
    return Card(
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'Name',
              ),
              controller: nameController,
              onSubmitted: (_) => submitData,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Price',
              ),
              keyboardType: TextInputType.number,
              controller: priceController,
              onSubmitted: (_) => submitData,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: DropdownButton<String>(
                hint: Text('Select Location: '),
                isExpanded: true,
                value: dropdownValue,
                icon: const Icon(Icons.arrow_downward),
                iconSize: 18,
                elevation: 16,
                style: const TextStyle(color: Colors.grey),
                underline: Container(
                  width: double.infinity,
                  height: 2,
                  color: Colors.grey,
                ),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue = newValue;
                  });
                },
                items: <String>[
                  'El 8aba',
                  'El nozha',
                  'El 7adeka',
                  'El motezah'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton.icon(
                  onPressed: () {
                    takePhoto(ImageSource.gallery);
                  },
                  icon: Icon(Icons.image),
                  label: Text('Gallery'),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ElevatedButton(
                    child: Text(
                      'Add Transaction',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Theme.of(context).primaryColor,
                      ),
                    ),
                    onPressed: submitData,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
