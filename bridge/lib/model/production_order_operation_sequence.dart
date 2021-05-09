part of swagger.api;

class ProductionOrderOperationSequence {
  
  ProductionOrderOperation operation = null;

  List<PredecessorWSModel> predecessors = [];

  List<SuccessorWSModel> successors = [];

  ProductionOrderOperationSequence();

  @override
  String toString() {
    return 'ProductionOrderOperationSequence[operation=$operation, predecessors=$predecessors, successors=$successors, ]';
  }

  ProductionOrderOperationSequence.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    operation = new ProductionOrderOperation.fromJson(json['operation']);
    predecessors = PredecessorWSModel.listFromJson(json['predecessors']);
    successors = SuccessorWSModel.listFromJson(json['successors']);
  }

  Map<String, dynamic> toJson() {
    return {
      'operation': operation,
      'predecessors': predecessors,
      'successors': successors
     };
  }

  static List<ProductionOrderOperationSequence> listFromJson(List<dynamic> json) {
    return json == null ? new List<ProductionOrderOperationSequence>() : json.map((value) => new ProductionOrderOperationSequence.fromJson(value)).toList();
  }

  static Map<String, ProductionOrderOperationSequence> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProductionOrderOperationSequence>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ProductionOrderOperationSequence.fromJson(value));
    }
    return map;
  }
}
