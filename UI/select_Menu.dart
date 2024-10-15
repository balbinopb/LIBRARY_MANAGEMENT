class MainMenu {
  //main menu
  void displayMainMenu() {
    print('   ====MAIN MENU====  ');
    print('1. Book Management    ');
    print('2. Members Management ');
    print('3. Search/sort        ');
    print('4. exit               ');
  }

  //menu book management
  void bookManagement() {
    print('   ====BOOK MANAGEMENT====  ');
    print('1. Add Book                 ');
    print('2. Remove Book              ');
    print('3. Edit Book                ');
    print('4. View Books               ');
    print('5. exit                     ');
  }

  //menu untuk memebers management
  void membersManagement() {
    print('   ====MEMBERS MANAGEMENT====  ');
    print('1. Add Members                 ');
    print('2. Remove Members              ');
    print('3. Edit Members                ');
    print('4. View Members                ');
    print('5. exit                        ');
  }
  //menu untuk search dan sort
  void searchAndSort() {
    print('   ====SEARCH AND SORT====  ');
    print('1. Search                   ');
    print('2. sort                     ');
    print('3. exit                     ');
  }

  //hapus atau clear screen
  void clearScreen() {
    print("\x1B[2J\x1B[0;0H");
  }
}
