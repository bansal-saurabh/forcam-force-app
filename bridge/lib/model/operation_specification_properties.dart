part of swagger.api;

class OperationSpecificationProperties {
  
  WorkplaceGroupProperties targetCapacityGroup = null;

  DateTime targetEndDate = null;

  DateTime targetStartDate = null;

  WorkplaceGeneralDefinition targetWorkplace = null;
/* Target yield quantity */
  double targetQuantity = null;
/* Planned scrap quantity */
  double plannedScrapQuantity = null;

  String quantityUnit = null;
/* Target time per unit in msec */
  int targetTimePerUnit = null;
/* Target machine cycles in msec */
  int targetMachineCycleTime = null;
/* Number of units produced per machine cycle */
  double unitsPerMachineCycle = null;
/* Target queue time in msec */
  int targetQueueTime = null;
/* Target setup time in msec */
  int targetSetupTime = null;
/* Target processing time in msec */
  int targetProcessingTime = null;
/* Target teardown time in msec */
  int targetTeardownTime = null;
/* Target wait time in msec */
  int targetWaitTime = null;
/* Target move time in msec */
  int targetMoveTime = null;
/* Number of the minimum send ahead quantity */
  double minimumSendAheadQuantity = null;
/* Duration of the minimum overlap time in msec */
  int minimumOverlapTime = null;

  OperationSpecificationProperties();

  @override
  String toString() {
    return 'OperationSpecificationProperties[targetCapacityGroup=$targetCapacityGroup, targetEndDate=$targetEndDate, targetStartDate=$targetStartDate, targetWorkplace=$targetWorkplace, targetQuantity=$targetQuantity, plannedScrapQuantity=$plannedScrapQuantity, quantityUnit=$quantityUnit, targetTimePerUnit=$targetTimePerUnit, targetMachineCycleTime=$targetMachineCycleTime, unitsPerMachineCycle=$unitsPerMachineCycle, targetQueueTime=$targetQueueTime, targetSetupTime=$targetSetupTime, targetProcessingTime=$targetProcessingTime, targetTeardownTime=$targetTeardownTime, targetWaitTime=$targetWaitTime, targetMoveTime=$targetMoveTime, minimumSendAheadQuantity=$minimumSendAheadQuantity, minimumOverlapTime=$minimumOverlapTime, ]';
  }

  OperationSpecificationProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    targetCapacityGroup = new WorkplaceGroupProperties.fromJson(json['targetCapacityGroup']);
    targetEndDate = json['targetEndDate'] == null ? null : DateTime.parse(json['targetEndDate']);
    targetStartDate = json['targetStartDate'] == null ? null : DateTime.parse(json['targetStartDate']);
    targetWorkplace = new WorkplaceGeneralDefinition.fromJson(json['targetWorkplace']);
    targetQuantity = json['targetQuantity'];
    plannedScrapQuantity = json['plannedScrapQuantity'];
    quantityUnit = json['quantityUnit'];
    targetTimePerUnit = json['targetTimePerUnit'];
    targetMachineCycleTime = json['targetMachineCycleTime'];
    unitsPerMachineCycle = json['unitsPerMachineCycle'];
    targetQueueTime = json['targetQueueTime'];
    targetSetupTime = json['targetSetupTime'];
    targetProcessingTime = json['targetProcessingTime'];
    targetTeardownTime = json['targetTeardownTime'];
    targetWaitTime = json['targetWaitTime'];
    targetMoveTime = json['targetMoveTime'];
    minimumSendAheadQuantity = json['minimumSendAheadQuantity'];
    minimumOverlapTime = json['minimumOverlapTime'];
  }

  Map<String, dynamic> toJson() {
    return {
      'targetCapacityGroup': targetCapacityGroup,
      'targetEndDate': targetEndDate == null ? '' : targetEndDate.toUtc().toIso8601String(),
      'targetStartDate': targetStartDate == null ? '' : targetStartDate.toUtc().toIso8601String(),
      'targetWorkplace': targetWorkplace,
      'targetQuantity': targetQuantity,
      'plannedScrapQuantity': plannedScrapQuantity,
      'quantityUnit': quantityUnit,
      'targetTimePerUnit': targetTimePerUnit,
      'targetMachineCycleTime': targetMachineCycleTime,
      'unitsPerMachineCycle': unitsPerMachineCycle,
      'targetQueueTime': targetQueueTime,
      'targetSetupTime': targetSetupTime,
      'targetProcessingTime': targetProcessingTime,
      'targetTeardownTime': targetTeardownTime,
      'targetWaitTime': targetWaitTime,
      'targetMoveTime': targetMoveTime,
      'minimumSendAheadQuantity': minimumSendAheadQuantity,
      'minimumOverlapTime': minimumOverlapTime
     };
  }

  static List<OperationSpecificationProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<OperationSpecificationProperties>() : json.map((value) => new OperationSpecificationProperties.fromJson(value)).toList();
  }

  static Map<String, OperationSpecificationProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OperationSpecificationProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OperationSpecificationProperties.fromJson(value));
    }
    return map;
  }
}
