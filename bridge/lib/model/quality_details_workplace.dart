part of swagger.api;

class QualityDetailsWorkplace {
  /* HAL embedded objects */
  Object embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  QualityDetailsWorkplaceProperties properties = null;

  String qualityDetailId = null;

  String qualityTypeId = null;

  double quantity = null;

  String workplaceId = null;

  QualityDetailsWorkplace();

  @override
  String toString() {
    return 'QualityDetailsWorkplace[embedded=$embedded, links=$links, pagination=$pagination, properties=$properties, qualityDetailId=$qualityDetailId, qualityTypeId=$qualityTypeId, quantity=$quantity, workplaceId=$workplaceId, ]';
  }

  QualityDetailsWorkplace.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    pagination = new CollectionProperties.fromJson(json['pagination']);
    properties = new QualityDetailsWorkplaceProperties.fromJson(json['properties']);
    qualityDetailId = json['qualityDetailId'];
    qualityTypeId = json['qualityTypeId'];
    quantity = json['quantity'];
    workplaceId = json['workplaceId'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'pagination': pagination,
      'properties': properties,
      'qualityDetailId': qualityDetailId,
      'qualityTypeId': qualityTypeId,
      'quantity': quantity,
      'workplaceId': workplaceId
     };
  }

  static List<QualityDetailsWorkplace> listFromJson(List<dynamic> json) {
    return json == null ? new List<QualityDetailsWorkplace>() : json.map((value) => new QualityDetailsWorkplace.fromJson(value)).toList();
  }

  static Map<String, QualityDetailsWorkplace> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QualityDetailsWorkplace>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QualityDetailsWorkplace.fromJson(value));
    }
    return map;
  }
}
