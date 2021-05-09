part of swagger.api;

class CharacteristicGeneralDefinition {
  /* Name of the characteristic */
  String name = null;
/* Technical identifier of the characteristic according to ISO 13399 */
  String identifier = null;
/* Value of characteristic */
  String value = null;
/* Unit of the characteristic */
  String unit = null;

  CharacteristicGeneralDefinition();

  @override
  String toString() {
    return 'CharacteristicGeneralDefinition[name=$name, identifier=$identifier, value=$value, unit=$unit, ]';
  }

  CharacteristicGeneralDefinition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    identifier = json['identifier'];
    value = json['value'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'identifier': identifier,
      'value': value,
      'unit': unit
     };
  }

  static List<CharacteristicGeneralDefinition> listFromJson(List<dynamic> json) {
    return json == null ? new List<CharacteristicGeneralDefinition>() : json.map((value) => new CharacteristicGeneralDefinition.fromJson(value)).toList();
  }

  static Map<String, CharacteristicGeneralDefinition> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CharacteristicGeneralDefinition>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CharacteristicGeneralDefinition.fromJson(value));
    }
    return map;
  }
}
