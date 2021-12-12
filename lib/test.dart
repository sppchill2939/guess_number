// ignore_for_file: avoid_print
// top-level function
import 'dart:io';
import 'dart:math';

void main() {
  var r = Random();
  var count = 0;
  var answer = r.nextInt(100);
  bool correct = false;
  print("╔══════════════════════════════════════════════════");
  print("║                 GUESS THE NUMBER");
  print("║──────────────────────────────────────────────────");

  while (correct == false) {
    stdout.write("║ Guess the number between  1 and 100: ");
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);

    if (guess != null) {
      if (guess == answer) {
        correct = true;
      }
      else if (guess < answer) {
        print("║ Sorry, " + guess.toString() + " is too low! please try again. ▼");
        print("║──────────────────────────────────────────────────");
      }
      else if (guess > answer) {
        print("║ Sorry, " + guess.toString() + " is too high! please try again. ▲");
        print("║──────────────────────────────────────────────────");
      }
      count++;
    }
  }
  String correct_answer = answer.toString();
  print("║ Congrat! you guess a number: " + answer.toString() + " correctly. ❤");
  print("║ You guess " + count.toString() + " times.");
  print("║──────────────────────────────────────────────────");
  print("║                     THE END");
  print("╚═══════════════════════════════════════════════════");
}
