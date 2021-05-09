part of swagger.api;

class RecordedMachineStateDetailElement {
  
  String code = null;

  String description = null;

  List<String> machineStateDetailIds = [];

  TimePeriodDefinition timePeriod = null;

  String workplaceStateId = null;
  //enum workplaceStateIdEnum {  DOWNTIME,  PRODUCTION,  };

  RecordedMachineStateDetailElement();

  @override
  String toString() {
    return 'RecordedMachineStateDetailElement[code=$code, description=$description, machineStateDetailIds=$machineStateDetailIds, timePeriod=$timePeriod, workplaceStateId=$workplaceStateId, ]';
  }

  RecordedMachineStateDetailElement.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code = json['code'];
    description = json['description'];
    machineStateDetailIds = (json['machineStateDetailIds'] as List).map((item) => item as String).toList();
    timePeriod = new TimePeriodDefinition.fromJson(json['timePeriod']);
    workplaceStateId = json['workplaceStateId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'description': description,
      'machineStateDetailIds': machineStateDetailIds,
      'timePeriod': timePeriod,
      'workplaceStateId': workplaceStateId
     };
  }

  static List<RecordedMachineStateDetailElement> listFromJson(List<dynamic> json) {
    return json == null ? new List<RecordedMachineStateDetailElement>() : json.map((value) => new RecordedMachineStateDetailElement.fromJson(value)).toList();
  }

  static Map<String, RecordedMachineStateDetailElement> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RecordedMachineStateDetailElement>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RecordedMachineStateDetailElement.fromJson(value));
    }
    return map;
  }
}
