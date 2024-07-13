import 'dart:io';

import 'book.dart';
import 'library.dart';

void main() {
  String emoji1 = "\u{1F9D0}";
  String emoji2 = "\u{1F44B}";
  library1 l1 = library1();
  int case1;

  do {
    stdout.writeln("Choose one option Man $emoji1:");
    List<String> options = [
      "1-Add new Book to library:",
      "2-Display All Books:",
      "3-Remove a specific book:",
      "4-Exit Thanks"
    ];
    options.forEach((element) {
      print(element);
    });

    case1 = int.parse(stdin.readLineSync()!);

    switch (case1) {
      case 1:
        l1.addBook();
        break;
      case 2:
        l1.display();
        break;
      case 3:
        l1.removeBook();
        break;
      case 4:
        print("Thank you very much for visiting our library $emoji2");
        break;
      default:
        print("Please enter a valid choice.");
    }
  } while (case1 != 4);
}
