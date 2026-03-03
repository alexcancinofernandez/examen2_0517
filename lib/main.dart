import 'package:flutter/material.dart';

// Importamos las pantallas separadas
import 'screens/initial_screen.dart';
import 'screens/add_exercise_screen.dart';
import 'screens/build_routine_screen.dart';

void main() {
  runApp(const FitnessRoutineApp());
}

class FitnessRoutineApp extends StatelessWidget {
  const FitnessRoutineApp({super.key});

  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fitness Routine Builder',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        fontFamily: 'Roboto', 
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const InitialScreen(),
        '/add_exercise': (context) => const AddExerciseScreen(),
        '/build_routine': (context) => const BuildRoutineScreen(),
      },
    );
  }
}