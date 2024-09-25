import 'dart:io';
import 'dart:math';

class Lucky {
  int number = 0;
  Lucky() {
    if (Platform.environment['MIN'] == null) {
      print('Expected environment variable: MIN');
      exit(1);
    }
    if (Platform.environment['MAX'] == null) {
      print('Expected environment variable: MAX');
      exit(1);
    }
    int min = int.parse(Platform.environment['MIN']!);
    int max = int.parse(Platform.environment['MAX']!);
    number = randomNumberBetweenTwoValues(min: min, max: max);
  }

  int randomNumberBetweenTwoValues({required int min, required int max}) {
    var random = Random();
    return random.nextInt(max - min + 1) + min;
  }
}
