List<double> convertToF(List<double> temperaturesInC) {
    List<double> output = temperaturesInC.map((number) => double.parse(
        ((number*9/5) + 32).toStringAsFixed(2))).toList();
    return output;
}
