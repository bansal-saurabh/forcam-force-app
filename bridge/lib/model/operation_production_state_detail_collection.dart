part of swagger.api;

class OperationProductionStateDetailCollection {
  /* Contains the embedded operation production state details. */
  Object embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  OperationProductionStateDetailCollection();

  @override
  String toString() {
    return 'OperationProductionStateDetailCollection[embedded=$embedded, links=$links, pagination=$pagination, ]';
  }

  OperationProductionStateDetailCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
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

  static List<OperationProductionStateDetailCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<OperationProductionStateDetailCollection>() : json.map((value) => new OperationProductionStateDetailCollection.fromJson(value)).toList();
  }

  static Map<String, OperationProductionStateDetailCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OperationProductionStateDetailCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OperationProductionStateDetailCollection.fromJson(value));
    }
    return map;
  }
}
