part of swagger.api;

class CreateToolLocationProperties {
  
  GeoCoordinates geoCoordinates = null;
/* Number of the tool magazine */
  int magazineNumber = null;
/* Place in the tool magazine */
  int magazinePlace = null;
/* UUID of the corresponding workplace */
  String workplaceId = null;

  CreateToolLocationProperties();

  @override
  String toString() {
    return 'CreateToolLocationProperties[geoCoordinates=$geoCoordinates, magazineNumber=$magazineNumber, magazinePlace=$magazinePlace, workplaceId=$workplaceId, ]';
  }

  CreateToolLocationProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    geoCoordinates = new GeoCoordinates.fromJson(json['geoCoordinates']);
    magazineNumber = json['magazineNumber'];
    magazinePlace = json['magazinePlace'];
    workplaceId = json['workplaceId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'geoCoordinates': geoCoordinates,
      'magazineNumber': magazineNumber,
      'magazinePlace': magazinePlace,
      'workplaceId': workplaceId
     };
  }

  static List<CreateToolLocationProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateToolLocationProperties>() : json.map((value) => new CreateToolLocationProperties.fromJson(value)).toList();
  }

  static Map<String, CreateToolLocationProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateToolLocationProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateToolLocationProperties.fromJson(value));
    }
    return map;
  }
}
