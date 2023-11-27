import 'package:untitled/Book.dart';

void main() {
  List<Book> books = [];
  Book book1 = Book(
    name: "Dark House",
    description: "horror",
    id: 10,
    numberOfPages: 220,
  );
  books.add(book1);

  Book book2 = Book(
    name: "book2",
    description: "description book2",
    id: 20,
    numberOfPages: 300,
  );
  books.add(book2);

  Book book3 = Book(
    name: "book3",
    description: "description book3",
    id: 30,
    numberOfPages: 500,
  );
  books.add(book3);

  Book book4 = Book(
    name: "book4",
    description: "description book4",
    id: 40,
    numberOfPages: 100,
  );
  books.add(book4);

  Book book5 = Book(
    name: "book5",
    description: "description book5",
    id: 50,
    numberOfPages: 150,
  );
  books.add(book5);


  for(Book book in books){
    print('Name : ${book.name}');
    print('Description : ${book.description}');
    print('ID : ${book.id}');
    print('Number Of Pages : ${book.numberOfPages}');
    print('=======================');
  }
}
