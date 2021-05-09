part of swagger.api;

class EmbeddedMachineStateDetails {
  /* The machine state details */
  List<MachineStateDetail> malfunctionReasons = [];

  EmbeddedMachineStateDetails();

  @override
  String toString() {
    return 'EmbeddedMachineStateDetails[malfunctionReasons=$malfunctionReasons, ]';
  }

  EmbeddedMachineStateDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    malfunctionReasons = MachineStateDetail.listFromJson(json['malfunctionReasons']);
  }

  Map<String, dynamic> toJson() {
    return {
      'malfunctionReasons': malfunctionReasons
     };
  }

  static List<EmbeddedMachineStateDetails> listFromJson(List<dynamic> json) {
    return json == null ? new List<EmbeddedMachineStateDetails>() : json.map((value) => new EmbeddedMachineStateDetails.fromJson(value)).toList();
  }

  static Map<String, EmbeddedMachineStateDetails> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EmbeddedMachineStateDetails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EmbeddedMachineStateDetails.fromJson(value));
    }
    return map;
  }
}
