import 'dart:io';
import '../managers/book_management.dart';
import '../managers/members_management.dart';
import 'select_Menu.dart';

class Interface {
  MainMenu menu = MainMenu();

  //for book managementtt
  void UiBookManagement() {
    BookManagement bookManagement = BookManagement();

    menu.bookManagement();
    print("choose: ");
    var choice = int.tryParse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        bookManagement.addBook();
      case 2:
        bookManagement.removeBook();
      case 3:
        bookManagement.editBook();
      case 4:
        bookManagement.viewBooks();
      default:
        menu.membersManagement();

    }
  }

  //for memberss management
  void UiMembersManagement() {
    MembersManagement membersManagement = MembersManagement();
    menu.membersManagement();
    print("choose: ");
    var choice = int.tryParse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        membersManagement.addMember();
      case 2:
        membersManagement.removeMember();
      case 3:
        membersManagement.editMember();
      case 4:
        membersManagement.viewMembers();
      default:
        menu.membersManagement();
    }
  }

  //for search and sort
  void UisearchAndSort(){
    print("choose: ");
  }
}
