part of swagger.api;

class WorkplaceCollection {
  
  EmbeddedWorkplaces embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  WorkplaceCollection();

  @override
  String toString() {
    return 'WorkplaceCollection[embedded=$embedded, links=$links, pagination=$pagination, ]';
  }

  WorkplaceCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new EmbeddedWorkplaces.fromJson(json['_embedded']);
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

  static List<WorkplaceCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<WorkplaceCollection>() : json.map((value) => new WorkplaceCollection.fromJson(value)).toList();
  }

  static Map<String, WorkplaceCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WorkplaceCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WorkplaceCollection.fromJson(value));
    }
    return map;
  }
}
