part of swagger.api;

class EmbeddedStaffMembers {
  /* The staff members */
  List<StaffMember> staffMembers = [];

  EmbeddedStaffMembers();

  @override
  String toString() {
    return 'EmbeddedStaffMembers[staffMembers=$staffMembers, ]';
  }

  EmbeddedStaffMembers.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    staffMembers = StaffMember.listFromJson(json['staffMembers']);
  }

  Map<String, dynamic> toJson() {
    return {
      'staffMembers': staffMembers
     };
  }

  static List<EmbeddedStaffMembers> listFromJson(List<dynamic> json) {
    return json == null ? new List<EmbeddedStaffMembers>() : json.map((value) => new EmbeddedStaffMembers.fromJson(value)).toList();
  }

  static Map<String, EmbeddedStaffMembers> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EmbeddedStaffMembers>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EmbeddedStaffMembers.fromJson(value));
    }
    return map;
  }
}
