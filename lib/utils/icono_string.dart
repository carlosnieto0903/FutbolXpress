import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  "add_alert": Icons.add_alert,
  "accessibility": Icons.accessibility,
  "folder_open": Icons.folder_open,
  "adb_rounded": Icons.adb_rounded,
  "input": Icons.input,
  "palette_sharp": Icons.palette_sharp,
  "list_alt ": Icons.list_alt,
};

Icon getIcon(String nomIcono) {
  return Icon(
    _icons[nomIcono],
    color: Colors.deepPurpleAccent,
  );
}
