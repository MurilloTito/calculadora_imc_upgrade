double? calculateIMC(double weight, double height) {
  if (weight != 0 && height != 0) {
    return weight / (height * height);
  } else {
    return null;
  }
}