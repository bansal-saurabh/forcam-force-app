part of swagger.api;

class HitListOperatingStateMaterialEntry {
  
  double absoluteDurationPercentage = null;

  int duration = null;

  double durationPercentage = null;

  double frequency = null;

  String materialId = null;

  String operatingStateId = null;

  HitListOperatingStateMaterialEntry();

  @override
  String toString() {
    return 'HitListOperatingStateMaterialEntry[absoluteDurationPercentage=$absoluteDurationPercentage, duration=$duration, durationPercentage=$durationPercentage, frequency=$frequency, materialId=$materialId, operatingStateId=$operatingStateId, ]';
  }

  HitListOperatingStateMaterialEntry.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    absoluteDurationPercentage = json['absoluteDurationPercentage'];
    duration = json['duration'];
    durationPercentage = json['durationPercentage'];
    frequency = json['frequency'];
    materialId = json['materialId'];
    operatingStateId = json['operatingStateId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'absoluteDurationPercentage': absoluteDurationPercentage,
      'duration': duration,
      'durationPercentage': durationPercentage,
      'frequency': frequency,
      'materialId': materialId,
      'operatingStateId': operatingStateId
     };
  }

  static List<HitListOperatingStateMaterialEntry> listFromJson(List<dynamic> json) {
    return json == null ? new List<HitListOperatingStateMaterialEntry>() : json.map((value) => new HitListOperatingStateMaterialEntry.fromJson(value)).toList();
  }

  static Map<String, HitListOperatingStateMaterialEntry> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HitListOperatingStateMaterialEntry>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HitListOperatingStateMaterialEntry.fromJson(value));
    }
    return map;
  }
}
