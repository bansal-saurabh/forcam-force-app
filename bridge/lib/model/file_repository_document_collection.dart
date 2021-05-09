part of swagger.api;

class FileRepositoryDocumentCollection {
  
  EmbeddedFileRepositoryDocuments embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  FileRepositoryDocumentCollection();

  @override
  String toString() {
    return 'FileRepositoryDocumentCollection[embedded=$embedded, links=$links, pagination=$pagination, ]';
  }

  FileRepositoryDocumentCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new EmbeddedFileRepositoryDocuments.fromJson(json['_embedded']);
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

  static List<FileRepositoryDocumentCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<FileRepositoryDocumentCollection>() : json.map((value) => new FileRepositoryDocumentCollection.fromJson(value)).toList();
  }

  static Map<String, FileRepositoryDocumentCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FileRepositoryDocumentCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FileRepositoryDocumentCollection.fromJson(value));
    }
    return map;
  }
}
