part of swagger.api;

class OperationPhaseCommand {
  
  bool forcedLogOff = null;
/* The source of the command */
  String source = null;
  //enum sourceEnum {  MACHINE,  TERMINAL,  };

  String staffMemberId = null;

  String staffMemberTimeAttendanceBreakId = null;
  //enum staffMemberTimeAttendanceBreakIdEnum {  BREAK_START,  BREAK_END,  };
/* The type of the command */
  String type = null;
  //enum typeEnum {  OPERATION_PHASE,  MACHINE_STATE,  MACHINE_QUANTITY,  MACHINE_STATE_REVISION_INSERT,  MACHINE_COUNT,  MACHINE_STROKE,  OPERATION_QUANTITY,  OPERATION_PHASE_REVISION_INSERT,  OPERATION_QUANTITY_REVISION_INSERT,  STAFF_MEMBER_WORKPLACE_STATE,  STAFF_MEMBER_OPERATION_STATE,  STAFF_MEMBER_TIME_ATTENDANCE,  STAFF_MEMBER_TIME_ATTENDANCE_REVISION_INSERT,  STAFF_MEMBER_TIME_ATTENDANCE_BREAK,  STAFF_MEMBER_TIME_ATTENDANCE_BREAK_REVISION_INSERT,  OPERATION_PRODUCTION_STATE,  OPERATION_PRODUCTION_STATE_REVISION_INSERT,  DOMAIN_ATTRIBUTE_CHANGE,  };
/* UUID of the operation */
  String operationId = null;
/* The operation phase */
  String operationPhaseId = null;
  //enum operationPhaseIdEnum {  RELEASED,  COMPLETED,  SETUP,  PROCESSING,  DISPATCHED,  TRAINING,  CLOSED,  INTERRUPTED,  WAITING_BEFORE_PROCESSING,  WAITING_AFTER_PROCESSING,  };
/* UUID of the workplace. The target workplace is used if no workplace is provided. */
  String workplaceId = null;

  OperationPhaseCommand();

  @override
  String toString() {
    return 'OperationPhaseCommand[forcedLogOff=$forcedLogOff, source=$source, staffMemberId=$staffMemberId, staffMemberTimeAttendanceBreakId=$staffMemberTimeAttendanceBreakId, type=$type, operationId=$operationId, operationPhaseId=$operationPhaseId, workplaceId=$workplaceId, ]';
  }

  OperationPhaseCommand.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    forcedLogOff = json['forcedLogOff'];
    source = json['source'];
    staffMemberId = json['staffMemberId'];
    staffMemberTimeAttendanceBreakId = json['staffMemberTimeAttendanceBreakId'];
    type = json['type'];
    operationId = json['operationId'];
    operationPhaseId = json['operationPhaseId'];
    workplaceId = json['workplaceId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'forcedLogOff': forcedLogOff,
      'source': source,
      'staffMemberId': staffMemberId,
      'staffMemberTimeAttendanceBreakId': staffMemberTimeAttendanceBreakId,
      'type': type,
      'operationId': operationId,
      'operationPhaseId': operationPhaseId,
      'workplaceId': workplaceId
     };
  }

  static List<OperationPhaseCommand> listFromJson(List<dynamic> json) {
    return json == null ? new List<OperationPhaseCommand>() : json.map((value) => new OperationPhaseCommand.fromJson(value)).toList();
  }

  static Map<String, OperationPhaseCommand> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OperationPhaseCommand>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OperationPhaseCommand.fromJson(value));
    }
    return map;
  }
}
