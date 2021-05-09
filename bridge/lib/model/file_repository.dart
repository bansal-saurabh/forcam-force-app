part of swagger.api;

class FileRepository {
  /* HAL embedded objects */
  Object embedded = null;
/* HAL link objects */
  Object links = null;

  FileRepository();

  @override
  String toString() {
    return 'FileRepository[embedded=$embedded, links=$links, ]';
  }

  FileRepository.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links
     };
  }

  static List<FileRepository> listFromJson(List<dynamic> json) {
    return json == null ? new List<FileRepository>() : json.map((value) => new FileRepository.fromJson(value)).toList();
  }

  static Map<String, FileRepository> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FileRepository>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FileRepository.fromJson(value));
    }
    return map;
  }
}
