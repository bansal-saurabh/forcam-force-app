part of swagger.api;

class OperatingStateDetailRequestBody {
  /* Start date of the interval which has to be corrected */
  DateTime startDate = null;
/* Optional end date */
  DateTime endDate = null;

  String operatingStateId = null;

  String remark = null;

  OperatingStateDetailRequestBody();

  @override
  String toString() {
    return 'OperatingStateDetailRequestBody[startDate=$startDate, endDate=$endDate, operatingStateId=$operatingStateId, remark=$remark, ]';
  }

  OperatingStateDetailRequestBody.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    startDate = json['startDate'] == null ? null : DateTime.parse(json['startDate']);
    endDate = json['endDate'] == null ? null : DateTime.parse(json['endDate']);
    operatingStateId = json['operatingStateId'];
    remark = json['remark'];
  }

  Map<String, dynamic> toJson() {
    return {
      'startDate': startDate == null ? '' : startDate.toUtc().toIso8601String(),
      'endDate': endDate == null ? '' : endDate.toUtc().toIso8601String(),
      'operatingStateId': operatingStateId,
      'remark': remark
     };
  }

  static List<OperatingStateDetailRequestBody> listFromJson(List<dynamic> json) {
    return json == null ? new List<OperatingStateDetailRequestBody>() : json.map((value) => new OperatingStateDetailRequestBody.fromJson(value)).toList();
  }

  static Map<String, OperatingStateDetailRequestBody> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OperatingStateDetailRequestBody>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OperatingStateDetailRequestBody.fromJson(value));
    }
    return map;
  }
}
