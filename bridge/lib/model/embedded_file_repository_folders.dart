part of swagger.api;

class EmbeddedFileRepositoryFolders {
  /* The folders */
  List<FileRepositoryFolder> folders = [];

  EmbeddedFileRepositoryFolders();

  @override
  String toString() {
    return 'EmbeddedFileRepositoryFolders[folders=$folders, ]';
  }

  EmbeddedFileRepositoryFolders.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    folders = FileRepositoryFolder.listFromJson(json['folders']);
  }

  Map<String, dynamic> toJson() {
    return {
      'folders': folders
     };
  }

  static List<EmbeddedFileRepositoryFolders> listFromJson(List<dynamic> json) {
    return json == null ? new List<EmbeddedFileRepositoryFolders>() : json.map((value) => new EmbeddedFileRepositoryFolders.fromJson(value)).toList();
  }

  static Map<String, EmbeddedFileRepositoryFolders> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EmbeddedFileRepositoryFolders>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EmbeddedFileRepositoryFolders.fromJson(value));
    }
    return map;
  }
}
