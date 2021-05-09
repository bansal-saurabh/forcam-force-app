part of swagger.api;

class MachineCollection {
  
  EmbeddedMachines embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  MachineCollection();

  @override
  String toString() {
    return 'MachineCollection[embedded=$embedded, links=$links, pagination=$pagination, ]';
  }

  MachineCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new EmbeddedMachines.fromJson(json['_embedded']);
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

  static List<MachineCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<MachineCollection>() : json.map((value) => new MachineCollection.fromJson(value)).toList();
  }

  static Map<String, MachineCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MachineCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MachineCollection.fromJson(value));
    }
    return map;
  }
}
