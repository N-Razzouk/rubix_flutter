import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rubix_flutter/features/cubit/homepage_cubit.dart';

import 'package:rubix_flutter/features/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Rubik's Cube Solver",
      theme: ThemeData.dark(),
      home: BlocProvider(
        create: (context) => HomepageCubit(),
        child: const Homepage(),
      ),
    );
  }
}
