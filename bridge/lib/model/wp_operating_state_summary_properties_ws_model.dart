part of swagger.api;

class WpOperatingStateSummaryPropertiesWSModel {
  /* Scheduled operating time of the workplace during the selected period in msec */
  int scheduledOperatingTime = null;
/* Total execution time of all operations executed at the respective workplace within the selected period in msec */
  int occupancyTime = null;
/* Total processing time of the workplace during the selected period in msec */
  int processingTime = null;
/* Total production time of the workplace during the selected period in msec */
  int productionTime = null;
/* Total setup time during the selected period in msec */
  int setupTime = null;
/* Occupancy rate of the workplace during the selected period */
  double occupancyRate = null;
/* Setup reduction of the workplace during the selected period */
  double setupReduction = null;
/* Process availability of the workplace during the selected period */
  double processAvailability = null;
/* Availability of the workplace during the selected period */
  double availability = null;
/* Array of operating state summaries with duration greater than zero */
  List<RecordedOperatingStateSummary> elements = [];

  WpOperatingStateSummaryPropertiesWSModel();

  @override
  String toString() {
    return 'WpOperatingStateSummaryPropertiesWSModel[scheduledOperatingTime=$scheduledOperatingTime, occupancyTime=$occupancyTime, processingTime=$processingTime, productionTime=$productionTime, setupTime=$setupTime, occupancyRate=$occupancyRate, setupReduction=$setupReduction, processAvailability=$processAvailability, availability=$availability, elements=$elements, ]';
  }

  WpOperatingStateSummaryPropertiesWSModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    scheduledOperatingTime = json['scheduledOperatingTime'];
    occupancyTime = json['occupancyTime'];
    processingTime = json['processingTime'];
    productionTime = json['productionTime'];
    setupTime = json['setupTime'];
    occupancyRate = json['occupancyRate'];
    setupReduction = json['setupReduction'];
    processAvailability = json['processAvailability'];
    availability = json['availability'];
    elements = RecordedOperatingStateSummary.listFromJson(json['elements']);
  }

  Map<String, dynamic> toJson() {
    return {
      'scheduledOperatingTime': scheduledOperatingTime,
      'occupancyTime': occupancyTime,
      'processingTime': processingTime,
      'productionTime': productionTime,
      'setupTime': setupTime,
      'occupancyRate': occupancyRate,
      'setupReduction': setupReduction,
      'processAvailability': processAvailability,
      'availability': availability,
      'elements': elements
     };
  }

  static List<WpOperatingStateSummaryPropertiesWSModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<WpOperatingStateSummaryPropertiesWSModel>() : json.map((value) => new WpOperatingStateSummaryPropertiesWSModel.fromJson(value)).toList();
  }

  static Map<String, WpOperatingStateSummaryPropertiesWSModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WpOperatingStateSummaryPropertiesWSModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WpOperatingStateSummaryPropertiesWSModel.fromJson(value));
    }
    return map;
  }
}
