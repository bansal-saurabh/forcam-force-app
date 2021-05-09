part of swagger.api;

class StatusDefinitionCollection {
  
  EmbeddedStatusDefinition embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  StatusDefinitionCollection();

  @override
  String toString() {
    return 'StatusDefinitionCollection[embedded=$embedded, links=$links, pagination=$pagination, ]';
  }

  StatusDefinitionCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new EmbeddedStatusDefinition.fromJson(json['_embedded']);
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

  static List<StatusDefinitionCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<StatusDefinitionCollection>() : json.map((value) => new StatusDefinitionCollection.fromJson(value)).toList();
  }

  static Map<String, StatusDefinitionCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StatusDefinitionCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StatusDefinitionCollection.fromJson(value));
    }
    return map;
  }
}
