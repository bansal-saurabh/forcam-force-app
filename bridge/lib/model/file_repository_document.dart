part of swagger.api;

class FileRepositoryDocument {
  /* HAL embedded objects */
  Object embedded = null;
/* HAL link objects */
  Object links = null;

  FileRepositoryDocumentProperties properties = null;

  FileRepositoryDocument();

  @override
  String toString() {
    return 'FileRepositoryDocument[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  FileRepositoryDocument.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new FileRepositoryDocumentProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<FileRepositoryDocument> listFromJson(List<dynamic> json) {
    return json == null ? new List<FileRepositoryDocument>() : json.map((value) => new FileRepositoryDocument.fromJson(value)).toList();
  }

  static Map<String, FileRepositoryDocument> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FileRepositoryDocument>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FileRepositoryDocument.fromJson(value));
    }
    return map;
  }
}
