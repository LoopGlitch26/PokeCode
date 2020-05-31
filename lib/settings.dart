// Stub
// File
// For
// Settings
// Page

import 'package:flutter/material.dart';
import 'navigation_bloc.dart';
// Add Settings here, either integrate it in this or replace this. Keep the navigation Block alive, else it won't work.
class SettingsPage extends StatelessWidget with NavigationStates {
  final Function onMenuTap;

  const SettingsPage({Key key, this.onMenuTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        color: Colors.teal,
      ),
      padding: const EdgeInsets.only(left: 16, right: 16, top: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              InkWell(
                child: Icon(Icons.menu, color: Colors.white),
                onTap: onMenuTap,
              ),
              Text("Settings", style: TextStyle(fontSize: 24, color: Colors.white)),
              Icon(Icons.settings, color: Colors.white),
            ],
          ),
        ],
      ),
    );
  }
}