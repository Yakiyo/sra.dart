import 'package:sra/sra.dart' as sra;
import 'dart:io' as io;

void main() async {
  var client = sra.Client();

  // Pass the query parameters as Map<String, String> to the function
  var res = await client.fetch('/canvas/overlay/glass', {
    'avatar':
        'https://cdn.discordapp.com/avatars/235148962103951360/ed3dac3b6e7a851df781632a4295fcb9.png?size=1024',
  });
  if (res is List<int>) {
    // Write the result to a file.
    io.File("./img.png").writeAsBytesSync(res);
  } else {
    throw 'Unexpected error. Received $res';
  }
}
