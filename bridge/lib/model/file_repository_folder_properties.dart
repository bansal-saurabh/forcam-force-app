part of swagger.api;

class FileRepositoryFolderProperties {
  /* UUID of the document folder */
  String id = null;
/* Name of the folder */
  String name = null;
/* Person or application that created the folder */
  String creator = null;
/* Timestamp when the folder was created */
  DateTime creationDate = null;
/* Person or application that created the folder */
  String editor = null;
/* Timestamp when the folder was last changed */
  DateTime lastChangeDate = null;

  MaterialProperties material = null;

  WorkplaceGeneralDefinition workplace = null;

  FileRepositoryFolderProperties();

  @override
  String toString() {
    return 'FileRepositoryFolderProperties[id=$id, name=$name, creator=$creator, creationDate=$creationDate, editor=$editor, lastChangeDate=$lastChangeDate, material=$material, workplace=$workplace, ]';
  }

  FileRepositoryFolderProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    creator = json['creator'];
    creationDate = json['creationDate'] == null ? null : DateTime.parse(json['creationDate']);
    editor = json['editor'];
    lastChangeDate = json['lastChangeDate'] == null ? null : DateTime.parse(json['lastChangeDate']);
    material = new MaterialProperties.fromJson(json['material']);
    workplace = new WorkplaceGeneralDefinition.fromJson(json['workplace']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'creator': creator,
      'creationDate': creationDate == null ? '' : creationDate.toUtc().toIso8601String(),
      'editor': editor,
      'lastChangeDate': lastChangeDate == null ? '' : lastChangeDate.toUtc().toIso8601String(),
      'material': material,
      'workplace': workplace
     };
  }

  static List<FileRepositoryFolderProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<FileRepositoryFolderProperties>() : json.map((value) => new FileRepositoryFolderProperties.fromJson(value)).toList();
  }

  static Map<String, FileRepositoryFolderProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FileRepositoryFolderProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FileRepositoryFolderProperties.fromJson(value));
    }
    return map;
  }
}
