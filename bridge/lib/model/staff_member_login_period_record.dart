part of swagger.api;

class StaffMemberLoginPeriodRecord {
  /* UUID of the workplace */
  String workplaceId = null;
/* UUID of the operation */
  String operationId = null;
/* ID of the operation phase */
  String operationPhase = null;

  TimePeriodDefinition timePeriod = null;
/* Proportion of the personnel capacity assigned to the respective operation */
  double proportion = null;

  StaffMemberLoginPeriodRecord();

  @override
  String toString() {
    return 'StaffMemberLoginPeriodRecord[workplaceId=$workplaceId, operationId=$operationId, operationPhase=$operationPhase, timePeriod=$timePeriod, proportion=$proportion, ]';
  }

  StaffMemberLoginPeriodRecord.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    workplaceId = json['workplaceId'];
    operationId = json['operationId'];
    operationPhase = json['operationPhase'];
    timePeriod = new TimePeriodDefinition.fromJson(json['timePeriod']);
    proportion = json['proportion'];
  }

  Map<String, dynamic> toJson() {
    return {
      'workplaceId': workplaceId,
      'operationId': operationId,
      'operationPhase': operationPhase,
      'timePeriod': timePeriod,
      'proportion': proportion
     };
  }

  static List<StaffMemberLoginPeriodRecord> listFromJson(List<dynamic> json) {
    return json == null ? new List<StaffMemberLoginPeriodRecord>() : json.map((value) => new StaffMemberLoginPeriodRecord.fromJson(value)).toList();
  }

  static Map<String, StaffMemberLoginPeriodRecord> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StaffMemberLoginPeriodRecord>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StaffMemberLoginPeriodRecord.fromJson(value));
    }
    return map;
  }
}
