part of swagger.api;

class MachineQuantitiesWithQualityDetails {
  
  String qualityDetailId = null;

  double quantity = null;

  MachineQuantitiesWithQualityDetails();

  @override
  String toString() {
    return 'MachineQuantitiesWithQualityDetails[qualityDetailId=$qualityDetailId, quantity=$quantity, ]';
  }

  MachineQuantitiesWithQualityDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    qualityDetailId = json['qualityDetailId'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    return {
      'qualityDetailId': qualityDetailId,
      'quantity': quantity
     };
  }

  static List<MachineQuantitiesWithQualityDetails> listFromJson(List<dynamic> json) {
    return json == null ? new List<MachineQuantitiesWithQualityDetails>() : json.map((value) => new MachineQuantitiesWithQualityDetails.fromJson(value)).toList();
  }

  static Map<String, MachineQuantitiesWithQualityDetails> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MachineQuantitiesWithQualityDetails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MachineQuantitiesWithQualityDetails.fromJson(value));
    }
    return map;
  }
}
