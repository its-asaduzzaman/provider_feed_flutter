class CalFunction {
  double bmiCal(var height, var weight) {
    var result = weight / ((height / 100) * (height / 100));
    print(result);
    return result;
  }
}
