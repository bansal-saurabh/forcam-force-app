part of swagger.api;

class PaginationIdentifier {
  /* Identifier which makes the pagination entry unique. */
  String identifier = null;
/* Pagination timestamp. */
  DateTime timestamp = null;

  PaginationIdentifier();

  @override
  String toString() {
    return 'PaginationIdentifier[identifier=$identifier, timestamp=$timestamp, ]';
  }

  PaginationIdentifier.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    identifier = json['identifier'];
    timestamp = json['timestamp'] == null ? null : DateTime.parse(json['timestamp']);
  }

  Map<String, dynamic> toJson() {
    return {
      'identifier': identifier,
      'timestamp': timestamp == null ? '' : timestamp.toUtc().toIso8601String()
     };
  }

  static List<PaginationIdentifier> listFromJson(List<dynamic> json) {
    return json == null ? new List<PaginationIdentifier>() : json.map((value) => new PaginationIdentifier.fromJson(value)).toList();
  }

  static Map<String, PaginationIdentifier> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PaginationIdentifier>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PaginationIdentifier.fromJson(value));
    }
    return map;
  }
}
