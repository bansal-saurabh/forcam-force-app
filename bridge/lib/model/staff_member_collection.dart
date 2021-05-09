part of swagger.api;

class StaffMemberCollection {
  
  EmbeddedStaffMembers embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  StaffMemberCollection();

  @override
  String toString() {
    return 'StaffMemberCollection[embedded=$embedded, links=$links, pagination=$pagination, ]';
  }

  StaffMemberCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new EmbeddedStaffMembers.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    pagination = new CollectionProperties.fromJson(json['pagination']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'pagination': pagination
     };
  }

  static List<StaffMemberCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<StaffMemberCollection>() : json.map((value) => new StaffMemberCollection.fromJson(value)).toList();
  }

  static Map<String, StaffMemberCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StaffMemberCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StaffMemberCollection.fromJson(value));
    }
    return map;
  }
}
