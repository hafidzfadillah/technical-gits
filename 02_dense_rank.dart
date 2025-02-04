import 'dart:io';

void main(List<String> arguments) {
  List<int> scoreList = [];
  List<int> myScores = [];

  int players = getIntInput('How many players: ');

  for (var i = 0; i < players; i++) {
    int score = getIntInput('Enter score No.${i + 1}: ');

    scoreList.add(score);
  }

  scoreList = sortScores(scoreList);
  print('Current Rank');
  print(scoreList.join(' '));

  int playCount = getIntInput('How many times played: ');

  for (var i = 0; i < playCount; i++) {
    int score = getIntInput('Enter score No.${i + 1}: ');

    myScores.add(score);
  }

  print('My Scores');
  print(myScores.join(' '));

  for (int score in myScores) {
    int rank = checkRank(scoreList, score);
    print('$score = Rank $rank');
  }
}

List<int> sortScores(List<int> arrInput) {
  List<int> arrOut = arrInput;

  for (var i = 0; i < arrOut.length; i++) {
    int key = arrOut[i];
    int j = i - 1;

    while (j >= 0 && arrOut[j] < key) {
      arrOut[j + 1] = arrOut[j];
      j -= 1;
    }

    arrOut[j + 1] = key;
  }

  return arrOut;
}

int checkRank(List<int> currentRule, int score) {
  // jika skor yang dicek >= item pertama (skor tertinggi) 
  // pada currentRule, return 1 (skor = new max)
  if (score >= currentRule[0]) {
    return 1;
  }

  int currentRank = 1; // inisialisasi rank
  int prevScore = currentRule[0]; // inisialisasi skor awal

  // iterasi untuk setiap item di currentRule 
  for (int rule in currentRule) {
    // jika skor (rule) yang dicek < prevScore, rank turun 1
    if (rule < prevScore) {
      currentRank += 1;
    }
    // jika score >= skor (rule), return rank
    if (score >= rule) {
      return currentRank;
    }
    prevScore = rule; // rule = prevScore yang baru
  }

  return currentRank + 1;
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