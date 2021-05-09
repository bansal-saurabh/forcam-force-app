part of swagger.api;

class HitListOperatingStateWorkplaceEntry {
  
  double absoluteDurationPercentage = null;

  int duration = null;

  double durationPercentage = null;

  double frequency = null;

  String operatingStateId = null;

  String workplaceId = null;

  HitListOperatingStateWorkplaceEntry();

  @override
  String toString() {
    return 'HitListOperatingStateWorkplaceEntry[absoluteDurationPercentage=$absoluteDurationPercentage, duration=$duration, durationPercentage=$durationPercentage, frequency=$frequency, operatingStateId=$operatingStateId, workplaceId=$workplaceId, ]';
  }

  HitListOperatingStateWorkplaceEntry.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    absoluteDurationPercentage = json['absoluteDurationPercentage'];
    duration = json['duration'];
    durationPercentage = json['durationPercentage'];
    frequency = json['frequency'];
    operatingStateId = json['operatingStateId'];
    workplaceId = json['workplaceId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'absoluteDurationPercentage': absoluteDurationPercentage,
      'duration': duration,
      'durationPercentage': durationPercentage,
      'frequency': frequency,
      'operatingStateId': operatingStateId,
      'workplaceId': workplaceId
     };
  }

  static List<HitListOperatingStateWorkplaceEntry> listFromJson(List<dynamic> json) {
    return json == null ? new List<HitListOperatingStateWorkplaceEntry>() : json.map((value) => new HitListOperatingStateWorkplaceEntry.fromJson(value)).toList();
  }

  static Map<String, HitListOperatingStateWorkplaceEntry> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HitListOperatingStateWorkplaceEntry>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HitListOperatingStateWorkplaceEntry.fromJson(value));
    }
    return map;
  }
}
