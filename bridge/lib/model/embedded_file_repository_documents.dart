part of swagger.api;

class EmbeddedFileRepositoryDocuments {
  /* The documents */
  List<FileRepositoryDocument> documents = [];

  EmbeddedFileRepositoryDocuments();

  @override
  String toString() {
    return 'EmbeddedFileRepositoryDocuments[documents=$documents, ]';
  }

  EmbeddedFileRepositoryDocuments.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    documents = FileRepositoryDocument.listFromJson(json['documents']);
  }

  Map<String, dynamic> toJson() {
    return {
      'documents': documents
     };
  }

  static List<EmbeddedFileRepositoryDocuments> listFromJson(List<dynamic> json) {
    return json == null ? new List<EmbeddedFileRepositoryDocuments>() : json.map((value) => new EmbeddedFileRepositoryDocuments.fromJson(value)).toList();
  }

  static Map<String, EmbeddedFileRepositoryDocuments> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EmbeddedFileRepositoryDocuments>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EmbeddedFileRepositoryDocuments.fromJson(value));
    }
    return map;
  }
}
