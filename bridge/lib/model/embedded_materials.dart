part of swagger.api;

class EmbeddedMaterials {
  /* The materials */
  List<Material> materials = [];

  EmbeddedMaterials();

  @override
  String toString() {
    return 'EmbeddedMaterials[materials=$materials, ]';
  }

  EmbeddedMaterials.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    materials = Material.listFromJson(json['materials']);
  }

  Map<String, dynamic> toJson() {
    return {
      'materials': materials
     };
  }

  static List<EmbeddedMaterials> listFromJson(List<dynamic> json) {
    return json == null ? new List<EmbeddedMaterials>() : json.map((value) => new EmbeddedMaterials.fromJson(value)).toList();
  }

  static Map<String, EmbeddedMaterials> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EmbeddedMaterials>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EmbeddedMaterials.fromJson(value));
    }
    return map;
  }
}
