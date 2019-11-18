import 'package:test/test.dart';

import 'main.dart';

main(){
test('Shiritori 1', (){
Shiritori game = Shiritori();
expect(game.words.isEmpty, true);
expect(game.play('hello'), true);
expect(game.words.isEmpty, false);
expect(game.play('nice'), false);
expect(game.restart(), "game restarted");
expect(game.play('hello'), true);
expect(game.words.isEmpty, false);
expect(game.play('old'), true);
expect(game.words.isEmpty, false);
expect(game.play('demo'), true);
expect(game.words.isEmpty, false);
expect(game.play('nice'), false);
});}