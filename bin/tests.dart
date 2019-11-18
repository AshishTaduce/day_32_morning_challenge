import 'package:test/test.dart';
import 'main.dart';
main(){
  test('Shiritori 1', (){
    expect(Shiritori().words.isEmpty, true);
    expect(Shiritori().play('hello'), true);
    expect(Shiritori().words.isEmpty, false);
    expect(Shiritori().play('nice'), false);
    expect(Shiritori().restart(), "game restarted");
    expect(Shiritori().play('hello'), true);
    expect(Shiritori().words.isEmpty, false);
    expect(Shiritori().play('old'), true);
    expect(Shiritori().words.isEmpty, false);
    expect(Shiritori().play('demo'), true);
    expect(Shiritori().words.isEmpty, false);
    expect(Shiritori().play('nice'), false);
  });}