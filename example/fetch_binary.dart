import 'package:sra/sra.dart' as sra;
import 'dart:io' as io;

void main() async {
  var client = sra.Client();

  var res = await client.fetch('/canvas/misc/youtube-comment', {
    'avatar':
        'https://cdn.discordapp.com/avatars/235148962103951360/ed3dac3b6e7a851df781632a4295fcb9.png?size=1024',
    // No, I wasn't paid to advertise carl, I just like it myself.
    'comment': 'Visit https://carl.gg',
    'username': 'Carl'
  });

  // Endpoints that return binary data (image files) will always return
  // a List<U8int> object. If it isn't a list, then something went wrong
  if (res is List<int>) {
    // Write the result to a file.
    io.File("./img.png").writeAsBytesSync(res);
  } else {
    throw 'Unexpected error. Received $res';
  }
}
