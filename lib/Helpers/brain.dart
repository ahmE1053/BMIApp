import 'dart:math';

class Brain {
  Brain(this.height, this.weight) : _bmi = weight / pow(height / 100, 2);
  final int height;
  final int weight;
  final double _bmi;
  String bmiRounder() {
    return _bmi.toStringAsFixed(1);
  }

  String getResultTitle() {
    if (_bmi > 25) {
      return 'Overweight'.toUpperCase();
    } else if (_bmi > 18) {
      return 'normal'.toUpperCase();
    } else {
      return 'Underweight'.toUpperCase();
    }
  }

  String getResultDesc() {
    if (_bmi > 25) {
      return 'Eat Less'.toUpperCase();
    } else if (_bmi > 18) {
      return 'You\'re perfect'.toUpperCase();
    } else {
      return 'Eat More'.toUpperCase();
    }
  }
}
