class User {
    String name;
    int age;
    double height;

    // initialize class fields
    User({required this.name, required this.age, required this.height});

    Map toJson() {
        Map data = {
            'name': name,
            'age': age,
            'height': height,
        };
        return data;
    }
}