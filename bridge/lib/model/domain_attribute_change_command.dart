part of swagger.api;

class DomainAttributeChangeCommand {
  
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

  String attributeName = null;

  DomainAttributeChangeCommand attributeValue = null;

  String domain = null;
  //enum domainEnum {  OPERATION,  WORKPLACE,  };

  String objectId = null;

  DomainAttributeChangeCommand();

  @override
  String toString() {
    return 'DomainAttributeChangeCommand[forcedLogOff=$forcedLogOff, source=$source, staffMemberId=$staffMemberId, staffMemberTimeAttendanceBreakId=$staffMemberTimeAttendanceBreakId, type=$type, attributeName=$attributeName, attributeValue=$attributeValue, domain=$domain, objectId=$objectId, ]';
  }

  DomainAttributeChangeCommand.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    forcedLogOff = json['forcedLogOff'];
    source = json['source'];
    staffMemberId = json['staffMemberId'];
    staffMemberTimeAttendanceBreakId = json['staffMemberTimeAttendanceBreakId'];
    type = json['type'];
    attributeName = json['attributeName'];
    attributeValue = new DomainAttributeChangeCommand.fromJson(json['attributeValue']);
    domain = json['domain'];
    objectId = json['objectId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'forcedLogOff': forcedLogOff,
      'source': source,
      'staffMemberId': staffMemberId,
      'staffMemberTimeAttendanceBreakId': staffMemberTimeAttendanceBreakId,
      'type': type,
      'attributeName': attributeName,
      'attributeValue': attributeValue,
      'domain': domain,
      'objectId': objectId
     };
  }

  static List<DomainAttributeChangeCommand> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainAttributeChangeCommand>() : json.map((value) => new DomainAttributeChangeCommand.fromJson(value)).toList();
  }

  static Map<String, DomainAttributeChangeCommand> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainAttributeChangeCommand>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainAttributeChangeCommand.fromJson(value));
    }
    return map;
  }
}
