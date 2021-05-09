part of swagger.api;

class TotalQuantityEntry {
  
  DateTime endDate = null;

  String materialId = null;

  double reworkQuantity = null;

  double scrapQuantity = null;

  DateTime startDate = null;

  double targetQuantity = null;

  double totalQuantity = null;

  String workplaceId = null;

  double yieldQuantity = null;

  TotalQuantityEntry();

  @override
  String toString() {
    return 'TotalQuantityEntry[endDate=$endDate, materialId=$materialId, reworkQuantity=$reworkQuantity, scrapQuantity=$scrapQuantity, startDate=$startDate, targetQuantity=$targetQuantity, totalQuantity=$totalQuantity, workplaceId=$workplaceId, yieldQuantity=$yieldQuantity, ]';
  }

  TotalQuantityEntry.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    endDate = json['endDate'] == null ? null : DateTime.parse(json['endDate']);
    materialId = json['materialId'];
    reworkQuantity = json['reworkQuantity'];
    scrapQuantity = json['scrapQuantity'];
    startDate = json['startDate'] == null ? null : DateTime.parse(json['startDate']);
    targetQuantity = json['targetQuantity'];
    totalQuantity = json['totalQuantity'];
    workplaceId = json['workplaceId'];
    yieldQuantity = json['yieldQuantity'];
  }

  Map<String, dynamic> toJson() {
    return {
      'endDate': endDate == null ? '' : endDate.toUtc().toIso8601String(),
      'materialId': materialId,
      'reworkQuantity': reworkQuantity,
      'scrapQuantity': scrapQuantity,
      'startDate': startDate == null ? '' : startDate.toUtc().toIso8601String(),
      'targetQuantity': targetQuantity,
      'totalQuantity': totalQuantity,
      'workplaceId': workplaceId,
      'yieldQuantity': yieldQuantity
     };
  }

  static List<TotalQuantityEntry> listFromJson(List<dynamic> json) {
    return json == null ? new List<TotalQuantityEntry>() : json.map((value) => new TotalQuantityEntry.fromJson(value)).toList();
  }

  static Map<String, TotalQuantityEntry> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TotalQuantityEntry>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TotalQuantityEntry.fromJson(value));
    }
    return map;
  }
}
