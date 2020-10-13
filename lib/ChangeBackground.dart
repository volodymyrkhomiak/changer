import 'package:flutter/material.dart';
class ChangeBackground extends StatefulWidget {
  @override
  ChangeBackgroundState createState() {
    return new ChangeBackgroundState();
  }
}
class ChangeBackgroundState extends State<ChangeBackground> {
  List<Color> _colors = [ //Get list of colors
    Colors.red,
    Colors.blue,
    Colors.brown,
    Colors.teal,
    Colors.purple
  ];
  int _currentIndex = 0;
  _onChanged() { //update with a new color when the user taps button
    int _colorCount = _colors.length;
    setState(() {
      if (_currentIndex == _colorCount - 1) {
        _currentIndex = 0;
      } else {
        _currentIndex += 1;
      }
    });

  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(

        appBar: AppBar(
          title: Text('Change  Background color'),

        ),


        body:  Center(
            child:Container(
              height: double.infinity,
              width: double.infinity,
              child: RaisedButton(

                child: Text('Hey there'),
                onPressed: _onChanged,
                color: _colors[_currentIndex], //specify background color  of button from our list of colors
              ),


        )));
  }}