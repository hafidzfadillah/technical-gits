import 'dart:io';

void main(List<String> arguments) {
  List<int> results = [];

  int input = getIntInput('Enter maximum sequence: ');

  for (int i = 0; i <= input; i++) {
    int out = lazyCaterer(i);
    results.add(out);
  }

  print('Result:');
  print(results.join('-'));
}

int lazyCaterer(int n) {
  int numerator = n * n + n + 2;
  int denumerator = 2;

  // proses pembagian dengan return integer
  return numerator ~/ denumerator;
}

int getIntInput(String prompt) {
  while (true) {
    stdout.write(prompt);
    try {
      String? raw = stdin.readLineSync();
      if (raw == null || raw.isEmpty) {
        print('Enter valid number.');
        continue;
      }

      int out = int.parse(raw);
      if (out <= 0) {
        print('Enter positive number.');
        continue;
      }

      return out;
    } catch (e) {
      print('Enter an integer number.');
    }
  }
}