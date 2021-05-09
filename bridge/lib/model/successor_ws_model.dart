part of swagger.api;

class SuccessorWSModel {
  
  String operationId = null;

  int targetWaitTime = null;

  int targetMoveTime = null;

  SuccessorWSModel();

  @override
  String toString() {
    return 'SuccessorWSModel[operationId=$operationId, targetWaitTime=$targetWaitTime, targetMoveTime=$targetMoveTime, ]';
  }

  SuccessorWSModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    operationId = json['operationId'];
    targetWaitTime = json['targetWaitTime'];
    targetMoveTime = json['targetMoveTime'];
  }

  Map<String, dynamic> toJson() {
    return {
      'operationId': operationId,
      'targetWaitTime': targetWaitTime,
      'targetMoveTime': targetMoveTime
     };
  }

  static List<SuccessorWSModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<SuccessorWSModel>() : json.map((value) => new SuccessorWSModel.fromJson(value)).toList();
  }

  static Map<String, SuccessorWSModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SuccessorWSModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SuccessorWSModel.fromJson(value));
    }
    return map;
  }
}
