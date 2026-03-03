import 'package:flutter/material.dart';
import '../widgets/shared_widgets.dart';

class AddExerciseScreen extends StatelessWidget {
  const AddExerciseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final exercises = [
      {"title": "Abdominal Corto", "subtitle": "(Maquina)", "isBlueSelected": false},
      {"title": "Curl de pierna Sentado", "subtitle": "", "isBlueSelected": false},
      {"title": "Aduccion de caderas", "subtitle": "", "isBlueSelected": false},
      {"title": "Jalon al Pecho", "subtitle": "(espalda)", "isBlueSelected": true},
      {"title": "Extension de pierna", "subtitle": "", "isBlueSelected": false},
    ];

    return Scaffold(
      appBar: buildCustomAppBar(
        context: context,
        leftText: 'Cancelar',
        onLeftPressed: () => Navigator.pop(context),
        centerTopText: 'Agregar',
        centerBottomText: 'Ejercicio',
        rightText: 'Crear',
        onRightPressed: () => Navigator.pop(context),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search, color: Colors.grey),
                  hintText: 'Buscar ejercicio',
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                'Ejercicios comunes',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: exercises.length,
                separatorBuilder: (context, index) => const Divider(height: 1),
                itemBuilder: (context, index) {
                  final ex = exercises[index];
                  return _buildExerciseListItem(
                    title: ex["title"] as String,
                    subtitle: ex["subtitle"] as String,
                    showBlueBar: ex["isBlueSelected"] as bool,
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
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
                    Navigator.pushNamed(context, '/build_routine');
                  },
                  child: const Text(
                    'Agrega 1 ejercicio',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExerciseListItem({
    required String title,
    required String subtitle,
    required bool showBlueBar,
  }) {
    return Container(
      color: showBlueBar ? const Color.fromARGB(255, 4, 72, 128).withOpacity(0.05) : Colors.transparent,
      child: Row(
        children: [
          Container(
            width: 4,
            height: 70,
            color: showBlueBar ? lightBlueColor : Colors.transparent,
          ),
          const SizedBox(width: 12),
          const Icon(Icons.radio_button_unchecked, color: Colors.grey, size: 24),
          const SizedBox(width: 16),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: greenColor.withOpacity(0.8),
              border: Border.all(color: Colors.green, width: 2),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
                if (subtitle.isNotEmpty)
                  Text(
                    subtitle,
                    style: const TextStyle(fontSize: 14, color: Colors.grey),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}