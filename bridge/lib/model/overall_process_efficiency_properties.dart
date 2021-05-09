part of swagger.api;

class OverallProcessEfficiencyProperties {
  
  double ope = null;

  double performance = null;

  double processAvailability = null;

  double productionProcessRatio = null;

  double quality = null;

  double schedulingEfficiency = null;

  double setupReduction = null;

  OverallProcessEfficiencyProperties();

  @override
  String toString() {
    return 'OverallProcessEfficiencyProperties[ope=$ope, performance=$performance, processAvailability=$processAvailability, productionProcessRatio=$productionProcessRatio, quality=$quality, schedulingEfficiency=$schedulingEfficiency, setupReduction=$setupReduction, ]';
  }

  OverallProcessEfficiencyProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ope = json['ope'];
    performance = json['performance'];
    processAvailability = json['processAvailability'];
    productionProcessRatio = json['productionProcessRatio'];
    quality = json['quality'];
    schedulingEfficiency = json['schedulingEfficiency'];
    setupReduction = json['setupReduction'];
  }

  Map<String, dynamic> toJson() {
    return {
      'ope': ope,
      'performance': performance,
      'processAvailability': processAvailability,
      'productionProcessRatio': productionProcessRatio,
      'quality': quality,
      'schedulingEfficiency': schedulingEfficiency,
      'setupReduction': setupReduction
     };
  }

  static List<OverallProcessEfficiencyProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<OverallProcessEfficiencyProperties>() : json.map((value) => new OverallProcessEfficiencyProperties.fromJson(value)).toList();
  }

  static Map<String, OverallProcessEfficiencyProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OverallProcessEfficiencyProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OverallProcessEfficiencyProperties.fromJson(value));
    }
    return map;
  }
}
