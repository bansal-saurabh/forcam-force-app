part of swagger.api;

class OperatingStateCollection {
  
  EmbeddedOperatingStates embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  OperatingStateCollection();

  @override
  String toString() {
    return 'OperatingStateCollection[embedded=$embedded, links=$links, pagination=$pagination, ]';
  }

  OperatingStateCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new EmbeddedOperatingStates.fromJson(json['_embedded']);
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

  static List<OperatingStateCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<OperatingStateCollection>() : json.map((value) => new OperatingStateCollection.fromJson(value)).toList();
  }

  static Map<String, OperatingStateCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OperatingStateCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OperatingStateCollection.fromJson(value));
    }
    return map;
  }
}
