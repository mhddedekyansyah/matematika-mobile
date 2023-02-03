import 'package:flutter/material.dart';
import 'package:matematika_kelas_4_sd/pages/home_page.dart';
import 'package:matematika_kelas_4_sd/pages/materi_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {'/': (context) => Home(), '/materi': (context) => Materi()},
    );
  }
}
