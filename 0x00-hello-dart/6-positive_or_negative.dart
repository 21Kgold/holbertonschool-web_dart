void main(List<String> args) {
    int value = int.parse(args[0]);
    if (value < 0) {print('${value} is negative');}
    else if (value == 0) {print('${value} is zero');}
    else {print('${value} is positive');}
}
