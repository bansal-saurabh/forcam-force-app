part of swagger.api;

class Material {
  /* HAL embedded objects */
  Object embedded = null;
/* Contains the linked resources: description */
  Object links = null;

  MaterialProperties properties = null;

  Material();

  @override
  String toString() {
    return 'Material[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  Material.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new MaterialProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<Material> listFromJson(List<dynamic> json) {
    return json == null ? new List<Material>() : json.map((value) => new Material.fromJson(value)).toList();
  }

  static Map<String, Material> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Material>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Material.fromJson(value));
    }
    return map;
  }
}
