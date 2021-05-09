part of swagger.api;

class OperationQuantitySummaryDetailProperties {
  /* UUID of the workplace at which the quantity was recorded */
  String workplaceId = null;

  QuantitiesWithUncategorized quantities = null;

  QuantitiesWithUncategorized unconfirmedQuantities = null;

  double totalQuantity = null;

  OperationQuantitySummaryDetailProperties();

  @override
  String toString() {
    return 'OperationQuantitySummaryDetailProperties[workplaceId=$workplaceId, quantities=$quantities, unconfirmedQuantities=$unconfirmedQuantities, totalQuantity=$totalQuantity, ]';
  }

  OperationQuantitySummaryDetailProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    workplaceId = json['workplaceId'];
    quantities = new QuantitiesWithUncategorized.fromJson(json['quantities']);
    unconfirmedQuantities = new QuantitiesWithUncategorized.fromJson(json['unconfirmedQuantities']);
    totalQuantity = json['totalQuantity'];
  }

  Map<String, dynamic> toJson() {
    return {
      'workplaceId': workplaceId,
      'quantities': quantities,
      'unconfirmedQuantities': unconfirmedQuantities,
      'totalQuantity': totalQuantity
     };
  }

  static List<OperationQuantitySummaryDetailProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<OperationQuantitySummaryDetailProperties>() : json.map((value) => new OperationQuantitySummaryDetailProperties.fromJson(value)).toList();
  }

  static Map<String, OperationQuantitySummaryDetailProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OperationQuantitySummaryDetailProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OperationQuantitySummaryDetailProperties.fromJson(value));
    }
    return map;
  }
}
