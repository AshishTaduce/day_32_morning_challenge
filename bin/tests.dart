import 'package:test/test.dart';

import 'main.dart';

main(){
test('Shiritori 1', (){
Shiritori game = Shiritori();
expect(game.words.isEmpty, true);
expect(game.play('hello'), true);
expect(game.words, ['hello']);
expect(game.play('nice'), false);
expect(game.game_over,true);
expect(game.restart(), "game restarted");
expect(game.play('hello'), true);
expect(game.game_over,false);
expect(game.words.isEmpty, false);
expect(game.play('old'), true);
expect(game.words.isEmpty, false);
expect(game.play('demo'), true);
expect(game.words.isEmpty, false);
expect(game.play('old'), false);
expect(game.restart(), "game restarted");
expect(game.play('hello'), true);
expect(game.game_over,false);
expect(game.words.isEmpty, false);
expect(game.play('old'), true);
expect(game.words.isEmpty, false);
expect(game.play('demo'), true);
expect(game.words.isEmpty, false);
expect(game.play('oldie'), true);
expect(game.play('empty'), true);
expect(game.play('yes'), true);
expect(game.play('yes'), false);


});}