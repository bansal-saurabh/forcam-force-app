part of swagger.api;

class OperationQuantitySummaryProperties {
  /* Performance rate during the entire execution of the operation */
  double performance = null;
/* Quality rate during the entire execution of the operation */
  double qualityRate = null;

  MaterialProperties material = null;
/* Sum of the total quantities generated at all workplaces */
  double totalQuantity = null;
/* Unit of the output quantity */
  String quantityUnit = null;
/* Target time per unit in msec */
  int targetTimePerUnit = null;
/* Time per unit in msec */
  double timePerUnit = null;
/* Array of quantity summaries for each workplace on which the operation has been executed */
  List<OperationQuantitySummaryDetailProperties> elements = [];

  OperationQuantitySummaryProperties();

  @override
  String toString() {
    return 'OperationQuantitySummaryProperties[performance=$performance, qualityRate=$qualityRate, material=$material, totalQuantity=$totalQuantity, quantityUnit=$quantityUnit, targetTimePerUnit=$targetTimePerUnit, timePerUnit=$timePerUnit, elements=$elements, ]';
  }

  OperationQuantitySummaryProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    performance = json['performance'];
    qualityRate = json['qualityRate'];
    material = new MaterialProperties.fromJson(json['material']);
    totalQuantity = json['totalQuantity'];
    quantityUnit = json['quantityUnit'];
    targetTimePerUnit = json['targetTimePerUnit'];
    timePerUnit = json['timePerUnit'];
    elements = OperationQuantitySummaryDetailProperties.listFromJson(json['elements']);
  }

  Map<String, dynamic> toJson() {
    return {
      'performance': performance,
      'qualityRate': qualityRate,
      'material': material,
      'totalQuantity': totalQuantity,
      'quantityUnit': quantityUnit,
      'targetTimePerUnit': targetTimePerUnit,
      'timePerUnit': timePerUnit,
      'elements': elements
     };
  }

  static List<OperationQuantitySummaryProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<OperationQuantitySummaryProperties>() : json.map((value) => new OperationQuantitySummaryProperties.fromJson(value)).toList();
  }

  static Map<String, OperationQuantitySummaryProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OperationQuantitySummaryProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OperationQuantitySummaryProperties.fromJson(value));
    }
    return map;
  }
}
