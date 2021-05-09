part of swagger.api;

class DocumentState {
  /* HAL embedded objects */
  Object embedded = null;
/* HAL link objects */
  Object links = null;

  DocumentStateProperties properties = null;

  DocumentState();

  @override
  String toString() {
    return 'DocumentState[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  DocumentState.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new DocumentStateProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<DocumentState> listFromJson(List<dynamic> json) {
    return json == null ? new List<DocumentState>() : json.map((value) => new DocumentState.fromJson(value)).toList();
  }

  static Map<String, DocumentState> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DocumentState>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DocumentState.fromJson(value));
    }
    return map;
  }
}
