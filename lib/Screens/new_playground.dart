import 'package:flutter/material.dart';
import 'package:next/Screens/bottom_sheet.dart';

class NewPlayground extends StatefulWidget {
  final Function addPlayground;

  const NewPlayground({Key key, this.addPlayground}) : super(key: key);
  @override
  _NewPlaygroundState createState() => _NewPlaygroundState();
}

class _NewPlaygroundState extends State<NewPlayground> {
  final nameController = TextEditingController();
  final locatioController = TextEditingController();
  final fromController = TextEditingController();
  final toController = TextEditingController();
  final priceEveningController = TextEditingController();
  final priceMorningController = TextEditingController();
  bool hasBall = false;
  bool hasWater = false;
  bool hasGarage = false;
  bool hasLoacker = false;
  bool hasPromotion = false;
  bool hasShower = false;
  bool hasToilette = false;

  void submitData() {
    final nameEntered = nameController.text;
    final locationEntered = locatioController.text;
    final fromEntered = fromController.text;
    final toEntered = toController.text;
    final priceEveningEntered = priceEveningController.text;
    final priceMorningEntered = priceMorningController.text;
    widget.addPlayground(nameEntered, locationEntered, fromEntered, toEntered,
        priceEveningEntered, priceMorningEntered);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              Image.asset('assets/images/icon.png',
                  width: 40, height: 40, fit: BoxFit.contain),
              SizedBox(
                width: 20,
              ),
              Text(
                'Next',
                style: TextStyle(
                    color: Color(0xffffffff), fontWeight: FontWeight.bold),
              )
            ],
          ),
          backgroundColor: Color(0xff05131A),
          actions: <Widget>[],
        ),
        body: Builder(
          builder: (context) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff54BDD6),
                        ),
                      ),
                      labelText: 'Name',
                      helperText: 'Name is required !',
                      hintText: 'Playground Name',
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                      helperStyle: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: locatioController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).accentColor,
                        ),
                      ),
                      labelText: 'Location',
                      helperText: 'Location is required',
                      hintText: 'Location',
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                      helperStyle: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: fromController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      labelText: 'Open From',
                      hintText: 'from',
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                      helperStyle: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: toController,
                  decoration: InputDecoration(
                      fillColor: Theme.of(context).primaryColor,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      labelText: 'Open To',
                      hintText: 'to',
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                      helperStyle: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: priceEveningController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      labelText: 'Price Evening',
                      helperText: 'Price is required',
                      hintText: 'price evening',
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                      helperStyle: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: priceMorningController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    labelText: 'Price Morning',
                    helperText: 'Price is required',
                    hintText: 'price Morning',
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    helperStyle: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                CheckboxListTile(
                  title: Text("Has ball",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  checkColor: Theme.of(context).primaryColor,
                  activeColor: Theme.of(context).accentColor,

                  value: hasBall,
                  onChanged: (bool value) {
                    setState(() {
                      hasBall = value;
                      print(hasBall);
                    });
                  },
                  controlAffinity:
                      ListTileControlAffinity.leading, //  <-- leading Checkbox
                ),
                CheckboxListTile(
                  title: Text("Has Water",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  checkColor: Theme.of(context).primaryColor,
                  activeColor: Theme.of(context).accentColor,

                  value: hasWater,
                  onChanged: (bool value) {
                    setState(() {
                      hasWater = value;
                      print(hasWater);
                    });
                  },
                  controlAffinity:
                      ListTileControlAffinity.leading, //  <-- leading Checkbox
                ),
                CheckboxListTile(
                  title: Text("Has Garage",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  checkColor: Theme.of(context).primaryColor,
                  activeColor: Theme.of(context).accentColor,

                  value: hasGarage,
                  onChanged: (bool value) {
                    setState(() {
                      hasGarage = value;
                      print(hasGarage);
                    });
                  },
                  controlAffinity:
                      ListTileControlAffinity.leading, //  <-- leading Checkbox
                ),
                CheckboxListTile(
                  title: Text("Has Loacker",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  checkColor: Theme.of(context).primaryColor,
                  activeColor: Theme.of(context).accentColor,

                  value: hasLoacker,
                  onChanged: (bool value) {
                    setState(() {
                      hasLoacker = value;
                      print(hasLoacker);
                    });
                  },
                  controlAffinity:
                      ListTileControlAffinity.leading, //  <-- leading Checkbox
                ),
                CheckboxListTile(
                  title: Text("Has promotion",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  checkColor: Theme.of(context).primaryColor,
                  activeColor: Theme.of(context).accentColor,

                  value: hasPromotion,
                  onChanged: (bool value) {
                    setState(() {
                      hasPromotion = value;
                      print(hasPromotion);
                    });
                  },
                  controlAffinity:
                      ListTileControlAffinity.leading, //  <-- leading Checkbox
                ),
                CheckboxListTile(
                  title: Text("Has Shower",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  checkColor: Theme.of(context).primaryColor,
                  activeColor: Theme.of(context).accentColor,
                  value: hasShower,
                  onChanged: (bool value) {
                    setState(() {
                      hasShower = value;
                      print(hasShower);
                    });
                  },
                  controlAffinity:
                      ListTileControlAffinity.leading, //  <-- leading Checkbox
                ),
                CheckboxListTile(
                  title: Text(
                    "Has Toilette",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  checkColor: Theme.of(context).primaryColor,
                  activeColor: Theme.of(context).accentColor,

                  value: hasToilette,
                  onChanged: (bool value) {
                    setState(() {
                      hasToilette = value;
                      print(hasToilette);
                    });
                  },
                  controlAffinity:
                      ListTileControlAffinity.leading, //  <-- leading Checkbox
                ),
                ElevatedButton(
                    onPressed: () => Scaffold.of(context)
                            .showBottomSheet<void>((BuildContext context) {
                          return CustomBottomSheet();
                        }),
                    child: Text(
                      "Choose photo",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: ElevatedButton(
                    child: Text(
                      'Create',
                      style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0),
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
          ),
        ));
  }
}
