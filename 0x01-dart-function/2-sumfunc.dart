int add(int a, int b) {
    return a + b;
}

int sub(int a, int b) {
    return a - b;
}

String showFunc(int a, int b) {
    int added = add(a, b);
    int subtracted = sub(a, b);
    String message = 'Add ${a} + ${b} = ${added}\nSub ${a} + ${b} = ${subtracted}';
    return message;
}
