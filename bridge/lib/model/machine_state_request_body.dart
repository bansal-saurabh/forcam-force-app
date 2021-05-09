part of swagger.api;

class MachineStateRequestBody {
  /* Array of UUIDs of machine state details */
  List<String> machineStateDetailIds = [];
/* An additional remark concerning the machine state */
  String remark = null;

  MachineStateRequestBody();

  @override
  String toString() {
    return 'MachineStateRequestBody[machineStateDetailIds=$machineStateDetailIds, remark=$remark, ]';
  }

  MachineStateRequestBody.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    machineStateDetailIds = (json['machineStateDetailIds'] as List).map((item) => item as String).toList();
    remark = json['remark'];
  }

  Map<String, dynamic> toJson() {
    return {
      'machineStateDetailIds': machineStateDetailIds,
      'remark': remark
     };
  }

  static List<MachineStateRequestBody> listFromJson(List<dynamic> json) {
    return json == null ? new List<MachineStateRequestBody>() : json.map((value) => new MachineStateRequestBody.fromJson(value)).toList();
  }

  static Map<String, MachineStateRequestBody> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MachineStateRequestBody>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MachineStateRequestBody.fromJson(value));
    }
    return map;
  }
}
