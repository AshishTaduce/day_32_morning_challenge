import 'package:test/test.dart';
import 'main.dart';
main(){
  test('Shiritori 1', (){
    expect(Shiritori,true);
    expect(Shiritori().words.isEmpty, true);
    expect(Shiritori().play('hello'), true);
    expect(Shiritori().words.isEmpty, false);
    expect(Shiritori().play('hello'), false);
  });}