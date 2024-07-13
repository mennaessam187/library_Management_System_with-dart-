class Book {
  String? title;
  String? author;
  double? price;
//int? book_id that diffrance betwean all books
//musn't have two book same id
  int? book_id;
//constructor

  Book(String title, String author, int book_id, double price) {
    this.author = author;
    this.book_id = book_id;
    this.price = price;
    this.title = title;
  }

//methode
  String displayBookinfo() {
    return "The Book That Has ID ($book_id) the author:($author) and price:($price) and title:($title) ";
  }
}
