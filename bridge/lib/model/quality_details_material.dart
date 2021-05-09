part of swagger.api;

class QualityDetailsMaterial {
  /* HAL embedded objects */
  Object embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  String materialId = null;

  CollectionProperties pagination = null;

  QualityDetailsMaterialProperties properties = null;

  String qualityDetailId = null;

  String qualityTypeId = null;

  double quantity = null;

  QualityDetailsMaterial();

  @override
  String toString() {
    return 'QualityDetailsMaterial[embedded=$embedded, links=$links, materialId=$materialId, pagination=$pagination, properties=$properties, qualityDetailId=$qualityDetailId, qualityTypeId=$qualityTypeId, quantity=$quantity, ]';
  }

  QualityDetailsMaterial.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    materialId = json['materialId'];
    pagination = new CollectionProperties.fromJson(json['pagination']);
    properties = new QualityDetailsMaterialProperties.fromJson(json['properties']);
    qualityDetailId = json['qualityDetailId'];
    qualityTypeId = json['qualityTypeId'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'materialId': materialId,
      'pagination': pagination,
      'properties': properties,
      'qualityDetailId': qualityDetailId,
      'qualityTypeId': qualityTypeId,
      'quantity': quantity
     };
  }

  static List<QualityDetailsMaterial> listFromJson(List<dynamic> json) {
    return json == null ? new List<QualityDetailsMaterial>() : json.map((value) => new QualityDetailsMaterial.fromJson(value)).toList();
  }

  static Map<String, QualityDetailsMaterial> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QualityDetailsMaterial>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QualityDetailsMaterial.fromJson(value));
    }
    return map;
  }
}
