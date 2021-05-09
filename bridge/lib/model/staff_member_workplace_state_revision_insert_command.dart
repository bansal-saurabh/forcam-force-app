part of swagger.api;

class StaffMemberWorkplaceStateRevisionInsertCommand {
  
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

  DateTime insertionTimestamp = null;

  StaffMemberWorkplaceStateCommand staffMemberWorkplaceStateCommand = null;

  StaffMemberWorkplaceStateRevisionInsertCommand();

  @override
  String toString() {
    return 'StaffMemberWorkplaceStateRevisionInsertCommand[forcedLogOff=$forcedLogOff, source=$source, staffMemberId=$staffMemberId, staffMemberTimeAttendanceBreakId=$staffMemberTimeAttendanceBreakId, type=$type, insertionTimestamp=$insertionTimestamp, staffMemberWorkplaceStateCommand=$staffMemberWorkplaceStateCommand, ]';
  }

  StaffMemberWorkplaceStateRevisionInsertCommand.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    forcedLogOff = json['forcedLogOff'];
    source = json['source'];
    staffMemberId = json['staffMemberId'];
    staffMemberTimeAttendanceBreakId = json['staffMemberTimeAttendanceBreakId'];
    type = json['type'];
    insertionTimestamp = json['insertionTimestamp'] == null ? null : DateTime.parse(json['insertionTimestamp']);
    staffMemberWorkplaceStateCommand = new StaffMemberWorkplaceStateCommand.fromJson(json['staffMemberWorkplaceStateCommand']);
  }

  Map<String, dynamic> toJson() {
    return {
      'forcedLogOff': forcedLogOff,
      'source': source,
      'staffMemberId': staffMemberId,
      'staffMemberTimeAttendanceBreakId': staffMemberTimeAttendanceBreakId,
      'type': type,
      'insertionTimestamp': insertionTimestamp == null ? '' : insertionTimestamp.toUtc().toIso8601String(),
      'staffMemberWorkplaceStateCommand': staffMemberWorkplaceStateCommand
     };
  }

  static List<StaffMemberWorkplaceStateRevisionInsertCommand> listFromJson(List<dynamic> json) {
    return json == null ? new List<StaffMemberWorkplaceStateRevisionInsertCommand>() : json.map((value) => new StaffMemberWorkplaceStateRevisionInsertCommand.fromJson(value)).toList();
  }

  static Map<String, StaffMemberWorkplaceStateRevisionInsertCommand> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StaffMemberWorkplaceStateRevisionInsertCommand>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StaffMemberWorkplaceStateRevisionInsertCommand.fromJson(value));
    }
    return map;
  }
}
