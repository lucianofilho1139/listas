import 'package:flutter/material.dart';

//Necessário adicionar o package firebase_core para utilizar o método Firabase.iniciatilizeApp()
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  //Professor me orientou a inicializar
  //o FireBase dentro do app antes do RunApp:

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  //Este Uso eu retalidade,
  //Mas as nomenclaturas e a instancia mudou:

  FirebaseFirestore db = FirebaseFirestore.instance;
  db.collection("usuarios").doc("001").set({"nome": "Fulano"});

  runApp(MaterialApp(
    home: App(),
    debugShowCheckedModeBanner: false,
  ));
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
