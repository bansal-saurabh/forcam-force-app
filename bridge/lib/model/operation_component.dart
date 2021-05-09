part of swagger.api;

class OperationComponent {
  
  CreateMaterialProperties material = null;
/* Required quantity of the material */
  double quantity = null;
/* Unit of the required quantity */
  String quantityUnit = null;

  OperationComponent();

  @override
  String toString() {
    return 'OperationComponent[material=$material, quantity=$quantity, quantityUnit=$quantityUnit, ]';
  }

  OperationComponent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    material = new CreateMaterialProperties.fromJson(json['material']);
    quantity = json['quantity'];
    quantityUnit = json['quantityUnit'];
  }

  Map<String, dynamic> toJson() {
    return {
      'material': material,
      'quantity': quantity,
      'quantityUnit': quantityUnit
     };
  }

  static List<OperationComponent> listFromJson(List<dynamic> json) {
    return json == null ? new List<OperationComponent>() : json.map((value) => new OperationComponent.fromJson(value)).toList();
  }

  static Map<String, OperationComponent> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OperationComponent>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OperationComponent.fromJson(value));
    }
    return map;
  }
}
