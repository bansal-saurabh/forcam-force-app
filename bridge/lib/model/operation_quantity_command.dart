part of swagger.api;

class OperationQuantityCommand {
  
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
/* UUID of the operation, */
  String operationId = null;
/* UUID of the workplace. The target workplace is used if no workplace is provided. */
  String workplaceId = null;
/* The quantity amount which has to be booked for the operation. */
  double quantity = null;
/* UUID of the quantity reason. */
  String qualityDetailId = null;
/* The annotation for the operation quantity. */
  String annotation = null;
/* UUID of the ticket. */
  String ticketId = null;

  OperationQuantityCommand();

  @override
  String toString() {
    return 'OperationQuantityCommand[forcedLogOff=$forcedLogOff, source=$source, staffMemberId=$staffMemberId, staffMemberTimeAttendanceBreakId=$staffMemberTimeAttendanceBreakId, type=$type, operationId=$operationId, workplaceId=$workplaceId, quantity=$quantity, qualityDetailId=$qualityDetailId, annotation=$annotation, ticketId=$ticketId, ]';
  }

  OperationQuantityCommand.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    forcedLogOff = json['forcedLogOff'];
    source = json['source'];
    staffMemberId = json['staffMemberId'];
    staffMemberTimeAttendanceBreakId = json['staffMemberTimeAttendanceBreakId'];
    type = json['type'];
    operationId = json['operationId'];
    workplaceId = json['workplaceId'];
    quantity = json['quantity'];
    qualityDetailId = json['qualityDetailId'];
    annotation = json['annotation'];
    ticketId = json['ticketId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'forcedLogOff': forcedLogOff,
      'source': source,
      'staffMemberId': staffMemberId,
      'staffMemberTimeAttendanceBreakId': staffMemberTimeAttendanceBreakId,
      'type': type,
      'operationId': operationId,
      'workplaceId': workplaceId,
      'quantity': quantity,
      'qualityDetailId': qualityDetailId,
      'annotation': annotation,
      'ticketId': ticketId
     };
  }

  static List<OperationQuantityCommand> listFromJson(List<dynamic> json) {
    return json == null ? new List<OperationQuantityCommand>() : json.map((value) => new OperationQuantityCommand.fromJson(value)).toList();
  }

  static Map<String, OperationQuantityCommand> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OperationQuantityCommand>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OperationQuantityCommand.fromJson(value));
    }
    return map;
  }
}
