part of swagger.api;

class OperationCurrentProductionDataProperties {
  
  WorkplaceGeneralDefinition workplace = null;

  int strokes = null;
/* The identifier of the current operation phase */
  String operationPhaseId = null;
  //enum operationPhaseIdEnum {  RELEASED,  COMPLETED,  SETUP,  PROCESSING,  DISPATCHED,  TRAINING,  CLOSED,  INTERRUPTED,  WAITING_BEFORE_PROCESSING,  WAITING_AFTER_PROCESSING,  };
/* The operation times */
  List<OperationTime> operationTimes = [];

  OperationCurrentProductionDataProperties();

  @override
  String toString() {
    return 'OperationCurrentProductionDataProperties[workplace=$workplace, strokes=$strokes, operationPhaseId=$operationPhaseId, operationTimes=$operationTimes, ]';
  }

  OperationCurrentProductionDataProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    workplace = new WorkplaceGeneralDefinition.fromJson(json['workplace']);
    strokes = json['strokes'];
    operationPhaseId = json['operationPhaseId'];
    operationTimes = OperationTime.listFromJson(json['operationTimes']);
  }

  Map<String, dynamic> toJson() {
    return {
      'workplace': workplace,
      'strokes': strokes,
      'operationPhaseId': operationPhaseId,
      'operationTimes': operationTimes
     };
  }

  static List<OperationCurrentProductionDataProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<OperationCurrentProductionDataProperties>() : json.map((value) => new OperationCurrentProductionDataProperties.fromJson(value)).toList();
  }

  static Map<String, OperationCurrentProductionDataProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OperationCurrentProductionDataProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OperationCurrentProductionDataProperties.fromJson(value));
    }
    return map;
  }
}
