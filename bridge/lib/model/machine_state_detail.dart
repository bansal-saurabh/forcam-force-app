part of swagger.api;

class MachineStateDetail {
  /* HAL embedded objects */
  Object embedded = null;
/* HAL link objects */
  Object links = null;

  MachineStateDetailProperties properties = null;

  MachineStateDetail();

  @override
  String toString() {
    return 'MachineStateDetail[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  MachineStateDetail.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new MachineStateDetailProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<MachineStateDetail> listFromJson(List<dynamic> json) {
    return json == null ? new List<MachineStateDetail>() : json.map((value) => new MachineStateDetail.fromJson(value)).toList();
  }

  static Map<String, MachineStateDetail> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MachineStateDetail>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MachineStateDetail.fromJson(value));
    }
    return map;
  }
}
