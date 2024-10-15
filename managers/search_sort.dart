import '../models/book.dart';

class SearchSort {
  List<Book> books;

  SearchSort(this.books); //konstruktorrr

  // Search by titleee
  Book? searchBookByTitle(String title) {

    for (var book in books) {
      if (book.tittle.toLowerCase() == title.toLowerCase()) {
        return book;
      }
    }

    //if not found then
    print("Book with title '$title' not found.");
    return null;

  }

  // Sort by titleee
  void sortBooksByTitle() {

    for (int i = 1; i < books.length; i++) {
      Book key = books[i];
      int j = i - 1;

      while (j >= 0 && books[j].tittle.compareTo(key.tittle) > 0) {
        books[j + 1] = books[j];
        j--;
      }
      books[j + 1] = key;
    }

  }

}
