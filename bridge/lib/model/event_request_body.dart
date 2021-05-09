part of swagger.api;

class EventRequestBody {
  
  Map<String, Object> data = {};
/* The name of the event */
  String eventName = null;
/* The type of the event */
  String eventType = null;
  //enum eventTypeEnum {  COMMAND,  SHOP_FLOOR_TERMINAL,  INTERNAL,  EXTERNAL,  OPERATION_CREATED,  OPERATION_UPDATED,  OPERATION_DELETED,  PRODUCTION_ORDER_CREATED,  PRODUCTION_ORDER_DELETED,  PRODUCTION_ORDER_UPDATED,  WORKPLACE_CREATED,  WORKPLACE_DELETED,  WORKPLACE_UPDATED,  STAFF_MEMBER_CREATED,  STAFF_MEMBER_DELETED,  STAFF_MEMBER_UPDATED,  WORKPLACE_SHIFTS_UPDATED,  SCHEDULED_MAINTENANCE_CREATED,  SCHEDULED_MAINTENANCE_DELETED,  SCHEDULED_MAINTENANCE_UPDATED,  OPERATION_FORECAST_RESULT_CREATED,  OPERATION_FORECAST_RESULT_UPDATED,  OPERATION_FORECAST_RESULT_DELETED,  OPERATION_PLANNING_RESULT_CREATED,  OPERATION_PLANNING_RESULT_DELETED,  OPERATION_PLANNING_RESULT_UPDATED,  STAFF_MEMBER_PLANNING_RESULT_CREATED,  STAFF_MEMBER_PLANNING_RESULT_DELETED,  STAFF_MEMBER_PLANNING_RESULT_UPDATED,  PREDICTED_MALFUNCTION_SCENARIO_CREATED,  OBSOLETE_OPERATION_FORECAST_RESULTS,  OBSOLETE_PREDICTED_MALFUNCTION_SCENARIOS,  OPERATION_PLANNING_SCENARIO_CREATED,  STAFF_MEMBER_PLANNING_SCENARIO_CREATED,  OPERATION_PHASE_CHANGED,  STAFF_MEMBER_LOGIN_STATE_CHANGED,  WORKPLACE_SHIFT_CHANGED,  OBSOLETE_OPERATION_PLANNING_SCENARIOS,  MANUFACTURING_VARIANT_RULE_CREATED,  MANUFACTURING_VARIANT_RULE_UPDATED,  SETUP_TRANSITION_RULE_CREATED,  SETUP_TRANSITION_RULE_UPDATED,  SETUP_TRANSITION_MATRIX_UPDATED,  DOCUMENT_CREATED,  DOCUMENT_UPDATED,  DOCUMENT_DELETED,  RESOURCES_UPDATED,  CUSTOMIZED_ACTION_TRIGGERED,  TOOL_CREATED,  TOOL_DELETED,  TOOL_UPDATED,  TOOL_ASSEMBLY_ORDER_STATE_CHANGED,  TICKET_CREATED,  TICKET_DELETED,  TICKET_UPDATED,  TICKET_STATE_CHANGED,  TICKET_ATTACHMENT_CREATED,  TICKET_ATTACHMENT_DELETED,  TICKET_ATTACHMENT_UPDATED,  TICKET_ACTIVITY_CREATED,  TICKET_ACTIVITY_DELETED,  TICKET_ACTIVITY_UPDATED,  TICKET_ACTIVITY_STATE_CHANGED,  TICKET_ACTIVITY_ATTACHMENT_CREATED,  TICKET_ACTIVITY_ATTACHMENT_DELETED,  TICKET_ACTIVITY_ATTACHMENT_UPDATED,  TICKET_ACTIVITY_REMARK_CREATED,  TICKET_ACTIVITY_REMARK_DELETED,  TICKET_ACTIVITY_REMARK_UPDATED,  WORKPLACE_OPERATING_STATE_CHANGED,  PROCESS_DATA_RULE_VIOLATED,  FEEDBACK_TO_WAREHOUSE,  };

  String objectId = null;

  String objectType = null;
  //enum objectTypeEnum {  OPERATION,  PRODUCTION_ORDER,  WORKPLACE,  WORKPLACE_GROUP,  STAFF_MEMBER,  TOOL,  MACHINE,  PREDICTED_MALFUNCTION_SCENARIO,  OPERATION_PLANNING_SCENARIO,  STAFF_MEMBER_PLANNING_SCENARIO,  PLANNED_MAINTENANCE,  SHIFTS,  DOCUMENT,  TOOL_ASSEMBLY_ORDER,  TICKET,  TICKET_ATTACHMENT,  TICKET_ACTIVITY,  TICKET_ACTIVITY_ATTACHMENT,  TICKET_ACTIVITY_REMARK,  NONE,  };
/* The timestamp when the event occured */
  DateTime timestamp = null;

  EventRequestBody();

  @override
  String toString() {
    return 'EventRequestBody[data=$data, eventName=$eventName, eventType=$eventType, objectId=$objectId, objectType=$objectType, timestamp=$timestamp, ]';
  }

  EventRequestBody.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = Object.mapFromJson(json['data']);
    eventName = json['eventName'];
    eventType = json['eventType'];
    objectId = json['objectId'];
    objectType = json['objectType'];
    timestamp = json['timestamp'] == null ? null : DateTime.parse(json['timestamp']);
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data,
      'eventName': eventName,
      'eventType': eventType,
      'objectId': objectId,
      'objectType': objectType,
      'timestamp': timestamp == null ? '' : timestamp.toUtc().toIso8601String()
     };
  }

  static List<EventRequestBody> listFromJson(List<dynamic> json) {
    return json == null ? new List<EventRequestBody>() : json.map((value) => new EventRequestBody.fromJson(value)).toList();
  }

  static Map<String, EventRequestBody> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EventRequestBody>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EventRequestBody.fromJson(value));
    }
    return map;
  }
}
