part of swagger.api;

class OperatingStateSummaryPropertiesWSModel {
  /* Total execution time of the operation in msec */
  int executionTime = null;
/* Total processing time of the operation in msec */
  int processingTime = null;
/* Total production time of the operation in msec */
  int productionTime = null;
/* Total setup time of the operation in msec */
  int setupTime = null;
/* Setup reduction of an operation */
  double setupReduction = null;
/* Process availability of an operation */
  double processAvailability = null;
/* Array of operating state summaries with durations greater than zero */
  List<RecordedOperatingStateSummary> elements = [];

  OperatingStateSummaryPropertiesWSModel();

  @override
  String toString() {
    return 'OperatingStateSummaryPropertiesWSModel[executionTime=$executionTime, processingTime=$processingTime, productionTime=$productionTime, setupTime=$setupTime, setupReduction=$setupReduction, processAvailability=$processAvailability, elements=$elements, ]';
  }

  OperatingStateSummaryPropertiesWSModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    executionTime = json['executionTime'];
    processingTime = json['processingTime'];
    productionTime = json['productionTime'];
    setupTime = json['setupTime'];
    setupReduction = json['setupReduction'];
    processAvailability = json['processAvailability'];
    elements = RecordedOperatingStateSummary.listFromJson(json['elements']);
  }

  Map<String, dynamic> toJson() {
    return {
      'executionTime': executionTime,
      'processingTime': processingTime,
      'productionTime': productionTime,
      'setupTime': setupTime,
      'setupReduction': setupReduction,
      'processAvailability': processAvailability,
      'elements': elements
     };
  }

  static List<OperatingStateSummaryPropertiesWSModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<OperatingStateSummaryPropertiesWSModel>() : json.map((value) => new OperatingStateSummaryPropertiesWSModel.fromJson(value)).toList();
  }

  static Map<String, OperatingStateSummaryPropertiesWSModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OperatingStateSummaryPropertiesWSModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OperatingStateSummaryPropertiesWSModel.fromJson(value));
    }
    return map;
  }
}
