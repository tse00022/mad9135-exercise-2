import 'package:exercise2/exercise2.dart';

void main(List<String> arguments) {
  for (var arg in arguments) {
    print(
        'Hello ${arg[0].toUpperCase() + arg.substring(1)}. Your lucky number is ${Lucky().number}');
  }
}
