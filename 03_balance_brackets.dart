import 'dart:io';

void main(List<String> arguments) {
  String input = getInput('Input: ');

  String result = isBalance(input);
  print(result);
}

String isBalance(String input) {
  // map untuk pencocokan tanda kurung
  Map<String, String> parentheses = {
    ')': '(',
    ']': '[',
    '}': '{',
  };
  // inisialisasi stack untuk menyimpan tanda kurung buka
  List<String> stack = [];
  // menghapus whitespace dari input
  input = input.replaceAll(' ', '');

  for (var element in input.split('')) {
    // jika element = kurung buka, tambah ke stack
    if (parentheses.containsValue(element)) {
      stack.add(element);
    }
    // jika karakter adalah kurung tutup
    else if (parentheses.containsKey(element)) {
      // cek apakah stack kosong, atau tanda kurung tidak sesuai pasangan.
      // jika kondisi terpenuhi, return "NO".
      // jika tidak terpenuhi, return "YES"
      return (stack.isEmpty || stack.removeLast() != parentheses[element])
          ? "NO"
          : "YES";
    }
  }

  // jika masih ada tanda kurung di stack, return "NO"
  // jika kosong, return "YES"
  return stack.isEmpty ? "YES" : "NO";
}

// fungsi untuk mendapat input
String getInput(String prompt) {
  while (true) {
    stdout.write(prompt);
    try {
      String? input = stdin.readLineSync();
      if (input == null || input.isEmpty) {
        print('Input cannot be empty');
        continue;
      }

      return input;
    } catch (e) {
      print('Error Input: $e');
      continue;
    }
  }
}
