part of swagger.api;

class SearchProductionOrders {
  
  DateTime actualEndDateUntil = null;

  DateTime actualStartDateFrom = null;

  DateTime basicEndDateUntil = null;

  DateTime basicStartDateFrom = null;

  DateTime endDate = null;

  List<String> erpContextIds = [];

  List<String> materialNumbers = [];

  List<String> productionOrderIds = [];

  List<String> productionOrderNumbers = [];

  List<String> productionOrderSplits = [];

  DateTime startDate = null;

  SearchProductionOrders();

  @override
  String toString() {
    return 'SearchProductionOrders[actualEndDateUntil=$actualEndDateUntil, actualStartDateFrom=$actualStartDateFrom, basicEndDateUntil=$basicEndDateUntil, basicStartDateFrom=$basicStartDateFrom, endDate=$endDate, erpContextIds=$erpContextIds, materialNumbers=$materialNumbers, productionOrderIds=$productionOrderIds, productionOrderNumbers=$productionOrderNumbers, productionOrderSplits=$productionOrderSplits, startDate=$startDate, ]';
  }

  SearchProductionOrders.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    actualEndDateUntil = json['actualEndDateUntil'] == null ? null : DateTime.parse(json['actualEndDateUntil']);
    actualStartDateFrom = json['actualStartDateFrom'] == null ? null : DateTime.parse(json['actualStartDateFrom']);
    basicEndDateUntil = json['basicEndDateUntil'] == null ? null : DateTime.parse(json['basicEndDateUntil']);
    basicStartDateFrom = json['basicStartDateFrom'] == null ? null : DateTime.parse(json['basicStartDateFrom']);
    endDate = json['endDate'] == null ? null : DateTime.parse(json['endDate']);
    erpContextIds = (json['erpContextIds'] as List).map((item) => item as String).toList();
    materialNumbers = (json['materialNumbers'] as List).map((item) => item as String).toList();
    productionOrderIds = (json['productionOrderIds'] as List).map((item) => item as String).toList();
    productionOrderNumbers = (json['productionOrderNumbers'] as List).map((item) => item as String).toList();
    productionOrderSplits = (json['productionOrderSplits'] as List).map((item) => item as String).toList();
    startDate = json['startDate'] == null ? null : DateTime.parse(json['startDate']);
  }

  Map<String, dynamic> toJson() {
    return {
      'actualEndDateUntil': actualEndDateUntil == null ? '' : actualEndDateUntil.toUtc().toIso8601String(),
      'actualStartDateFrom': actualStartDateFrom == null ? '' : actualStartDateFrom.toUtc().toIso8601String(),
      'basicEndDateUntil': basicEndDateUntil == null ? '' : basicEndDateUntil.toUtc().toIso8601String(),
      'basicStartDateFrom': basicStartDateFrom == null ? '' : basicStartDateFrom.toUtc().toIso8601String(),
      'endDate': endDate == null ? '' : endDate.toUtc().toIso8601String(),
      'erpContextIds': erpContextIds,
      'materialNumbers': materialNumbers,
      'productionOrderIds': productionOrderIds,
      'productionOrderNumbers': productionOrderNumbers,
      'productionOrderSplits': productionOrderSplits,
      'startDate': startDate == null ? '' : startDate.toUtc().toIso8601String()
     };
  }

  static List<SearchProductionOrders> listFromJson(List<dynamic> json) {
    return json == null ? new List<SearchProductionOrders>() : json.map((value) => new SearchProductionOrders.fromJson(value)).toList();
  }

  static Map<String, SearchProductionOrders> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SearchProductionOrders>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SearchProductionOrders.fromJson(value));
    }
    return map;
  }
}
