import '6-inheritance.dart';

void main() {
  final djo = User(
      id: 1, name: "Djo", age: 25, height: 1.89, user_password: "Azert23defd1");
  print('<===========Json=========>:');
  print('\n');
  print(djo.toJson());
  Map map = {
    'id': 3,
    'name': 'Youssef',
    'age': 26,
    'height': 1.9,
    'user_password': "Azert23defd2"
  };
  final youssef = User.fromJson(map);
  print('\n');
  print('<===========Test1===========>:');
  print('\n');
  print(djo.toString());
  print(youssef.toString());
  print('\n');
  print('<===========Test2===========>:');
  print('\n');
  djo.password = "holberton98";
  youssef.user_password = "123TERfgghn";
  print(djo.toString());
  print(youssef.toString());
}

