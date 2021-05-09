part of swagger.api;

class PredecessorWSModel {
  
  String operationId = null;

  int targetQueueTime = null;

  double minimumSendAheadQuantity = null;

  int minimumOffsetTime = null;

  int minimumOverlapTime = null;

  PredecessorWSModel();

  @override
  String toString() {
    return 'PredecessorWSModel[operationId=$operationId, targetQueueTime=$targetQueueTime, minimumSendAheadQuantity=$minimumSendAheadQuantity, minimumOffsetTime=$minimumOffsetTime, minimumOverlapTime=$minimumOverlapTime, ]';
  }

  PredecessorWSModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    operationId = json['operationId'];
    targetQueueTime = json['targetQueueTime'];
    minimumSendAheadQuantity = json['minimumSendAheadQuantity'];
    minimumOffsetTime = json['minimumOffsetTime'];
    minimumOverlapTime = json['minimumOverlapTime'];
  }

  Map<String, dynamic> toJson() {
    return {
      'operationId': operationId,
      'targetQueueTime': targetQueueTime,
      'minimumSendAheadQuantity': minimumSendAheadQuantity,
      'minimumOffsetTime': minimumOffsetTime,
      'minimumOverlapTime': minimumOverlapTime
     };
  }

  static List<PredecessorWSModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<PredecessorWSModel>() : json.map((value) => new PredecessorWSModel.fromJson(value)).toList();
  }

  static Map<String, PredecessorWSModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PredecessorWSModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PredecessorWSModel.fromJson(value));
    }
    return map;
  }
}
