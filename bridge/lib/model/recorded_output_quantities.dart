part of swagger.api;

class RecordedOutputQuantities {
  /* Booked output quantity */
  double quantity = null;
/* Timestamp of the quantity booking */
  DateTime bookingTime = null;
/* ID of the quality type of the booked output quantity */
  String qualityTypeId = null;
  //enum qualityTypeIdEnum {  YIELD,  SCRAP,  REWORK,  };
/* UUID of the quality detail */
  String qualityDetailId = null;

  RecordedOutputQuantities();

  @override
  String toString() {
    return 'RecordedOutputQuantities[quantity=$quantity, bookingTime=$bookingTime, qualityTypeId=$qualityTypeId, qualityDetailId=$qualityDetailId, ]';
  }

  RecordedOutputQuantities.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    quantity = json['quantity'];
    bookingTime = json['bookingTime'] == null ? null : DateTime.parse(json['bookingTime']);
    qualityTypeId = json['qualityTypeId'];
    qualityDetailId = json['qualityDetailId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'quantity': quantity,
      'bookingTime': bookingTime == null ? '' : bookingTime.toUtc().toIso8601String(),
      'qualityTypeId': qualityTypeId,
      'qualityDetailId': qualityDetailId
     };
  }

  static List<RecordedOutputQuantities> listFromJson(List<dynamic> json) {
    return json == null ? new List<RecordedOutputQuantities>() : json.map((value) => new RecordedOutputQuantities.fromJson(value)).toList();
  }

  static Map<String, RecordedOutputQuantities> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RecordedOutputQuantities>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RecordedOutputQuantities.fromJson(value));
    }
    return map;
  }
}
