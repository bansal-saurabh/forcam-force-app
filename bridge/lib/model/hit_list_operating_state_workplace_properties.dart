part of swagger.api;

class HitListOperatingStateWorkplaceProperties {
  
  List<HitListOperatingStateWorkplaceEntry> elements = [];

  HitListOperatingStateWorkplaceProperties();

  @override
  String toString() {
    return 'HitListOperatingStateWorkplaceProperties[elements=$elements, ]';
  }

  HitListOperatingStateWorkplaceProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    elements = HitListOperatingStateWorkplaceEntry.listFromJson(json['elements']);
  }

  Map<String, dynamic> toJson() {
    return {
      'elements': elements
     };
  }

  static List<HitListOperatingStateWorkplaceProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<HitListOperatingStateWorkplaceProperties>() : json.map((value) => new HitListOperatingStateWorkplaceProperties.fromJson(value)).toList();
  }

  static Map<String, HitListOperatingStateWorkplaceProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HitListOperatingStateWorkplaceProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HitListOperatingStateWorkplaceProperties.fromJson(value));
    }
    return map;
  }
}
