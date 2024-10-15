import 'dart:io';
import 'UI/interface.dart';
import 'UI/select_Menu.dart';

void main() {
  MainMenu menu = MainMenu();
  Interface interface=Interface();

  menu.displayMainMenu();

  print("choose: ");
  var choice = int.tryParse(stdin.readLineSync()!);
  switch (choice) {
    case 1:
      interface.UiBookManagement();
    case 2:
      interface.UiMembersManagement();
    case 3:
      interface.UisearchAndSort();
    case 4:
      exit(0);
    default:
      menu.clearScreen();
      menu.displayMainMenu();
  }
}
