import 'package:test/test.dart';

import '../bin/main.dart';

main() {
  test('Shiritori 1', () {
    Shiritori game = Shiritori();
    expect(game.words.isEmpty, true);
    expect(game.play('hello'), true);
    expect(game.play('orange'), true);
    expect(game.play('apple'), false);
    expect(game.game_over, true);
    expect(game.play('old'), false);
    expect(game.restart(), 'game restarted');
    expect(game.play('old'), true);
    expect(game.play('dog'), true);
    expect(game.play('jug'), false);
    expect(game.game_over, true);
    expect(game.play('girl'), false);
  });
}
