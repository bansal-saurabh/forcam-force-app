part of swagger.api;

class WorkplaceQuantitySummaryDetailProperties {
  
  MaterialProperties material = null;

  String quantityUnit = null;

  int targetTimePerUnit = null;

  double timePerUnit = null;

  int productionTime = null;

  TimePeriodDefinition timePeriod = null;

  QuantitiesWithUncategorized quantities = null;

  QuantitiesWithUncategorized unconfirmedQuantities = null;

  double totalQuantity = null;

  WorkplaceQuantitySummaryDetailProperties();

  @override
  String toString() {
    return 'WorkplaceQuantitySummaryDetailProperties[material=$material, quantityUnit=$quantityUnit, targetTimePerUnit=$targetTimePerUnit, timePerUnit=$timePerUnit, productionTime=$productionTime, timePeriod=$timePeriod, quantities=$quantities, unconfirmedQuantities=$unconfirmedQuantities, totalQuantity=$totalQuantity, ]';
  }

  WorkplaceQuantitySummaryDetailProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    material = new MaterialProperties.fromJson(json['material']);
    quantityUnit = json['quantityUnit'];
    targetTimePerUnit = json['targetTimePerUnit'];
    timePerUnit = json['timePerUnit'];
    productionTime = json['productionTime'];
    timePeriod = new TimePeriodDefinition.fromJson(json['timePeriod']);
    quantities = new QuantitiesWithUncategorized.fromJson(json['quantities']);
    unconfirmedQuantities = new QuantitiesWithUncategorized.fromJson(json['unconfirmedQuantities']);
    totalQuantity = json['totalQuantity'];
  }

  Map<String, dynamic> toJson() {
    return {
      'material': material,
      'quantityUnit': quantityUnit,
      'targetTimePerUnit': targetTimePerUnit,
      'timePerUnit': timePerUnit,
      'productionTime': productionTime,
      'timePeriod': timePeriod,
      'quantities': quantities,
      'unconfirmedQuantities': unconfirmedQuantities,
      'totalQuantity': totalQuantity
     };
  }

  static List<WorkplaceQuantitySummaryDetailProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<WorkplaceQuantitySummaryDetailProperties>() : json.map((value) => new WorkplaceQuantitySummaryDetailProperties.fromJson(value)).toList();
  }

  static Map<String, WorkplaceQuantitySummaryDetailProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WorkplaceQuantitySummaryDetailProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WorkplaceQuantitySummaryDetailProperties.fromJson(value));
    }
    return map;
  }
}
