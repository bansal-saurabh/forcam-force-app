part of swagger.api;

class ShiftTypeCollection {
  
  EmbeddedShiftTypes embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  ShiftTypeCollection();

  @override
  String toString() {
    return 'ShiftTypeCollection[embedded=$embedded, links=$links, pagination=$pagination, ]';
  }

  ShiftTypeCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new EmbeddedShiftTypes.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    pagination = new CollectionProperties.fromJson(json['pagination']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'pagination': pagination
     };
  }

  static List<ShiftTypeCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<ShiftTypeCollection>() : json.map((value) => new ShiftTypeCollection.fromJson(value)).toList();
  }

  static Map<String, ShiftTypeCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ShiftTypeCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ShiftTypeCollection.fromJson(value));
    }
    return map;
  }
}
