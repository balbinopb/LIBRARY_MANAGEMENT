import 'dart:io';
import '../models/book.dart';


class BookManagement {
  
  //buku yg udh tersedia di library,  siuu
  List<Book> books = [
  Book(1, 'Laskar Pelangi', 'Andrea Hirata', '9789791227207', true),
  Book(2, 'Bumi Manusia', 'Pramoedya Ananta Toer', '9789799731232', true),
  Book(3, 'Negeri 5 Menara', 'Ahmad Fuadi', '9789791227603', true),
  Book(4, 'Ayat-Ayat Cinta', 'Habiburrahman El Shirazy', '9789791442976', false),
  Book(5, 'Sang Pemimpi', 'Andrea Hirata', '9789791227474', true),
  Book(6, 'Dilan: Dia adalah Dilanku Tahun 1990', 'Pidi Baiq', '9786027870906', false),
  Book(7, 'Supernova: Ksatria, Puteri, dan Bintang Jatuh', 'Dewi Lestari', '9789792227836', true),
  Book(8, 'Perahu Kertas', 'Dewi Lestari', '9789792286482', false),
  Book(9, 'Tetralogi Buru: Anak Semua Bangsa', 'Pramoedya Ananta Toer', '9789799731249', true),
  Book(10, 'Saman', 'Ayu Utami', '9789793780540', true),
];


  void addBook() {
    print('Enter ID:');
    int id = int.parse(stdin.readLineSync()!);
    print('Enter Title:');
    String title = stdin.readLineSync()!;
    print('Enter Author:');
    String author = stdin.readLineSync()!;
    print('Enter ISBN:');
    String isbn = stdin.readLineSync()!;

    Book newBook = Book(id, title, author, isbn, true);
    books.add(newBook);
    print("Book added: ${newBook.tittle}");
  }

  void removeBook() {
    print('Enter ID of book to remove:');
    int id = int.parse(stdin.readLineSync()!);
    books.removeWhere((book) => book.id == id);
    print("Book removed with ID: $id");
  }

  void editBook() {
    print('Enter ID of the book to edit:');
    int id = int.parse(stdin.readLineSync()!);

    var book = books.firstWhere((book) => book.id == id);

    print('Enter new Title (or press Enter to keep "${book.tittle}")');
    String? title = stdin.readLineSync();
    print('Enter new Author (or press Enter to keep "${book.author}")');
    String? author = stdin.readLineSync();
    print('Enter new ISBN (or press Enter to keep "${book.isbn}")');
    String? isbn = stdin.readLineSync();
    print('Is the book available? (yes/no)');
    String availableInput = stdin.readLineSync()!;
    bool available = availableInput.toLowerCase() == 'yes';

    book.tittle = title!.isNotEmpty ? title : book.tittle;
    book.author = author!.isNotEmpty ? author : book.author;
    book.isbn = isbn!.isNotEmpty ? isbn : book.isbn;
    book.available = available;

    print("Book edited: ${book.tittle}");
  }

  void viewBooks() {
    if (books.isEmpty) {
      print("No books available.");
    } else {
      for (var book in books) {
        print(
            "ID: ${book.id}, Title: ${book.tittle}, Author: ${book.author}, ISBN: ${book.isbn}, Available: ${book.available}");
      }
    }
  }
}


