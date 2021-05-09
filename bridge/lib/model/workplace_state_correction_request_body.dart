part of swagger.api;

class WorkplaceStateCorrectionRequestBody {
  /* Optional split timestamp */
  DateTime endDate = null;

  List<String> machineStateDetailIds = [];
/* Start timestamp of the interval which has to be corrected */
  DateTime startDate = null;

  WorkplaceStateCorrectionRequestBody();

  @override
  String toString() {
    return 'WorkplaceStateCorrectionRequestBody[endDate=$endDate, machineStateDetailIds=$machineStateDetailIds, startDate=$startDate, ]';
  }

  WorkplaceStateCorrectionRequestBody.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    endDate = json['endDate'] == null ? null : DateTime.parse(json['endDate']);
    machineStateDetailIds = (json['machineStateDetailIds'] as List).map((item) => item as String).toList();
    startDate = json['startDate'] == null ? null : DateTime.parse(json['startDate']);
  }

  Map<String, dynamic> toJson() {
    return {
      'endDate': endDate == null ? '' : endDate.toUtc().toIso8601String(),
      'machineStateDetailIds': machineStateDetailIds,
      'startDate': startDate == null ? '' : startDate.toUtc().toIso8601String()
     };
  }

  static List<WorkplaceStateCorrectionRequestBody> listFromJson(List<dynamic> json) {
    return json == null ? new List<WorkplaceStateCorrectionRequestBody>() : json.map((value) => new WorkplaceStateCorrectionRequestBody.fromJson(value)).toList();
  }

  static Map<String, WorkplaceStateCorrectionRequestBody> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WorkplaceStateCorrectionRequestBody>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WorkplaceStateCorrectionRequestBody.fromJson(value));
    }
    return map;
  }
}
