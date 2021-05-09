part of swagger.api;

class RecordedOperationPhase {
  /* UUID of the workplace at which the operation was performed during the SETUP and PROCESSING phases, if these exist */
  String workplaceId = null;
/* UUID of the respective operation */
  String operationId = null;
/* ID of the operation phase */
  String operationPhaseId = null;
  //enum operationPhaseIdEnum {  RELEASED,  COMPLETED,  SETUP,  PROCESSING,  DISPATCHED,  TRAINING,  CLOSED,  INTERRUPTED,  WAITING_BEFORE_PROCESSING,  WAITING_AFTER_PROCESSING,  };
/* The start date of the operation phase */
  DateTime startDate = null;
/* The end date of the operation phase */
  DateTime endDate = null;

  RecordedOperationPhase();

  @override
  String toString() {
    return 'RecordedOperationPhase[workplaceId=$workplaceId, operationId=$operationId, operationPhaseId=$operationPhaseId, startDate=$startDate, endDate=$endDate, ]';
  }

  RecordedOperationPhase.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    workplaceId = json['workplaceId'];
    operationId = json['operationId'];
    operationPhaseId = json['operationPhaseId'];
    startDate = json['startDate'] == null ? null : DateTime.parse(json['startDate']);
    endDate = json['endDate'] == null ? null : DateTime.parse(json['endDate']);
  }

  Map<String, dynamic> toJson() {
    return {
      'workplaceId': workplaceId,
      'operationId': operationId,
      'operationPhaseId': operationPhaseId,
      'startDate': startDate == null ? '' : startDate.toUtc().toIso8601String(),
      'endDate': endDate == null ? '' : endDate.toUtc().toIso8601String()
     };
  }

  static List<RecordedOperationPhase> listFromJson(List<dynamic> json) {
    return json == null ? new List<RecordedOperationPhase>() : json.map((value) => new RecordedOperationPhase.fromJson(value)).toList();
  }

  static Map<String, RecordedOperationPhase> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RecordedOperationPhase>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RecordedOperationPhase.fromJson(value));
    }
    return map;
  }
}
