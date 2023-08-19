import 'package:stmpractice/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home.dart';

void main() => runApp(const First());

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NumberedProvider()),
      ],
      child: MaterialApp(
          title: 'Material App',
          debugShowCheckedModeBanner: false,
          home: Home()),
    );
  }
}
