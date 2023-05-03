import 'dart:convert' show jsonDecode;
import 'package:http/http.dart' show get;
import './endpoint.dart';
import './util.dart';

/// Base class to interact with the api
class Client {
  final baseUrl = 'some-random-api.com';
  late final Map<String, Endpoint> endpoints;
  late final String? apiKey;

  /// Pass the api key if available on constructing. If its provided, the key
  /// is passed along all the requests. If no key is provided, premium endpoints
  /// will throw an error.
  Client([this.apiKey]) {
    _loadEndpoints();
  }

  void _loadEndpoints() {
    endpoints = <String, Endpoint>{};
    loadEndpoints(endpoints);
  }

  /// Fetch data from an endpoint
  ///
  /// path - the endpoint to fetch from, endpoint must include its category
  /// example: '/img/dog'
  /// query - a map of query parameters to be passed along with the request.
  Future<Object> fetch(String path, [Map<String, String>? query]) async {
    if (!path.startsWith('/')) {
      path = '/$path';
    }
    if (!endpoints.containsKey(path)) {
      throw "Invalid endpoint provided.";
    }
    var endpoint = endpoints[path] as Endpoint;
    if (query != null && apiKey != null) {
      query['key'] = apiKey as String;
    }
    var url = Uri.https(baseUrl, path, query);
    _validateRequest(endpoint, query);
    try {
      var res = await get(url);
      var type = res.headers['content-type'] ?? 'application/json';
      if (type.contains('application/json')) {
        var out = jsonDecode(res.body);
        if (out['error'] != null) {
          throw out['error'];
        } else if (res.statusCode != 200) {
          throw 'Internal error when fetching from api. Got status code ${res.statusCode}';
        }
        return out;
      } else if (type.contains('image')) {
        return res.bodyBytes;
      }
      // Dart throws error if a default return is not provided. As long as the api works, the
      // return type should always be either a json or image data and this would not be required.
      throw 'Unexpected error, api did not return expected type. Got $res';
    } catch (e) {
      rethrow;
    }
  }

  // This was messy af to write
  void _validateRequest(Endpoint endpoint, Map<String, String>? query) {
    if (endpoint.isPremium && apiKey == null) {
      throw 'Endpoint \'${endpoint.path}\' is premium and requires an api key to work';
    }
    if (endpoint.query.isNotEmpty) {
      if (query == null || query.isEmpty) {
        throw 'Endpoint "${endpoint.path}" requires query parameters but was provided none';
      }
      var keys = endpoint.query.keys;
      for (final key in keys) {
        final k = endpoint.query[key] as EndpointQuery;
        if (k.required && !query.containsKey(k.key)) {
          throw 'Query parameter ${k.key} is required but was not provided';
        }
      }
    }
  }
}
