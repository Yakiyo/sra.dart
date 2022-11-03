# SRA - Some Random Api
[![CI](https://github.com/Yakiyo/sra.dart/actions/workflows/ci.yml/badge.svg)]() [![Pub Package](https://img.shields.io/pub/v/sra.svg)](https://pub.dev/packages/sra)

Minimal Dart wrapper to interact with [Some Random Api](https://some-random-api.ml). Easy to use, simplified and lightweight.

## Getting started

Add the package to your project.
```bash
$ dart pub add sra
```

## Usage

Import the package to your file/project.

```dart
import 'package:sra/sra.dart' as sra;
```
The package exports a base `Client` class which is the central spot for interacting with the api. The client class itself has only one public method `fetch`.
```dart
import 'package:sra/sra.dart' show Client;

void main() async {
    var client = Client();
    // Optionally pass the api key on class initiation
    // Example: Client(apiKey);
    var res = await client.fetch('/animal/dog');
    print(res);
}
```
The fetch method takes 1 mandatory argument of type String, the endpoint path. You can optionally pass query parameters to the function (if the endpoint requires so). For endpoints that have some required parameters, if you don't specify one of them, the function throws an error.
```dart
// Fetching with parameters
client.fetch('/canvas/misc/oogway', {
    'quote': 'Nothing is a mistake'
});
// The endpoint doesn't need any parameters so we don't
// need to provide anything else
client.fetch('/animal/dog');
// This throws an error, because the lied endpoint
// requires a mandatory parameter called 'avatar' which
// is not specified here, so it'll throw an error.
client.fetch('/canvas/misc/lied', {
    'username': 'Yakiyo'
});
```
The fetch method returns `Object` which can be one of the two types, a `Map<String, String>` or `List<int>`. Endpoints that return a json result return Map, while endpoints that return PNG images return a `List<U8int>` or a buffer that can be used to write to a file (see [fetch_binary.dart](./example/fetch_binary.dart)). Detailed usages can be found in the [example/](./example/) directory. Feel free to ping me (Yakiyo#1206) in the [SRA Discord Server](https://discord.gg/tTUMWFd) for help, questions or anything.

All valid endpoints and their required/optional arguments are availabale in [SRA docs](https://some-random-api.ml/docs). Currently only the [Rank Card](https://some-random-api.ml/docs/premium#rank-card), [Welcome Image (premium)](https://some-random-api.ml/docs/premium#welcome-images) and [Welcome Image (free)](https://some-random-api.ml/docs/welcome#welcome-images%20(free)) are unavailable in the package. To be added soon:tm:.
## Contribution and Issues

For any issues or bugs, please file a new issue [here](https://github.com/Yakiyo/sra.dart/issues/).

All contributions are welcome. Before creating a Pull Request or working on a new feature, please open up an issue so that it can be discussed.

## Author
**sra.dart** © [Yakiyo](https://github.com/Yakiyo). Authored and maintained by Yakiyo.

Released under [MIT](https://opensource.org/licenses/MIT) License
