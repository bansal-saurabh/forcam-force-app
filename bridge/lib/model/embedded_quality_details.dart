part of swagger.api;

class EmbeddedQualityDetails {
  /* The quantity reasons */
  List<QualityDetail> quantityReasons = [];

  EmbeddedQualityDetails();

  @override
  String toString() {
    return 'EmbeddedQualityDetails[quantityReasons=$quantityReasons, ]';
  }

  EmbeddedQualityDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    quantityReasons = QualityDetail.listFromJson(json['quantityReasons']);
  }

  Map<String, dynamic> toJson() {
    return {
      'quantityReasons': quantityReasons
     };
  }

  static List<EmbeddedQualityDetails> listFromJson(List<dynamic> json) {
    return json == null ? new List<EmbeddedQualityDetails>() : json.map((value) => new EmbeddedQualityDetails.fromJson(value)).toList();
  }

  static Map<String, EmbeddedQualityDetails> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EmbeddedQualityDetails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EmbeddedQualityDetails.fromJson(value));
    }
    return map;
  }
}
