part of swagger.api;

class GeoCoordinates {
  /* Value of the latitude */
  double latitude = null;
/* Value of the longitude */
  double longitude = null;

  GeoCoordinates();

  @override
  String toString() {
    return 'GeoCoordinates[latitude=$latitude, longitude=$longitude, ]';
  }

  GeoCoordinates.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    return {
      'latitude': latitude,
      'longitude': longitude
     };
  }

  static List<GeoCoordinates> listFromJson(List<dynamic> json) {
    return json == null ? new List<GeoCoordinates>() : json.map((value) => new GeoCoordinates.fromJson(value)).toList();
  }

  static Map<String, GeoCoordinates> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GeoCoordinates>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GeoCoordinates.fromJson(value));
    }
    return map;
  }
}
