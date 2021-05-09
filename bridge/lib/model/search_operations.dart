part of swagger.api;

class SearchOperations {
  /* Operations with a later start date are excluded. The start date of an operation is either the actual start date or the planned start date or the scheduled start date, depending on the operation phase */
  DateTime endDate = null;
/* UUID of the ERP context in which the workplace number is a unique identifier for a workplace or a workplace group. In SAP ERP, for example, this context is defined by the client, the company code, and the plant */
  List<String> erpContextIds = [];
/* True if the operationPhaseId is 'DISPATCHED' */
  bool isDispatched = null;

  bool isInProgress = null;
/* “true” or “false”. An operation is plannable if the operation phase is either RELEASED or DISPATCHED and the plannedStartDate is out-side the frozen zone. If no frozen zone has been defined, the first condition is sufficient. If there is an operation block, e.g. in joint production, only the leading operation of the operation block is planned. This means that all operations for which a block number has been defined and which are not themselves leading operations cannot be planned separately */
  bool isPlannable = null;
/* The material number of the material produced by the operation */
  List<String> materialNumbers = [];

  List<String> operationIds = [];
/* The operation number */
  List<String> operationNumbers = [];
/* The identifier of the current operation phase of the operation */
  List<String> operationPhaseIds = null;
  //enum operationPhaseIdsEnum {  RELEASED,  COMPLETED,  SETUP,  PROCESSING,  DISPATCHED,  TRAINING,  CLOSED,  INTERRUPTED,  WAITING_BEFORE_PROCESSING,  WAITING_AFTER_PROCESSING,  };
/* The split number of the operation */
  List<String> operationSplits = [];

  List<String> plannedWorkplaceIds = [];
/* The number of the planned workplace that is defined in detailed scheduling and dispatching */
  List<String> plannedWorkplaceNumbers = [];
/* UUID of an order */
  List<String> productionOrderIds = [];
/* The order number of the corresponding production order */
  List<String> productionOrderNumbers = [];
/* The split number of the corresponding production order split */
  List<String> productionOrderSplits = [];
/* Operations with an earlier end date are excluded. The end date of an operation is either the actual end date or the planned end date or the scheduled end date, depending on the operation phase (default value: beginning of the current week) */
  DateTime startDate = null;

  List<String> targetWorkplaceIds = [];
/* The number of the target workplace specified by the ERP system */
  List<String> targetWorkplaceNumbers = [];

  List<String> workplaceIds = [];
/* The number of the workplace at which the operation is or has been executed for operations in the SETUP, PROCESSING, COMPLETED and CLOSED phases.  For operations in the DISPATCHED phase, it is the number of the planned workplace. For operations in the RELEASED phase, it is the number of the target workplace */
  List<String> workplaceNumbers = [];

  SearchOperations();

  @override
  String toString() {
    return 'SearchOperations[endDate=$endDate, erpContextIds=$erpContextIds, isDispatched=$isDispatched, isInProgress=$isInProgress, isPlannable=$isPlannable, materialNumbers=$materialNumbers, operationIds=$operationIds, operationNumbers=$operationNumbers, operationPhaseIds=$operationPhaseIds, operationSplits=$operationSplits, plannedWorkplaceIds=$plannedWorkplaceIds, plannedWorkplaceNumbers=$plannedWorkplaceNumbers, productionOrderIds=$productionOrderIds, productionOrderNumbers=$productionOrderNumbers, productionOrderSplits=$productionOrderSplits, startDate=$startDate, targetWorkplaceIds=$targetWorkplaceIds, targetWorkplaceNumbers=$targetWorkplaceNumbers, workplaceIds=$workplaceIds, workplaceNumbers=$workplaceNumbers, ]';
  }

  SearchOperations.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    endDate = json['endDate'] == null ? null : DateTime.parse(json['endDate']);
    erpContextIds = (json['erpContextIds'] as List).map((item) => item as String).toList();
    isDispatched = json['isDispatched'];
    isInProgress = json['isInProgress'];
    isPlannable = json['isPlannable'];
    materialNumbers = (json['materialNumbers'] as List).map((item) => item as String).toList();
    operationIds = (json['operationIds'] as List).map((item) => item as String).toList();
    operationNumbers = (json['operationNumbers'] as List).map((item) => item as String).toList();
    operationPhaseIds = (json['operationPhaseIds'] as List).map((item) => item as String).toList();
    operationSplits = (json['operationSplits'] as List).map((item) => item as String).toList();
    plannedWorkplaceIds = (json['plannedWorkplaceIds'] as List).map((item) => item as String).toList();
    plannedWorkplaceNumbers = (json['plannedWorkplaceNumbers'] as List).map((item) => item as String).toList();
    productionOrderIds = (json['productionOrderIds'] as List).map((item) => item as String).toList();
    productionOrderNumbers = (json['productionOrderNumbers'] as List).map((item) => item as String).toList();
    productionOrderSplits = (json['productionOrderSplits'] as List).map((item) => item as String).toList();
    startDate = json['startDate'] == null ? null : DateTime.parse(json['startDate']);
    targetWorkplaceIds = (json['targetWorkplaceIds'] as List).map((item) => item as String).toList();
    targetWorkplaceNumbers = (json['targetWorkplaceNumbers'] as List).map((item) => item as String).toList();
    workplaceIds = (json['workplaceIds'] as List).map((item) => item as String).toList();
    workplaceNumbers = (json['workplaceNumbers'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'endDate': endDate == null ? '' : endDate.toUtc().toIso8601String(),
      'erpContextIds': erpContextIds,
      'isDispatched': isDispatched,
      'isInProgress': isInProgress,
      'isPlannable': isPlannable,
      'materialNumbers': materialNumbers,
      'operationIds': operationIds,
      'operationNumbers': operationNumbers,
      'operationPhaseIds': operationPhaseIds,
      'operationSplits': operationSplits,
      'plannedWorkplaceIds': plannedWorkplaceIds,
      'plannedWorkplaceNumbers': plannedWorkplaceNumbers,
      'productionOrderIds': productionOrderIds,
      'productionOrderNumbers': productionOrderNumbers,
      'productionOrderSplits': productionOrderSplits,
      'startDate': startDate == null ? '' : startDate.toUtc().toIso8601String(),
      'targetWorkplaceIds': targetWorkplaceIds,
      'targetWorkplaceNumbers': targetWorkplaceNumbers,
      'workplaceIds': workplaceIds,
      'workplaceNumbers': workplaceNumbers
     };
  }

  static List<SearchOperations> listFromJson(List<dynamic> json) {
    return json == null ? new List<SearchOperations>() : json.map((value) => new SearchOperations.fromJson(value)).toList();
  }

  static Map<String, SearchOperations> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SearchOperations>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SearchOperations.fromJson(value));
    }
    return map;
  }
}
