part of swagger.api;

class CallbackCollectionWSModel {
  
  EmbeddedCallbackWSModel embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  CallbackCollectionWSModel();

  @override
  String toString() {
    return 'CallbackCollectionWSModel[embedded=$embedded, links=$links, pagination=$pagination, ]';
  }

  CallbackCollectionWSModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new EmbeddedCallbackWSModel.fromJson(json['_embedded']);
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

  static List<CallbackCollectionWSModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<CallbackCollectionWSModel>() : json.map((value) => new CallbackCollectionWSModel.fromJson(value)).toList();
  }

  static Map<String, CallbackCollectionWSModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CallbackCollectionWSModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CallbackCollectionWSModel.fromJson(value));
    }
    return map;
  }
}
