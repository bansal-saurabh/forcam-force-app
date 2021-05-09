part of swagger.api;

class ProductionOrderSpecification {
  /* HAL embedded objects */
  Object embedded = null;
/* HAL link objects */
  Object links = null;

  ProductionOrderSpecification properties = null;
/* The target yield quantity */
  double targetQuantity = null;
/* The unit of the target quantity target yield quantity */
  String quantityUnit = null;
/* Earliest start date of the production order */
  DateTime basicStartDate = null;
/* Latest end date of the production order */
  DateTime basicEndDate = null;
/* An arbitrary integer value for the priority of a production order specified in the ERP system. The highest priority is 0. */
  String priority = null;
/* The degree of parallelization used, among other things, to determine the throughput efficiency */
  double degreeOfParallelization = null;

  ProductionOrderSpecification();

  @override
  String toString() {
    return 'ProductionOrderSpecification[embedded=$embedded, links=$links, properties=$properties, targetQuantity=$targetQuantity, quantityUnit=$quantityUnit, basicStartDate=$basicStartDate, basicEndDate=$basicEndDate, priority=$priority, degreeOfParallelization=$degreeOfParallelization, ]';
  }

  ProductionOrderSpecification.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new ProductionOrderSpecification.fromJson(json['properties']);
    targetQuantity = json['targetQuantity'];
    quantityUnit = json['quantityUnit'];
    basicStartDate = json['basicStartDate'] == null ? null : DateTime.parse(json['basicStartDate']);
    basicEndDate = json['basicEndDate'] == null ? null : DateTime.parse(json['basicEndDate']);
    priority = json['priority'];
    degreeOfParallelization = json['degreeOfParallelization'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties,
      'targetQuantity': targetQuantity,
      'quantityUnit': quantityUnit,
      'basicStartDate': basicStartDate == null ? '' : basicStartDate.toUtc().toIso8601String(),
      'basicEndDate': basicEndDate == null ? '' : basicEndDate.toUtc().toIso8601String(),
      'priority': priority,
      'degreeOfParallelization': degreeOfParallelization
     };
  }

  static List<ProductionOrderSpecification> listFromJson(List<dynamic> json) {
    return json == null ? new List<ProductionOrderSpecification>() : json.map((value) => new ProductionOrderSpecification.fromJson(value)).toList();
  }

  static Map<String, ProductionOrderSpecification> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProductionOrderSpecification>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ProductionOrderSpecification.fromJson(value));
    }
    return map;
  }
}
