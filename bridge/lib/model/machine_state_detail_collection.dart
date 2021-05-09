part of swagger.api;

class MachineStateDetailCollection {
  
  EmbeddedMachineStateDetails embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  MachineStateDetailCollection();

  @override
  String toString() {
    return 'MachineStateDetailCollection[embedded=$embedded, links=$links, pagination=$pagination, ]';
  }

  MachineStateDetailCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new EmbeddedMachineStateDetails.fromJson(json['_embedded']);
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

  static List<MachineStateDetailCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<MachineStateDetailCollection>() : json.map((value) => new MachineStateDetailCollection.fromJson(value)).toList();
  }

  static Map<String, MachineStateDetailCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MachineStateDetailCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MachineStateDetailCollection.fromJson(value));
    }
    return map;
  }
}
