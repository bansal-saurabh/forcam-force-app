part of swagger.api;

class ProductionOrderSchedulingResultPropertiesWSModel {
  
  DateTime scheduledStartDate = null;

  DateTime scheduledEndDate = null;

  List<ProductionOrderScheduledDates> elements = [];

  ProductionOrderSchedulingResultPropertiesWSModel();

  @override
  String toString() {
    return 'ProductionOrderSchedulingResultPropertiesWSModel[scheduledStartDate=$scheduledStartDate, scheduledEndDate=$scheduledEndDate, elements=$elements, ]';
  }

  ProductionOrderSchedulingResultPropertiesWSModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    scheduledStartDate = json['scheduledStartDate'] == null ? null : DateTime.parse(json['scheduledStartDate']);
    scheduledEndDate = json['scheduledEndDate'] == null ? null : DateTime.parse(json['scheduledEndDate']);
    elements = ProductionOrderScheduledDates.listFromJson(json['elements']);
  }

  Map<String, dynamic> toJson() {
    return {
      'scheduledStartDate': scheduledStartDate == null ? '' : scheduledStartDate.toUtc().toIso8601String(),
      'scheduledEndDate': scheduledEndDate == null ? '' : scheduledEndDate.toUtc().toIso8601String(),
      'elements': elements
     };
  }

  static List<ProductionOrderSchedulingResultPropertiesWSModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<ProductionOrderSchedulingResultPropertiesWSModel>() : json.map((value) => new ProductionOrderSchedulingResultPropertiesWSModel.fromJson(value)).toList();
  }

  static Map<String, ProductionOrderSchedulingResultPropertiesWSModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProductionOrderSchedulingResultPropertiesWSModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ProductionOrderSchedulingResultPropertiesWSModel.fromJson(value));
    }
    return map;
  }
}
