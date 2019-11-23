// Challenge
// Shiritori Game
// This challenge is an English twist on the Japanese word game Shiritori.
// The basic premise is to follow two rules:
//
// 1. First character of next word must match last character of previous word.
// 2. The word must not have already been said.

// Write a Shiritori class that has two instance properties:
// - words: a list of words already said.
// - game_over: a boolean that is true if the game is over.
//  and two instance methods:
//
// - play: a method that takes in a word as an argument and checks if it is valid
// (the word should follow rules #1 and #2 above).
// - restart: a method that sets the words list to an empty one [] and sets the
// game_over boolean to false. It should return "game restarted".
//TODO implement proper restart
class Shiritori{
  List<String> words = [];
  List emptyList = [];

  bool game_over = false;

  bool play(String word,) {
    if (game_over) {
      print('game is over, please restart.');
      return false;
    }

    if (words.isEmpty) {
      print(words);
      words.add(word);
      return true;
    }
    else if ((!words.contains(word) &&
        word[0] == words.last[words.last.length - 1])) {
      print('entered add word $word');
      words.add(word);
      game_over = false;
      print(word);
      print(words);
      return true;
    }
    else {
      print('Invalid Input Game Over');
      game_over = true;
      return false;
    }
  }

  String restart() {
    game_over = false;
    words = [];
    return 'game restarted';
  }
}

main() {
}
