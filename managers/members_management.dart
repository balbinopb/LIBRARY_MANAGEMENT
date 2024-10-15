import 'dart:io';
import '../models/members.dart';



class MembersManagement {
  List<Member> members = [];

  void addMember() {
    print('Enter Member ID:');
    int id = int.parse(stdin.readLineSync()!);
    print('Enter Member Name:');
    String name = stdin.readLineSync()!;
    print('Enter Member Email:');
    String email = stdin.readLineSync()!;
    
    Member newMember = Member(id, name, email);
    members.add(newMember);
    print("Member added: ${newMember.name}");
  }

  void removeMember() {
    print('Enter ID of the member to remove:');
    int id = int.parse(stdin.readLineSync()!);
    members.removeWhere((member) => member.id == id);
    print("Member removed with ID: $id");
  }

  void editMember() {
    print('Enter ID of the member to edit:');
    int id = int.parse(stdin.readLineSync()!);
    
    var member = members.firstWhere(
      (member) => member.id == id
    );

    print('Enter new Name (or press Enter to keep "${member.name}"):');
    String? name = stdin.readLineSync();
    print('Enter new Email (or press Enter to keep "${member.email}"):');
    String? email = stdin.readLineSync();

    member.name = name!.isNotEmpty ? name : member.name;
    member.email = email!.isNotEmpty ? email : member.email;

    print("Member edited: ${member.name}");
  }

  void viewMembers() {
    if (members.isEmpty) {
      print("No members available.");
    } else {
      for (var member in members) {
        print("ID: ${member.id}, Name: ${member.name}, Email: ${member.email}");
      }
    }
  }
}


