part of swagger.api;

class OperationProductionStateDetail {
  /* HAL embedded objects */
  Object embedded = null;
/* HAL link objects */
  Object links = null;

  OperationProductionStateDetailProperties properties = null;

  OperationProductionStateDetail();

  @override
  String toString() {
    return 'OperationProductionStateDetail[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  OperationProductionStateDetail.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new OperationProductionStateDetailProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<OperationProductionStateDetail> listFromJson(List<dynamic> json) {
    return json == null ? new List<OperationProductionStateDetail>() : json.map((value) => new OperationProductionStateDetail.fromJson(value)).toList();
  }

  static Map<String, OperationProductionStateDetail> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OperationProductionStateDetail>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OperationProductionStateDetail.fromJson(value));
    }
    return map;
  }
}
