part of swagger.api;

class QualityTypes {
  
  EmbeddedQualityTypes embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  QualityTypes();

  @override
  String toString() {
    return 'QualityTypes[embedded=$embedded, links=$links, pagination=$pagination, ]';
  }

  QualityTypes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new EmbeddedQualityTypes.fromJson(json['_embedded']);
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

  static List<QualityTypes> listFromJson(List<dynamic> json) {
    return json == null ? new List<QualityTypes>() : json.map((value) => new QualityTypes.fromJson(value)).toList();
  }

  static Map<String, QualityTypes> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QualityTypes>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QualityTypes.fromJson(value));
    }
    return map;
  }
}
