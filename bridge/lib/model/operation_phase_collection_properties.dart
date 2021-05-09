part of swagger.api;

class OperationPhaseCollectionProperties {
  /* Timestamp of the first execution period */
  DateTime startDate = null;
/* End timestamp of the last execution period */
  DateTime endDate = null;
/* Duration of all setup phases of the operation in msec */
  int setupPhaseDuration = null;
/* Duration of all processing phases of the operation in msec */
  int processingPhaseDuration = null;
/* Entire execution time of the operation in msec */
  int executionTime = null;
/* Array of operation phase records */
  List<RecordedOperationPhase> elements = [];

  OperationPhaseCollectionProperties();

  @override
  String toString() {
    return 'OperationPhaseCollectionProperties[startDate=$startDate, endDate=$endDate, setupPhaseDuration=$setupPhaseDuration, processingPhaseDuration=$processingPhaseDuration, executionTime=$executionTime, elements=$elements, ]';
  }

  OperationPhaseCollectionProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    startDate = json['startDate'] == null ? null : DateTime.parse(json['startDate']);
    endDate = json['endDate'] == null ? null : DateTime.parse(json['endDate']);
    setupPhaseDuration = json['setupPhaseDuration'];
    processingPhaseDuration = json['processingPhaseDuration'];
    executionTime = json['executionTime'];
    elements = RecordedOperationPhase.listFromJson(json['elements']);
  }

  Map<String, dynamic> toJson() {
    return {
      'startDate': startDate == null ? '' : startDate.toUtc().toIso8601String(),
      'endDate': endDate == null ? '' : endDate.toUtc().toIso8601String(),
      'setupPhaseDuration': setupPhaseDuration,
      'processingPhaseDuration': processingPhaseDuration,
      'executionTime': executionTime,
      'elements': elements
     };
  }

  static List<OperationPhaseCollectionProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<OperationPhaseCollectionProperties>() : json.map((value) => new OperationPhaseCollectionProperties.fromJson(value)).toList();
  }

  static Map<String, OperationPhaseCollectionProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OperationPhaseCollectionProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OperationPhaseCollectionProperties.fromJson(value));
    }
    return map;
  }
}
