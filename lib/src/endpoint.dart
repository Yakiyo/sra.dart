/// Represents a Endpoint
///
/// path - the endpoint path
/// isPremium - wether the endpoint is premium or not
/// query - a map of all the arguments of the endpoint
class Endpoint {
  late final Map<String, EndpointQuery> query = {};
  late final bool isPremium;
  late final String path;
  Endpoint(this.path, [List<Map<String, dynamic>>? queries, bool? premium]) {
    if (premium != null) {
      isPremium = premium;
    } else {
      isPremium = false;
    }
    if (queries != null && queries.isNotEmpty) {
      for (var element in queries) {
        var val = EndpointQuery(element);
        query[val.key] = val;
      }
    }
  }
}

/// Represents a class of an Endpoint's query
///
/// Using a class makes it easier then using
/// a map.
/// Key - the query key
/// required - wether the query is must or not
class EndpointQuery {
  late final String key;
  late bool required = false;
  EndpointQuery(Map<String, dynamic> query) {
    key = query['key'] as String;
    var cond = query['required'];
    if (cond is bool) {
      required = cond;
    }
  }
}
