part of swagger.api;

class OperationProductionStateCommand {
  
  bool forcedLogOff = null;
/* The source of the command */
  String source = null;
  //enum sourceEnum {  MACHINE,  TERMINAL,  };
/* UUID of the staff member */
  String staffMemberId = null;

  String staffMemberTimeAttendanceBreakId = null;
  //enum staffMemberTimeAttendanceBreakIdEnum {  BREAK_START,  BREAK_END,  };
/* The type of the command */
  String type = null;
  //enum typeEnum {  OPERATION_PHASE,  MACHINE_STATE,  MACHINE_QUANTITY,  MACHINE_STATE_REVISION_INSERT,  MACHINE_COUNT,  MACHINE_STROKE,  OPERATION_QUANTITY,  OPERATION_PHASE_REVISION_INSERT,  OPERATION_QUANTITY_REVISION_INSERT,  STAFF_MEMBER_WORKPLACE_STATE,  STAFF_MEMBER_OPERATION_STATE,  STAFF_MEMBER_TIME_ATTENDANCE,  STAFF_MEMBER_TIME_ATTENDANCE_REVISION_INSERT,  STAFF_MEMBER_TIME_ATTENDANCE_BREAK,  STAFF_MEMBER_TIME_ATTENDANCE_BREAK_REVISION_INSERT,  OPERATION_PRODUCTION_STATE,  OPERATION_PRODUCTION_STATE_REVISION_INSERT,  DOMAIN_ATTRIBUTE_CHANGE,  };
/* UUID of the operation */
  String operationId = null;
/* UUID of the operation production state detail ids. */
  List<String> operationProductionStateDetailIds = [];
/* UUID of the operation production status. */
  String operationProductionStateId = null;
  //enum operationProductionStateIdEnum {  DOWNTIME,  PRODUCTION,  SETUP,  };
/* UUID of the workplace. The target workplace is used if no workplace is provided. */
  String workplaceId = null;

  OperationProductionStateCommand();

  @override
  String toString() {
    return 'OperationProductionStateCommand[forcedLogOff=$forcedLogOff, source=$source, staffMemberId=$staffMemberId, staffMemberTimeAttendanceBreakId=$staffMemberTimeAttendanceBreakId, type=$type, operationId=$operationId, operationProductionStateDetailIds=$operationProductionStateDetailIds, operationProductionStateId=$operationProductionStateId, workplaceId=$workplaceId, ]';
  }

  OperationProductionStateCommand.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    forcedLogOff = json['forcedLogOff'];
    source = json['source'];
    staffMemberId = json['staffMemberId'];
    staffMemberTimeAttendanceBreakId = json['staffMemberTimeAttendanceBreakId'];
    type = json['type'];
    operationId = json['operationId'];
    operationProductionStateDetailIds = (json['operationProductionStateDetailIds'] as List).map((item) => item as String).toList();
    operationProductionStateId = json['operationProductionStateId'];
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
      'operationProductionStateDetailIds': operationProductionStateDetailIds,
      'operationProductionStateId': operationProductionStateId,
      'workplaceId': workplaceId
     };
  }

  static List<OperationProductionStateCommand> listFromJson(List<dynamic> json) {
    return json == null ? new List<OperationProductionStateCommand>() : json.map((value) => new OperationProductionStateCommand.fromJson(value)).toList();
  }

  static Map<String, OperationProductionStateCommand> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OperationProductionStateCommand>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OperationProductionStateCommand.fromJson(value));
    }
    return map;
  }
}
