part of swagger.api;

class MasterData {
  /* HAL embedded objects */
  Object embedded = null;
/* HAL link objects */
  Object links = null;

  MasterData();

  @override
  String toString() {
    return 'MasterData[embedded=$embedded, links=$links, ]';
  }

  MasterData.fromJson(Map<String, dynamic> json) {
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

  static List<MasterData> listFromJson(List<dynamic> json) {
    return json == null ? new List<MasterData>() : json.map((value) => new MasterData.fromJson(value)).toList();
  }

  static Map<String, MasterData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MasterData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MasterData.fromJson(value));
    }
    return map;
  }
}
