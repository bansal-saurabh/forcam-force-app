part of swagger.api;

class CollectionProperties {
  /* Number of elements currently on this page */
  int count = null;

  PaginationIdentifier firstIdentifier = null;

  PaginationIdentifier lastIdentifier = null;
/* Size of the page */
  int limit = null;
/* Offset of the page */
  int offset = null;
/* Total amount of elements */
  int total = null;

  CollectionProperties();

  @override
  String toString() {
    return 'CollectionProperties[count=$count, firstIdentifier=$firstIdentifier, lastIdentifier=$lastIdentifier, limit=$limit, offset=$offset, total=$total, ]';
  }

  CollectionProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    count = json['count'];
    firstIdentifier = new PaginationIdentifier.fromJson(json['firstIdentifier']);
    lastIdentifier = new PaginationIdentifier.fromJson(json['lastIdentifier']);
    limit = json['limit'];
    offset = json['offset'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count,
      'firstIdentifier': firstIdentifier,
      'lastIdentifier': lastIdentifier,
      'limit': limit,
      'offset': offset,
      'total': total
     };
  }

  static List<CollectionProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<CollectionProperties>() : json.map((value) => new CollectionProperties.fromJson(value)).toList();
  }

  static Map<String, CollectionProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CollectionProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CollectionProperties.fromJson(value));
    }
    return map;
  }
}
