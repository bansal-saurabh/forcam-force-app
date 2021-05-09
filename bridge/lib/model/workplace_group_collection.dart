part of swagger.api;

class WorkplaceGroupCollection {
  
  EmbeddedWorkplaceGroups embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  WorkplaceGroupCollection();

  @override
  String toString() {
    return 'WorkplaceGroupCollection[embedded=$embedded, links=$links, pagination=$pagination, ]';
  }

  WorkplaceGroupCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new EmbeddedWorkplaceGroups.fromJson(json['_embedded']);
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

  static List<WorkplaceGroupCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<WorkplaceGroupCollection>() : json.map((value) => new WorkplaceGroupCollection.fromJson(value)).toList();
  }

  static Map<String, WorkplaceGroupCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WorkplaceGroupCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WorkplaceGroupCollection.fromJson(value));
    }
    return map;
  }
}
