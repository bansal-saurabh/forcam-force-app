part of swagger.api;

class EntryPointProperties {
  /* License model in use */
  String license = null;
/* Title of the API */
  String title = null;
/* Version of the API */
  String version = null;

  EntryPointProperties();

  @override
  String toString() {
    return 'EntryPointProperties[license=$license, title=$title, version=$version, ]';
  }

  EntryPointProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    license = json['license'];
    title = json['title'];
    version = json['version'];
  }

  Map<String, dynamic> toJson() {
    return {
      'license': license,
      'title': title,
      'version': version
     };
  }

  static List<EntryPointProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<EntryPointProperties>() : json.map((value) => new EntryPointProperties.fromJson(value)).toList();
  }

  static Map<String, EntryPointProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EntryPointProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EntryPointProperties.fromJson(value));
    }
    return map;
  }
}
