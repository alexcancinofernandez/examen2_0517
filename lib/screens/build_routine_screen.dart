import 'package:flutter/material.dart';
import '../widgets/shared_widgets.dart';

class BuildRoutineScreen extends StatelessWidget {
  const BuildRoutineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(
        context: context,
        leftText: 'Cancelar',
        onLeftPressed: () => Navigator.pop(context),
        centerTopText: 'Crear',
        centerBottomText: 'Rutina',
        rightText: 'Guardar',
        onRightPressed: () => debugPrint('Guardar presionado'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Pull',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: greenColor,
                            ),
                          ),
                          const SizedBox(width: 12),
                          const Expanded(
                            child: Text(
                              'Jalon al Pecho',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                          ),
                          const Icon(Icons.more_vert, color: Colors.grey),
                        ],
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'Agregar notas aqui...',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          const Icon(Icons.timer_outlined,
                              color: Colors.grey, size: 20),
                          const SizedBox(width: 6),
                          Text(
                            'Descanso: Apagado',
                            style: TextStyle(
                                color: Colors.grey.shade600, fontSize: 14),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      const Divider(height: 1, color: borderColor),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: Row(
                          children: [
                            const SizedBox(width: 20),
                            const Expanded(
                              flex: 1,
                              child: Text('Serie', style: TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            const Expanded(
                              flex: 1,
                              child: Center(child: Text('Kg', style: TextStyle(fontWeight: FontWeight.bold))),
                            ),
                            Expanded(
                              flex: 1,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text('Reps', style: TextStyle(fontWeight: FontWeight.bold)),
                                  Icon(Icons.arrow_drop_down, size: 20),
                                ],
                              ),
                            ),
                            const SizedBox(width: 20),
                          ],
                        ),
                      ),
                      const Divider(height: 1, color: borderColor),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Row(
                          children: const [
                            SizedBox(width: 20),
                            Expanded(flex: 1, child: Text('1', style: TextStyle(fontSize: 16))),
                            Expanded(flex: 1, child: Center(child: Text('-', style: TextStyle(fontSize: 16)))),
                            Expanded(flex: 1, child: Center(child: Text('-', style: TextStyle(fontSize: 16)))),
                            SizedBox(width: 20),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: greyButtonColor,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () => debugPrint('Agregar Serie presionado'),
                      child: const Text(
                        '+ Agregar Serie',
                        style: TextStyle(fontSize: 16, color: Colors.black87),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: lightBlueColor,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () => debugPrint('Agregar ejercicio presionado'),
                      child: const Text(
                        '+ Agregar ejercicio',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}