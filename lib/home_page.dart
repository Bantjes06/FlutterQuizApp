import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(0, 200, 0, 200),
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 140, 35, 238)),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  width: 250,
                  color: const Color.fromARGB(150, 253, 253, 253),
                  'assets/quizlogo.png',
                ),
                Text("Learn Flutter the fun way!",
                    style: GoogleFonts.lato(
                        color: const Color.fromARGB(255, 229, 203, 254),
                        fontSize: 25)),
                ElevatedButton.icon(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          Color.fromARGB(255, 160, 68, 247)),
                    ),
                    onPressed: startQuiz,
                    icon: const Icon(Icons.arrow_right_alt),
                    label: const Text('Start Quiz!'))
              ]),
        ));
  }
}
