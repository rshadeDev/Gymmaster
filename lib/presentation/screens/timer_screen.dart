import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gymmaster/presentation/screens/home_screen.dart';
import 'package:gymmaster/presentation/screens/profile_screen.dart';

class timer_screen extends StatefulWidget {
  const timer_screen({super.key});

  @override
  TimerScreenState createState() => TimerScreenState();
}

class TimerScreenState extends State<timer_screen> {
  int timePassed = 0;
  Timer? _timer;
  bool isPaused = false;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!isPaused) {
        setState(() {
          timePassed++;
        });
      }
    });
  }

  void pauseOrResume() {
    setState(() {
      isPaused = !isPaused;
    });
  }

  void restartTimer() {
    setState(() {
      timePassed = 0;
      isPaused = false;
    });
  }

  String formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int secs = seconds % 60;
    return "${minutes.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}";
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
        break;
      case 2:
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProfileScreen()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: const Icon(Icons.close, color: Colors.white),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            ),
            Image.asset(
              'assets/training_screen/hip_abduction.jpg',
              height: 200,
            ),
            Column(
              children: [
                const Text(
                  'Temporizador',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  formatTime(timePassed),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text('Series',
                        style: TextStyle(color: Colors.cyan, fontSize: 18)),
                    Text('3x',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                  ],
                ),
                Column(
                  children: [
                    Text('Repeticiones',
                        style: TextStyle(color: Colors.cyan, fontSize: 18)),
                    Text('8 a 10',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                  ],
                ),
                Column(
                  children: [
                    Text('Descanso',
                        style: TextStyle(color: Colors.cyan, fontSize: 18)),
                    Text('1:10',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: pauseOrResume,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  ),
                  child: Text(isPaused ? 'Resume' : 'Pause'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: restartTimer,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  ),
                  child: Text('Restart'),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.black,
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.black,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.white70,
          selectedItemColor: Colors.white,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.fitness_center),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
