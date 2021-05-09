part of swagger.api;

class CreateFileRepositoryFolderProperties {
  /* Name of the folder */
  String name = null;
/* UUID of the associated workplace */
  String workplaceId = null;
/* Number of the associated material */
  String materialNumber = null;

  CreateFileRepositoryFolderProperties();

  @override
  String toString() {
    return 'CreateFileRepositoryFolderProperties[name=$name, workplaceId=$workplaceId, materialNumber=$materialNumber, ]';
  }

  CreateFileRepositoryFolderProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    workplaceId = json['workplaceId'];
    materialNumber = json['materialNumber'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'workplaceId': workplaceId,
      'materialNumber': materialNumber
     };
  }

  static List<CreateFileRepositoryFolderProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateFileRepositoryFolderProperties>() : json.map((value) => new CreateFileRepositoryFolderProperties.fromJson(value)).toList();
  }

  static Map<String, CreateFileRepositoryFolderProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateFileRepositoryFolderProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateFileRepositoryFolderProperties.fromJson(value));
    }
    return map;
  }
}
