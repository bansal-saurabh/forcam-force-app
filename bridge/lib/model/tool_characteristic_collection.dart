part of swagger.api;

class ToolCharacteristicCollection {
  /* HAL embedded objects */
  Object embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  ToolCharacteristicCollectionProperties properties = null;

  ToolCharacteristicCollection();

  @override
  String toString() {
    return 'ToolCharacteristicCollection[embedded=$embedded, links=$links, pagination=$pagination, properties=$properties, ]';
  }

  ToolCharacteristicCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    pagination = new CollectionProperties.fromJson(json['pagination']);
    properties = new ToolCharacteristicCollectionProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'pagination': pagination,
      'properties': properties
     };
  }

  static List<ToolCharacteristicCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<ToolCharacteristicCollection>() : json.map((value) => new ToolCharacteristicCollection.fromJson(value)).toList();
  }

  static Map<String, ToolCharacteristicCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ToolCharacteristicCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ToolCharacteristicCollection.fromJson(value));
    }
    return map;
  }
}
