part of swagger.api;

class HitListOperatingStateMaterial {
  /* HAL embedded objects */
  Object embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  HitListOperatingStateMaterialProperties properties = null;

  HitListOperatingStateMaterial();

  @override
  String toString() {
    return 'HitListOperatingStateMaterial[embedded=$embedded, links=$links, pagination=$pagination, properties=$properties, ]';
  }

  HitListOperatingStateMaterial.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    pagination = new CollectionProperties.fromJson(json['pagination']);
    properties = new HitListOperatingStateMaterialProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'pagination': pagination,
      'properties': properties
     };
  }

  static List<HitListOperatingStateMaterial> listFromJson(List<dynamic> json) {
    return json == null ? new List<HitListOperatingStateMaterial>() : json.map((value) => new HitListOperatingStateMaterial.fromJson(value)).toList();
  }

  static Map<String, HitListOperatingStateMaterial> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HitListOperatingStateMaterial>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HitListOperatingStateMaterial.fromJson(value));
    }
    return map;
  }
}
