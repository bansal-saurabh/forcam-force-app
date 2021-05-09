part of swagger.api;

class OperationPhase {
  /* UUID of the workplace where the operation is executed (mandatory for SETUP and PROCESSING). */
  String workplaceId = null;

  String staffMemberId = null;

  OperationPhase();

  @override
  String toString() {
    return 'OperationPhase[workplaceId=$workplaceId, staffMemberId=$staffMemberId, ]';
  }

  OperationPhase.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    workplaceId = json['workplaceId'];
    staffMemberId = json['staffMemberId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'workplaceId': workplaceId,
      'staffMemberId': staffMemberId
     };
  }

  static List<OperationPhase> listFromJson(List<dynamic> json) {
    return json == null ? new List<OperationPhase>() : json.map((value) => new OperationPhase.fromJson(value)).toList();
  }

  static Map<String, OperationPhase> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OperationPhase>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OperationPhase.fromJson(value));
    }
    return map;
  }
}
