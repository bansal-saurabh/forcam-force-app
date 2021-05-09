part of swagger.api;

class OverallEquipmentEfficiencyProperties {
  
  double availability = null;

  double oee = null;

  double performance = null;

  double quality = null;

  OverallEquipmentEfficiencyProperties();

  @override
  String toString() {
    return 'OverallEquipmentEfficiencyProperties[availability=$availability, oee=$oee, performance=$performance, quality=$quality, ]';
  }

  OverallEquipmentEfficiencyProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    availability = json['availability'];
    oee = json['oee'];
    performance = json['performance'];
    quality = json['quality'];
  }

  Map<String, dynamic> toJson() {
    return {
      'availability': availability,
      'oee': oee,
      'performance': performance,
      'quality': quality
     };
  }

  static List<OverallEquipmentEfficiencyProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<OverallEquipmentEfficiencyProperties>() : json.map((value) => new OverallEquipmentEfficiencyProperties.fromJson(value)).toList();
  }

  static Map<String, OverallEquipmentEfficiencyProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OverallEquipmentEfficiencyProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OverallEquipmentEfficiencyProperties.fromJson(value));
    }
    return map;
  }
}
