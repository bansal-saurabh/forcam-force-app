part of swagger.api;

class CreateFileRepositoryDocumentProperties {
  /* Origin of the document, which is either externally created, internally created at the machine or optimized at the machine */
  String origin = null;
  //enum originEnum {  CREATED_INTERNALLY,  CREATED_EXTERNALLY,  OPTIMIZED_AT_THE_MACHINE,  CREATED_AT_THE_MACHINE,  };
/* Type of the document */
  String type = null;

  CreateFileRepositoryDocumentProperties();

  @override
  String toString() {
    return 'CreateFileRepositoryDocumentProperties[origin=$origin, type=$type, ]';
  }

  CreateFileRepositoryDocumentProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    origin = json['origin'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    return {
      'origin': origin,
      'type': type
     };
  }

  static List<CreateFileRepositoryDocumentProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateFileRepositoryDocumentProperties>() : json.map((value) => new CreateFileRepositoryDocumentProperties.fromJson(value)).toList();
  }

  static Map<String, CreateFileRepositoryDocumentProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateFileRepositoryDocumentProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateFileRepositoryDocumentProperties.fromJson(value));
    }
    return map;
  }
}
