part of swagger.api;

class QualityDetailCollection {
  
  EmbeddedQualityDetails embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  QualityDetailCollection();

  @override
  String toString() {
    return 'QualityDetailCollection[embedded=$embedded, links=$links, pagination=$pagination, ]';
  }

  QualityDetailCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new EmbeddedQualityDetails.fromJson(json['_embedded']);
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

  static List<QualityDetailCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<QualityDetailCollection>() : json.map((value) => new QualityDetailCollection.fromJson(value)).toList();
  }

  static Map<String, QualityDetailCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QualityDetailCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QualityDetailCollection.fromJson(value));
    }
    return map;
  }
}
