import 'dart:io';

import 'book.dart';

String emoji = "\u{1F973}";

class library1 {
  //there are 5 book default in library
  List<Book> b1 = [
    Book("Book1", "Mohamed", 100, 50),
    Book("Book2", "Ahmed", 200, 100),
    Book("Book3", "Essam", 300, 40),
    Book("Book4", "Menna", 400, 70),
    Book("Book5", "Abdelrhman", 500, 150),
  ];
  //to add book
  void addBook() {
    print("Enter the information about Book:");
    stdout.writeln("book_id:");
    int book_id = int.parse(stdin.readLineSync()!);

    stdout.writeln("author:");
    String author = stdin.readLineSync()!;
    stdout.writeln("price:");
    double price = double.parse(stdin.readLineSync()!);
    stdout.writeln("title:");
    String title = stdin.readLineSync()!;

    b1.add(Book(title, author, book_id, price));
    print("Book added successfully$emoji ");
  }

//to display all books
  void display() {
    print("All Books In Library Man is:");
    b1.forEach((element) {
      print(element.displayBookinfo());
    });
  }

  //to remove specific book
  void removeBook() {
    print("Enter the book_id of the book you want to remove:");
    stdout.write("book_id: ");
    int bookId = int.parse(stdin.readLineSync()!);

    // Find the book with the given ID
    Book? bookToRemove;
    for (Book book in b1) {
      if (book.book_id == bookId) {
        bookToRemove = book;
        break;
      }
    }

    if (b1.contains(bookToRemove)) {
      b1.remove(bookToRemove);
      print("Book removed successfully!");
    } else {
      print("Book with id ($bookId) not found the any book with this id :");
    }
  }
}
