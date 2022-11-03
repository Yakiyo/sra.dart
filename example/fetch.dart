import 'package:sra/sra.dart' as sra;

void main() async {
  var client = sra.Client();

  var res = await client.fetch('/animal/dog');

  // Check if res is Map or not. If it isn't, then something went wrong.
  if (res is Map) {
    print(res);
  } else {
    throw 'res should be a map since /animal/dog endpoint returns json result';
  }
}
