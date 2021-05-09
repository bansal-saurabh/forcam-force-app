part of swagger.api;

class ErpContext {
  /* HAL embedded objects */
  Object embedded = null;
/* HAL link objects */
  Object links = null;

  ErpContextProperties properties = null;

  ErpContext();

  @override
  String toString() {
    return 'ErpContext[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  ErpContext.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new ErpContextProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<ErpContext> listFromJson(List<dynamic> json) {
    return json == null ? new List<ErpContext>() : json.map((value) => new ErpContext.fromJson(value)).toList();
  }

  static Map<String, ErpContext> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ErpContext>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ErpContext.fromJson(value));
    }
    return map;
  }
}
