import 'dart:io';
import 'dart:math';

class Lucky {
  late int number;
  late int min, max;
  Lucky()
      : min = int.parse(Platform.environment['MIN'] ?? '1'),
        max = int.parse(Platform.environment['MAX'] ?? '100') {
    number = randomNumberBetweenTwoValues(min: min, max: max);
  }

  int randomNumberBetweenTwoValues({required int min, required int max}) {
    var random = Random();
    return random.nextInt(max - min + 1) + min;
  }
}
