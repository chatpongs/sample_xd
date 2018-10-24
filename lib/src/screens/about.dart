import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF6100ED),
      alignment: Alignment.center,
      child: _buildContactButton(context),
    );
  }

  RaisedButton _buildContactButton(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).accentColor,
      textColor: Colors.white,
      child: Text('Contact Us'),
      padding: EdgeInsets.symmetric(horizontal: 100.0),
      onPressed: () {},
    );
  }
}
