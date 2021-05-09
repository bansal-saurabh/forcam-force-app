part of swagger.api;

class WorkplaceMaintenanceStateCommand {
  
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

  int maintenanceRequestId = null;

  String maintenanceStateId = null;
  //enum maintenanceStateIdEnum {  NO_MAINTENANCE,  WAITING_FOR_MAINTENANCE,  MAINTENANCE,  MAINTENANCE_INTERRUPTED,  };

  String workplaceId = null;

  WorkplaceMaintenanceStateCommand();

  @override
  String toString() {
    return 'WorkplaceMaintenanceStateCommand[forcedLogOff=$forcedLogOff, source=$source, staffMemberId=$staffMemberId, staffMemberTimeAttendanceBreakId=$staffMemberTimeAttendanceBreakId, type=$type, maintenanceRequestId=$maintenanceRequestId, maintenanceStateId=$maintenanceStateId, workplaceId=$workplaceId, ]';
  }

  WorkplaceMaintenanceStateCommand.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    forcedLogOff = json['forcedLogOff'];
    source = json['source'];
    staffMemberId = json['staffMemberId'];
    staffMemberTimeAttendanceBreakId = json['staffMemberTimeAttendanceBreakId'];
    type = json['type'];
    maintenanceRequestId = json['maintenanceRequestId'];
    maintenanceStateId = json['maintenanceStateId'];
    workplaceId = json['workplaceId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'forcedLogOff': forcedLogOff,
      'source': source,
      'staffMemberId': staffMemberId,
      'staffMemberTimeAttendanceBreakId': staffMemberTimeAttendanceBreakId,
      'type': type,
      'maintenanceRequestId': maintenanceRequestId,
      'maintenanceStateId': maintenanceStateId,
      'workplaceId': workplaceId
     };
  }

  static List<WorkplaceMaintenanceStateCommand> listFromJson(List<dynamic> json) {
    return json == null ? new List<WorkplaceMaintenanceStateCommand>() : json.map((value) => new WorkplaceMaintenanceStateCommand.fromJson(value)).toList();
  }

  static Map<String, WorkplaceMaintenanceStateCommand> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WorkplaceMaintenanceStateCommand>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WorkplaceMaintenanceStateCommand.fromJson(value));
    }
    return map;
  }
}
