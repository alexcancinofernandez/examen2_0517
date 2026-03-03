import 'package:flutter/material.dart';
import '../widgets/shared_widgets.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(
        context: context,
        leftText: 'Cancelar',
        onLeftPressed: () => debugPrint('Cancelar presionado'),
        centerTopText: 'Crear',
        centerBottomText: 'Rutina',
        rightText: 'Guardar',
        onRightPressed: () => debugPrint('Guardar presionado'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Titulo de la Rutina',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    const SizedBox(height: 30),
                    Icon(
                      Icons.fitness_center,
                      size: 80,
                      color: Colors.grey.shade400,
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      'Empieza agregando\nun ejercicio a tu rutina',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: lightBlueColor,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/add_exercise');
                  },
                  child: const Text(
                    '+ Agregar ejercicio',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}