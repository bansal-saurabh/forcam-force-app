part of swagger.api;

class TotalQuantity {
  /* HAL embedded objects */
  Object embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  TotalQuantityProperties properties = null;

  TotalQuantity();

  @override
  String toString() {
    return 'TotalQuantity[embedded=$embedded, links=$links, pagination=$pagination, properties=$properties, ]';
  }

  TotalQuantity.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    pagination = new CollectionProperties.fromJson(json['pagination']);
    properties = new TotalQuantityProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'pagination': pagination,
      'properties': properties
     };
  }

  static List<TotalQuantity> listFromJson(List<dynamic> json) {
    return json == null ? new List<TotalQuantity>() : json.map((value) => new TotalQuantity.fromJson(value)).toList();
  }

  static Map<String, TotalQuantity> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TotalQuantity>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TotalQuantity.fromJson(value));
    }
    return map;
  }
}
