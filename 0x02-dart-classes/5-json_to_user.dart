class User {
    String name;
    int age;
    double height;
    int id;

    // initialize class fields
    User({required this.name, required this.age, required this.height, required this.id});

    Map toJson() {
        Map data = {
            'name': name,
            'age': age,
            'height': height,
            'id': id
        };
        return data;
    }

    static User fromJson(Map<dynamic, dynamic> userJson) {
        // Create and return a User object
        return User(
            name: userJson['name'],
            age: userJson['age'],
            height: userJson['height'],
            id: userJson['id']
        );
    }

    String toString() {
        return 'User(id : ${id} ,name: ${name}, age: ${age}, height: ${height})';
    }

    String showName() {
        return 'Hello $name';
    }
}
