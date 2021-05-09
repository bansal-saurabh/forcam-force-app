part of swagger.api;

class CreateCallbackProperties {
  /* Array of filtering criteria provided by the corresponding domain object */
  List<CallbackObjectFilter> objectFilter = [];
/* Event type for which callbacks shall be sent */
  String eventType = null;
  //enum eventTypeEnum {  COMMAND,  SHOP_FLOOR_TERMINAL,  INTERNAL,  EXTERNAL,  OPERATION_CREATED,  OPERATION_UPDATED,  OPERATION_DELETED,  PRODUCTION_ORDER_CREATED,  PRODUCTION_ORDER_DELETED,  PRODUCTION_ORDER_UPDATED,  WORKPLACE_CREATED,  WORKPLACE_DELETED,  WORKPLACE_UPDATED,  STAFF_MEMBER_CREATED,  STAFF_MEMBER_DELETED,  STAFF_MEMBER_UPDATED,  WORKPLACE_SHIFTS_UPDATED,  SCHEDULED_MAINTENANCE_CREATED,  SCHEDULED_MAINTENANCE_DELETED,  SCHEDULED_MAINTENANCE_UPDATED,  OPERATION_FORECAST_RESULT_CREATED,  OPERATION_FORECAST_RESULT_UPDATED,  OPERATION_FORECAST_RESULT_DELETED,  OPERATION_PLANNING_RESULT_CREATED,  OPERATION_PLANNING_RESULT_DELETED,  OPERATION_PLANNING_RESULT_UPDATED,  STAFF_MEMBER_PLANNING_RESULT_CREATED,  STAFF_MEMBER_PLANNING_RESULT_DELETED,  STAFF_MEMBER_PLANNING_RESULT_UPDATED,  PREDICTED_MALFUNCTION_SCENARIO_CREATED,  OBSOLETE_OPERATION_FORECAST_RESULTS,  OBSOLETE_PREDICTED_MALFUNCTION_SCENARIOS,  OPERATION_PLANNING_SCENARIO_CREATED,  STAFF_MEMBER_PLANNING_SCENARIO_CREATED,  OPERATION_PHASE_CHANGED,  STAFF_MEMBER_LOGIN_STATE_CHANGED,  WORKPLACE_SHIFT_CHANGED,  OBSOLETE_OPERATION_PLANNING_SCENARIOS,  MANUFACTURING_VARIANT_RULE_CREATED,  MANUFACTURING_VARIANT_RULE_UPDATED,  SETUP_TRANSITION_RULE_CREATED,  SETUP_TRANSITION_RULE_UPDATED,  SETUP_TRANSITION_MATRIX_UPDATED,  DOCUMENT_CREATED,  DOCUMENT_UPDATED,  DOCUMENT_DELETED,  RESOURCES_UPDATED,  CUSTOMIZED_ACTION_TRIGGERED,  TOOL_CREATED,  TOOL_DELETED,  TOOL_UPDATED,  TOOL_ASSEMBLY_ORDER_STATE_CHANGED,  TICKET_CREATED,  TICKET_DELETED,  TICKET_UPDATED,  TICKET_STATE_CHANGED,  TICKET_ATTACHMENT_CREATED,  TICKET_ATTACHMENT_DELETED,  TICKET_ATTACHMENT_UPDATED,  TICKET_ACTIVITY_CREATED,  TICKET_ACTIVITY_DELETED,  TICKET_ACTIVITY_UPDATED,  TICKET_ACTIVITY_STATE_CHANGED,  TICKET_ACTIVITY_ATTACHMENT_CREATED,  TICKET_ACTIVITY_ATTACHMENT_DELETED,  TICKET_ACTIVITY_ATTACHMENT_UPDATED,  TICKET_ACTIVITY_REMARK_CREATED,  TICKET_ACTIVITY_REMARK_DELETED,  TICKET_ACTIVITY_REMARK_UPDATED,  WORKPLACE_OPERATING_STATE_CHANGED,  PROCESS_DATA_RULE_VIOLATED,  FEEDBACK_TO_WAREHOUSE,  };
/* Event name for which callbacks shall be sent */
  String eventName = null;
/* URL to be called */
  String url = null;
/* Maximum number of redeliver attempts */
  int maxRedeliveryAttempts = null;
/* Maximum number of unconfirmed messages */
  int maxUnconfirmedMessages = null;

  CreateCallbackProperties();

  @override
  String toString() {
    return 'CreateCallbackProperties[objectFilter=$objectFilter, eventType=$eventType, eventName=$eventName, url=$url, maxRedeliveryAttempts=$maxRedeliveryAttempts, maxUnconfirmedMessages=$maxUnconfirmedMessages, ]';
  }

  CreateCallbackProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    objectFilter = CallbackObjectFilter.listFromJson(json['objectFilter']);
    eventType = json['eventType'];
    eventName = json['eventName'];
    url = json['url'];
    maxRedeliveryAttempts = json['maxRedeliveryAttempts'];
    maxUnconfirmedMessages = json['maxUnconfirmedMessages'];
  }

  Map<String, dynamic> toJson() {
    return {
      'objectFilter': objectFilter,
      'eventType': eventType,
      'eventName': eventName,
      'url': url,
      'maxRedeliveryAttempts': maxRedeliveryAttempts,
      'maxUnconfirmedMessages': maxUnconfirmedMessages
     };
  }

  static List<CreateCallbackProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateCallbackProperties>() : json.map((value) => new CreateCallbackProperties.fromJson(value)).toList();
  }

  static Map<String, CreateCallbackProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateCallbackProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateCallbackProperties.fromJson(value));
    }
    return map;
  }
}
