import 'package:test/test.dart';
import 'package:sra/sra.dart';

void main() {
  var client = Client();

  test('Test Binary Fetch', () async {
    var res = await client.fetch('/canvas/misc/youtube-comment', {
      'avatar':
          'https://cdn.discordapp.com/avatars/235148962103951360/ed3dac3b6e7a851df781632a4295fcb9.png?size=1024',
      'comment': 'Visit https://carl.gg',
      'username': 'Carl'
    });

    if (res is List) {
      assert(res.isNotEmpty, true);
    } else {
      throw 'Res was not List. got $res';
    }
  });
}
