void main() {
  Book book1 = Book("Seerat Mustafa(S.A.W)", "Molana Idrees Kahandahawli", 856, true); 
  Book book2 = Book("Ar-Raheequl-Makhtoom", "Hazrat", 658, true);
  Member member1 = Member("Hasnain Ali", 345);

 Library library = Library();

 library.addBooks(book1);
 library.addBooks(book2);

 library.displayBooks();

 library.loanBooks(book1, member1);
 library.displayBooks();


}

class Book {
  String title;
  String author;
  int isbn;
  bool isAvailable;

  Book(this.title, this.author, this.isbn, this.isAvailable);

}

class Library {
  List<Book> books = [];
  List<Loan> loans = [];

  void loanBooks(Book book, Member member){
    book.isAvailable = false;
    loans.add(Loan(book, member, DateTime.now()));
  }

  void addBooks(Book book) {
   books.add(book);
  }

  void displayBooks(){
    print("------- All Books -------");
    for(var book in books) {
    print("Title: ${book.title} Author: ${book.author} isbn: ${book.isbn} isAvailable: ${book.isAvailable}");
    }
    print("------- - - - -------");
  }
}

class Member {
  String name;
  int memberId;

 Member(this.name, this.memberId);
}

class Loan {
  Book book;
  Member member;
  DateTime loanDate;
  DateTime? returnDate;

  Loan(this.book, this.member, this.loanDate, [this.returnDate]);

  void returnBook(Book book){
    returnDate = DateTime.now();
    book.isAvailable = true;
  }
}

