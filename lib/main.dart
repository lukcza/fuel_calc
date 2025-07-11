import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fuel_calc/pages/form/bloc/form_bloc.dart';
import 'package:fuel_calc/pages/form/form_page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context)=>MyFormBloc(),
        child: const FormPage(),
      ),
    );
  }
}
