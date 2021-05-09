part of swagger.api;

class RecordedMachineStateDetailCollection {
  /* HAL embedded objects */
  Object embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  RecordedMachineStateDetailPropertiesModel properties = null;

  RecordedMachineStateDetailCollection();

  @override
  String toString() {
    return 'RecordedMachineStateDetailCollection[embedded=$embedded, links=$links, pagination=$pagination, properties=$properties, ]';
  }

  RecordedMachineStateDetailCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    pagination = new CollectionProperties.fromJson(json['pagination']);
    properties = new RecordedMachineStateDetailPropertiesModel.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'pagination': pagination,
      'properties': properties
     };
  }

  static List<RecordedMachineStateDetailCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<RecordedMachineStateDetailCollection>() : json.map((value) => new RecordedMachineStateDetailCollection.fromJson(value)).toList();
  }

  static Map<String, RecordedMachineStateDetailCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RecordedMachineStateDetailCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RecordedMachineStateDetailCollection.fromJson(value));
    }
    return map;
  }
}
