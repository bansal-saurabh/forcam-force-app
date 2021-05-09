part of swagger.api;

class DocumentStateProperties {
  /* UUID of the document state */
  String id = null;
/* The description of the document state */
  String description = null;
/* The code of the document state */
  String code = null;
/* The hexadecimal value of the color assigned to the document state */
  String color = null;

  DocumentStateProperties();

  @override
  String toString() {
    return 'DocumentStateProperties[id=$id, description=$description, code=$code, color=$color, ]';
  }

  DocumentStateProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    description = json['description'];
    code = json['code'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'description': description,
      'code': code,
      'color': color
     };
  }

  static List<DocumentStateProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<DocumentStateProperties>() : json.map((value) => new DocumentStateProperties.fromJson(value)).toList();
  }

  static Map<String, DocumentStateProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DocumentStateProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DocumentStateProperties.fromJson(value));
    }
    return map;
  }
}
