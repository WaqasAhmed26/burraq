import 'package:flutter/material.dart';
class RadioButtonSingleWidget extends StatefulWidget {
  @override
  _RadioButtonSingleWidgetState createState() =>
      _RadioButtonSingleWidgetState();
}

class _RadioButtonSingleWidgetState extends State<RadioButtonSingleWidget> {
  int selectedValue = 0;
  @override

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Text("1 month \$10",
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'poppins',
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox( width: 153),
            Transform.scale(
              scale: 1,
              child: Radio<int>(
                fillColor: MaterialStateProperty.all(Colors.black),
                value: 1,
                groupValue: selectedValue,
                onChanged: (value) => setState(() => selectedValue = value!),
              ),
            ),
          ],
        ),

        Row(
          children: [
            Text("3 months \$28",
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'poppins',
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox( width: 141),
            Transform.scale(
              scale: 1,
              child: Radio<int>(
                fillColor: MaterialStateProperty.all(Colors.black),
                value: 2,
                groupValue: selectedValue,
                onChanged: (value) => setState(() => selectedValue = value!),
              ),
            ),
          ],
        ),

        Row(
          children: [
            Text("Half a year month \$50",
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'poppins',
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox( width: 90),
            Transform.scale(
              scale: 1,
              child: Radio<int>(
                fillColor: MaterialStateProperty.all(Colors.black),
                value: 3,
                groupValue: selectedValue,
                onChanged: (value) => setState(() => selectedValue = value!),
              ),
            ),
          ],
        ),

        Row(
          children: [
            Text("1 year month \$800",
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'poppins',
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox( width: 113),
            Transform.scale(
              scale: 1,
              child: Radio<int>(
                fillColor: MaterialStateProperty.all(Colors.black),
                value: 3,
                groupValue: selectedValue,
                onChanged: (value) => setState(() => selectedValue = value!),
              ),
            ),
          ],
        ),

      ],
    );
    }
}
