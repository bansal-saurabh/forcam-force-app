part of swagger.api;

class HitListOperatingStateMaterialProperties {
  
  List<HitListOperatingStateMaterialEntry> elements = [];

  HitListOperatingStateMaterialProperties();

  @override
  String toString() {
    return 'HitListOperatingStateMaterialProperties[elements=$elements, ]';
  }

  HitListOperatingStateMaterialProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    elements = HitListOperatingStateMaterialEntry.listFromJson(json['elements']);
  }

  Map<String, dynamic> toJson() {
    return {
      'elements': elements
     };
  }

  static List<HitListOperatingStateMaterialProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<HitListOperatingStateMaterialProperties>() : json.map((value) => new HitListOperatingStateMaterialProperties.fromJson(value)).toList();
  }

  static Map<String, HitListOperatingStateMaterialProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HitListOperatingStateMaterialProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HitListOperatingStateMaterialProperties.fromJson(value));
    }
    return map;
  }
}
