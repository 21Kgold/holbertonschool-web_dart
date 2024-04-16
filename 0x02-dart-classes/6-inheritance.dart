import '6-password.dart';

class User extends Password {
    int id;
    String name;
    int age;
    double height;
    String? _user_password;
    

    // initialize class fields
    User({required this.id, required this.name, required this.age, required this.height, required String user_password}) :
        super(password: user_password) {
            this._user_password = user_password;
        }

    // Override the setter for user_password to also update _password
    String get user_password {
        return _user_password!;
    }

    void set user_password(String user_password) {
        _user_password = user_password;
        this.password = user_password;
    }

    Map toJson() {
        Map data = {
            'id': id,
            'name': name,
            'age': age,
            'height': height
        };
        return data;
    }

    static User fromJson(Map<dynamic, dynamic> userJson) {
        // Create and return a User object
        return User(
            id: userJson['id'] ?? 0,
            name: userJson['name'] ?? '',
            age: userJson['age'] ?? 0,
            height: userJson['height'] ?? 0,
            user_password: userJson['user_password'] ?? '',
        );
    }

    String toString() {
        return 'User(id : ${id} ,name: ${name}, age: ${age}, height: ${height}, Password: ${super.isValid()})';
    }

    String showName() {
        return 'Hello $name';
    }
}

