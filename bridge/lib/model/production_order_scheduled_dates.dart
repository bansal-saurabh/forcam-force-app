part of swagger.api;

class ProductionOrderScheduledDates {
  
  String operationId = null;

  OperationScheduledDatesProperties scheduledDates = null;

  ProductionOrderScheduledDates();

  @override
  String toString() {
    return 'ProductionOrderScheduledDates[operationId=$operationId, scheduledDates=$scheduledDates, ]';
  }

  ProductionOrderScheduledDates.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    operationId = json['operationId'];
    scheduledDates = new OperationScheduledDatesProperties.fromJson(json['scheduledDates']);
  }

  Map<String, dynamic> toJson() {
    return {
      'operationId': operationId,
      'scheduledDates': scheduledDates
     };
  }

  static List<ProductionOrderScheduledDates> listFromJson(List<dynamic> json) {
    return json == null ? new List<ProductionOrderScheduledDates>() : json.map((value) => new ProductionOrderScheduledDates.fromJson(value)).toList();
  }

  static Map<String, ProductionOrderScheduledDates> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProductionOrderScheduledDates>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ProductionOrderScheduledDates.fromJson(value));
    }
    return map;
  }
}
