class User {
    int id;
    String name;
    int age;
    double height;
    

    // initialize class fields
    User({required this.id, required this.name, required this.age, required this.height});

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
            id: userJson['id'],
            name: userJson['name'],
            age: userJson['age'],
            height: userJson['height']
        );
    }

    String toString() {
        return 'User(id : ${id} ,name: ${name}, age: ${age}, height: ${height})';
    }

    String showName() {
        return 'Hello $name';
    }
}
