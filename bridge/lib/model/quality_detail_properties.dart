part of swagger.api;

class QualityDetailProperties {
  /* UUID of a quality detail */
  String id = null;
/* Description of the quality detail */
  String description = null;
/* Short description of the quality detail */
  String shortDescription = null;
/* ID of the quality type */
  String qualityTypeId = null;
  //enum qualityTypeIdEnum {  YIELD,  SCRAP,  REWORK,  };

  String code = null;
/* Color code */
  String color = null;

  QualityDetailProperties();

  @override
  String toString() {
    return 'QualityDetailProperties[id=$id, description=$description, shortDescription=$shortDescription, qualityTypeId=$qualityTypeId, code=$code, color=$color, ]';
  }

  QualityDetailProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    description = json['description'];
    shortDescription = json['shortDescription'];
    qualityTypeId = json['qualityTypeId'];
    code = json['code'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'description': description,
      'shortDescription': shortDescription,
      'qualityTypeId': qualityTypeId,
      'code': code,
      'color': color
     };
  }

  static List<QualityDetailProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<QualityDetailProperties>() : json.map((value) => new QualityDetailProperties.fromJson(value)).toList();
  }

  static Map<String, QualityDetailProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QualityDetailProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QualityDetailProperties.fromJson(value));
    }
    return map;
  }
}
