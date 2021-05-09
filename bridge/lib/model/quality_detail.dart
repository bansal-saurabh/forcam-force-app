part of swagger.api;

class QualityDetail {
  /* HAL embedded objects */
  Object embedded = null;
/* HAL link objects */
  Object links = null;

  QualityDetailProperties properties = null;

  QualityDetail();

  @override
  String toString() {
    return 'QualityDetail[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  QualityDetail.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new QualityDetailProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<QualityDetail> listFromJson(List<dynamic> json) {
    return json == null ? new List<QualityDetail>() : json.map((value) => new QualityDetail.fromJson(value)).toList();
  }

  static Map<String, QualityDetail> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QualityDetail>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QualityDetail.fromJson(value));
    }
    return map;
  }
}
