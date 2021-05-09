part of swagger.api;

class MachineStateCommand {
  
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

  String annotation = null;

  String machineId = null;

  List<String> machineStateDetailIds = [];

  String machineStateId = null;
  //enum machineStateIdEnum {  DOWNTIME,  PRODUCTION,  SETUP,  };

  MachineStateCommand();

  @override
  String toString() {
    return 'MachineStateCommand[forcedLogOff=$forcedLogOff, source=$source, staffMemberId=$staffMemberId, staffMemberTimeAttendanceBreakId=$staffMemberTimeAttendanceBreakId, type=$type, annotation=$annotation, machineId=$machineId, machineStateDetailIds=$machineStateDetailIds, machineStateId=$machineStateId, ]';
  }

  MachineStateCommand.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    forcedLogOff = json['forcedLogOff'];
    source = json['source'];
    staffMemberId = json['staffMemberId'];
    staffMemberTimeAttendanceBreakId = json['staffMemberTimeAttendanceBreakId'];
    type = json['type'];
    annotation = json['annotation'];
    machineId = json['machineId'];
    machineStateDetailIds = (json['machineStateDetailIds'] as List).map((item) => item as String).toList();
    machineStateId = json['machineStateId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'forcedLogOff': forcedLogOff,
      'source': source,
      'staffMemberId': staffMemberId,
      'staffMemberTimeAttendanceBreakId': staffMemberTimeAttendanceBreakId,
      'type': type,
      'annotation': annotation,
      'machineId': machineId,
      'machineStateDetailIds': machineStateDetailIds,
      'machineStateId': machineStateId
     };
  }

  static List<MachineStateCommand> listFromJson(List<dynamic> json) {
    return json == null ? new List<MachineStateCommand>() : json.map((value) => new MachineStateCommand.fromJson(value)).toList();
  }

  static Map<String, MachineStateCommand> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MachineStateCommand>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MachineStateCommand.fromJson(value));
    }
    return map;
  }
}
