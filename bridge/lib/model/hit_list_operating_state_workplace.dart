part of swagger.api;

class HitListOperatingStateWorkplace {
  /* HAL embedded objects */
  Object embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  HitListOperatingStateWorkplaceProperties properties = null;

  HitListOperatingStateWorkplace();

  @override
  String toString() {
    return 'HitListOperatingStateWorkplace[embedded=$embedded, links=$links, pagination=$pagination, properties=$properties, ]';
  }

  HitListOperatingStateWorkplace.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    pagination = new CollectionProperties.fromJson(json['pagination']);
    properties = new HitListOperatingStateWorkplaceProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'pagination': pagination,
      'properties': properties
     };
  }

  static List<HitListOperatingStateWorkplace> listFromJson(List<dynamic> json) {
    return json == null ? new List<HitListOperatingStateWorkplace>() : json.map((value) => new HitListOperatingStateWorkplace.fromJson(value)).toList();
  }

  static Map<String, HitListOperatingStateWorkplace> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HitListOperatingStateWorkplace>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HitListOperatingStateWorkplace.fromJson(value));
    }
    return map;
  }
}
