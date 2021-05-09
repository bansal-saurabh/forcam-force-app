part of swagger.api;

class WorkplaceShiftCollection {
  
  EmbeddedWorkplaceShifts embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  WorkplaceShiftCollection();

  @override
  String toString() {
    return 'WorkplaceShiftCollection[embedded=$embedded, links=$links, pagination=$pagination, ]';
  }

  WorkplaceShiftCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new EmbeddedWorkplaceShifts.fromJson(json['_embedded']);
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

  static List<WorkplaceShiftCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<WorkplaceShiftCollection>() : json.map((value) => new WorkplaceShiftCollection.fromJson(value)).toList();
  }

  static Map<String, WorkplaceShiftCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WorkplaceShiftCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WorkplaceShiftCollection.fromJson(value));
    }
    return map;
  }
}
