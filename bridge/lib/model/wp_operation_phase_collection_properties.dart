part of swagger.api;

class WpOperationPhaseCollectionProperties {
  /* Start timestamp of the selected period */
  DateTime startDate = null;
/* The end date of the selected period */
  DateTime endDate = null;
/* Total duration of the setup phases of all operations executed at the respective workplace within the selected period in msec. */
  int setupPhaseDuration = null;
/* Total duration of the processing phases of all operations executed at the respective workplace within the selected period in msec */
  int processingPhaseDuration = null;
/* Total execution time of all operations executed at the respective workplace within the selected period in msec */
  int occupancyTime = null;
/* Array of operation phase records */
  List<RecordedOperationPhase> elements = [];

  WpOperationPhaseCollectionProperties();

  @override
  String toString() {
    return 'WpOperationPhaseCollectionProperties[startDate=$startDate, endDate=$endDate, setupPhaseDuration=$setupPhaseDuration, processingPhaseDuration=$processingPhaseDuration, occupancyTime=$occupancyTime, elements=$elements, ]';
  }

  WpOperationPhaseCollectionProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    startDate = json['startDate'] == null ? null : DateTime.parse(json['startDate']);
    endDate = json['endDate'] == null ? null : DateTime.parse(json['endDate']);
    setupPhaseDuration = json['setupPhaseDuration'];
    processingPhaseDuration = json['processingPhaseDuration'];
    occupancyTime = json['occupancyTime'];
    elements = RecordedOperationPhase.listFromJson(json['elements']);
  }

  Map<String, dynamic> toJson() {
    return {
      'startDate': startDate == null ? '' : startDate.toUtc().toIso8601String(),
      'endDate': endDate == null ? '' : endDate.toUtc().toIso8601String(),
      'setupPhaseDuration': setupPhaseDuration,
      'processingPhaseDuration': processingPhaseDuration,
      'occupancyTime': occupancyTime,
      'elements': elements
     };
  }

  static List<WpOperationPhaseCollectionProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<WpOperationPhaseCollectionProperties>() : json.map((value) => new WpOperationPhaseCollectionProperties.fromJson(value)).toList();
  }

  static Map<String, WpOperationPhaseCollectionProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WpOperationPhaseCollectionProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WpOperationPhaseCollectionProperties.fromJson(value));
    }
    return map;
  }
}
