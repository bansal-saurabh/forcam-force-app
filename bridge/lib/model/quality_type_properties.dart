part of swagger.api;

class QualityTypeProperties {
  /* ID of the quality type */
  String id = null;
/* Description of the quality type */
  String description = null;
/* Short description of the quality type */
  String shortDescription = null;
/* Color code */
  String color = null;

  QualityTypeProperties();

  @override
  String toString() {
    return 'QualityTypeProperties[id=$id, description=$description, shortDescription=$shortDescription, color=$color, ]';
  }

  QualityTypeProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    description = json['description'];
    shortDescription = json['shortDescription'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'description': description,
      'shortDescription': shortDescription,
      'color': color
     };
  }

  static List<QualityTypeProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<QualityTypeProperties>() : json.map((value) => new QualityTypeProperties.fromJson(value)).toList();
  }

  static Map<String, QualityTypeProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QualityTypeProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QualityTypeProperties.fromJson(value));
    }
    return map;
  }
}
