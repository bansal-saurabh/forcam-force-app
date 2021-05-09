part of swagger.api;

class StaffMember {
  /* HAL embedded objects */
  Object embedded = null;
/* Contains the linked resources: personErpKey */
  Object links = null;

  StaffMemberProperties properties = null;

  StaffMember();

  @override
  String toString() {
    return 'StaffMember[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  StaffMember.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new StaffMemberProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<StaffMember> listFromJson(List<dynamic> json) {
    return json == null ? new List<StaffMember>() : json.map((value) => new StaffMember.fromJson(value)).toList();
  }

  static Map<String, StaffMember> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StaffMember>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StaffMember.fromJson(value));
    }
    return map;
  }
}
