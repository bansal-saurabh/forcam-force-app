part of swagger.api;

class FileRepositoryFolder {
  /* HAL embedded objects */
  Object embedded = null;
/* Contains the linked resources: documents, folderState */
  Object links = null;

  FileRepositoryFolderProperties properties = null;

  FileRepositoryFolder();

  @override
  String toString() {
    return 'FileRepositoryFolder[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  FileRepositoryFolder.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new FileRepositoryFolderProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<FileRepositoryFolder> listFromJson(List<dynamic> json) {
    return json == null ? new List<FileRepositoryFolder>() : json.map((value) => new FileRepositoryFolder.fromJson(value)).toList();
  }

  static Map<String, FileRepositoryFolder> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FileRepositoryFolder>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FileRepositoryFolder.fromJson(value));
    }
    return map;
  }
}
