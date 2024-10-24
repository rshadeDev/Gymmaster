import 'package:flutter/material.dart';

class training_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text(
          'Entrenamiento A',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Lumbar y Pierna',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  _buildExerciseItem(
                    'Leg Press',
                    '3x 12 a 15',
                    'assets/training_screen/leg_press.jpg',
                  ),
                  _buildExerciseItem(
                    'Leg Extension',
                    '3x 12 a 15',
                    'assets/training_screen/leg_extension.jpg',
                  ),
                  _buildExerciseItem(
                    'Leg Curl',
                    '3x 12 a 15',
                    'assets/training_screen/leg_curl.webp',
                  ),
                  _buildExerciseItem(
                    'Hip Abduction',
                    '3x 12 a 15',
                    'assets/training_screen/hip_abduction.jpg',
                  ),
                  _buildExerciseItem(
                    'Seated Calf Raise',
                    '3x 12 a 15',
                    'assets/training_screen/seated_calf_raise.jpg',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExerciseItem(String title, String reps, String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.white.withOpacity(0.2)),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              child: Image.asset(
                imagePath,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      reps,
                      style: TextStyle(
                        color: Colors.tealAccent,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Ver más',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
