import 'package:flutter/material.dart';
import 'package:listas/Home.dart';
import 'package:cloud_firebase/cloud_firestore.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(home: Home()));
}
