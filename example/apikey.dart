import 'dart:io' show Platform;
import 'package:sra/sra.dart' as sra;

void main() async {
  var env = Platform.environment; // Import the env variables
  // Initialize the client with an api on contructing it
  var client = sra.Client(env['SRA_TOKEN']);
  // You can access premium commands with it now. Otherwise it would have thrown an error.
  client.fetch('/premium/amongus', {
    'avatar':
        'https://cdn.discordapp.com/avatars/235148962103951360/ed3dac3b6e7a851df781632a4295fcb9.png?size=1024',
    'username': 'Carl',
    'custom': 'Yeet'
  });
}
