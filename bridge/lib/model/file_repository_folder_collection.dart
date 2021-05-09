part of swagger.api;

class FileRepositoryFolderCollection {
  
  EmbeddedFileRepositoryFolders embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  FileRepositoryFolderCollection();

  @override
  String toString() {
    return 'FileRepositoryFolderCollection[embedded=$embedded, links=$links, pagination=$pagination, ]';
  }

  FileRepositoryFolderCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new EmbeddedFileRepositoryFolders.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    pagination = new CollectionProperties.fromJson(json['pagination']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'pagination': pagination
     };
  }

  static List<FileRepositoryFolderCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<FileRepositoryFolderCollection>() : json.map((value) => new FileRepositoryFolderCollection.fromJson(value)).toList();
  }

  static Map<String, FileRepositoryFolderCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FileRepositoryFolderCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FileRepositoryFolderCollection.fromJson(value));
    }
    return map;
  }
}
