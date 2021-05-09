part of swagger.api;

class ProductionResourceToolProperties {
  /* UUID of the production tool resource */
  String id = null;
/* Item number assigned to a production resource in the context of the operation */
  String itemNumber = null;
/* The type of a production resource which is either 'MATERIAL', 'EQUIPMENT', 'DOCUMENT' or 'OTHER_ASSETS' */
  String type = null;
/* Production resource and tool group */
  String group = null;
/* Number of the production resource (material number, equipment number or document number) which is unique within its ERP context */
  String number = null;
/* Description of the production resource */
  String description = null;
/* Required quantity of the production resource */
  double quantity = null;
/* Unit of the required quantity  */
  String quantityUnit = null;

  ProductionResourceToolProperties();

  @override
  String toString() {
    return 'ProductionResourceToolProperties[id=$id, itemNumber=$itemNumber, type=$type, group=$group, number=$number, description=$description, quantity=$quantity, quantityUnit=$quantityUnit, ]';
  }

  ProductionResourceToolProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    itemNumber = json['itemNumber'];
    type = json['type'];
    group = json['group'];
    number = json['number'];
    description = json['description'];
    quantity = json['quantity'];
    quantityUnit = json['quantityUnit'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'itemNumber': itemNumber,
      'type': type,
      'group': group,
      'number': number,
      'description': description,
      'quantity': quantity,
      'quantityUnit': quantityUnit
     };
  }

  static List<ProductionResourceToolProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<ProductionResourceToolProperties>() : json.map((value) => new ProductionResourceToolProperties.fromJson(value)).toList();
  }

  static Map<String, ProductionResourceToolProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProductionResourceToolProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ProductionResourceToolProperties.fromJson(value));
    }
    return map;
  }
}
