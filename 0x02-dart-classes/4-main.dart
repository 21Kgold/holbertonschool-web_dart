import '4-mutables.dart';
void main() {
  final passcode = Password(password: "Passwordecode");
  print(passcode.isValid());
  print(passcode.toString());
  passcode.password = "Youssef4321";
  print(passcode.isValid());
  print(passcode.toString());
}
