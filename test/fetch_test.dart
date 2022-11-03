import 'package:test/test.dart';
import 'package:sra/sra.dart';

void main() {
  var client = Client();

  test('Test Fetch', () async {
    var res = await client.fetch('/animal/dog');

    if (res is Map) {
      assert(res.isNotEmpty, true);
    } else {
      throw 'Res was not map. got $res';
    }
  });
}
