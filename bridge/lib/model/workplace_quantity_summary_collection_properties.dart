part of swagger.api;

class WorkplaceQuantitySummaryCollectionProperties {
  /* The performance rate of the workplace during the selected time period. */
  double performance = null;
/* The time based quality rate of the work-place during the selected time period. */
  double timeBasedQualityRate = null;
/* The quantity based quality rate of the work-place during the selected time period. */
  double quantityBasedQualityRate = null;

  List<WorkplaceQuantitySummaryDetailProperties> elements = [];

  WorkplaceQuantitySummaryCollectionProperties();

  @override
  String toString() {
    return 'WorkplaceQuantitySummaryCollectionProperties[performance=$performance, timeBasedQualityRate=$timeBasedQualityRate, quantityBasedQualityRate=$quantityBasedQualityRate, elements=$elements, ]';
  }

  WorkplaceQuantitySummaryCollectionProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    performance = json['performance'];
    timeBasedQualityRate = json['timeBasedQualityRate'];
    quantityBasedQualityRate = json['quantityBasedQualityRate'];
    elements = WorkplaceQuantitySummaryDetailProperties.listFromJson(json['elements']);
  }

  Map<String, dynamic> toJson() {
    return {
      'performance': performance,
      'timeBasedQualityRate': timeBasedQualityRate,
      'quantityBasedQualityRate': quantityBasedQualityRate,
      'elements': elements
     };
  }

  static List<WorkplaceQuantitySummaryCollectionProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<WorkplaceQuantitySummaryCollectionProperties>() : json.map((value) => new WorkplaceQuantitySummaryCollectionProperties.fromJson(value)).toList();
  }

  static Map<String, WorkplaceQuantitySummaryCollectionProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WorkplaceQuantitySummaryCollectionProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WorkplaceQuantitySummaryCollectionProperties.fromJson(value));
    }
    return map;
  }
}
