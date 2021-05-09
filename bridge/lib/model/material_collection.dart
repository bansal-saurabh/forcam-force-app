part of swagger.api;

class MaterialCollection {
  
  EmbeddedMaterials embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  MaterialCollection();

  @override
  String toString() {
    return 'MaterialCollection[embedded=$embedded, links=$links, pagination=$pagination, ]';
  }

  MaterialCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new EmbeddedMaterials.fromJson(json['_embedded']);
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

  static List<MaterialCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<MaterialCollection>() : json.map((value) => new MaterialCollection.fromJson(value)).toList();
  }

  static Map<String, MaterialCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MaterialCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MaterialCollection.fromJson(value));
    }
    return map;
  }
}
