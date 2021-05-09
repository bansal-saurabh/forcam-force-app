import 'package:swagger/api.dart';
import 'package:test/test.dart';


/// tests for ProductionOrderApi
void main() {
  var instance = new ProductionOrderApi();

  group('tests for ProductionOrderApi', () {
    // Retrieve the operation sequence of an individual production order.
    //
    // Retrieve the predecessor/successor relationships that exist between the individual operations of a production order or in order networks. In addition, intermediate times (move time and wait time) are specified and, in the case of parallel processing (flow or line production), the minimum offset time that is the product of the minimum send ahead quantity and the target time per unit in msec. If a minimum offset time is specified, the successor operation can already be started during the processing phase of the predecessor, at the earliest, however, after the minimum offset time from the start of the processing phase of the predecessor.
    //
    //Future<ProductionOrderOperationSequenceCollection> getOperationSequence(String productionOrderId, { bool isDispatched, bool isPlannable, int limit, String materialNumber, int offset, String operationNumber, String operationPhaseId, String operationSplit, String workplaceNumber }) async
    test('test getOperationSequence', () async {
      // TODO
    });

    // Retrieve a production order.
    //
    // Information is returned for domain-specific identification of the production order.
    //
    //Future<ProductionOrder> getProductionOrder(String productionOrderId, { List<String> embed }) async
    test('test getProductionOrder', () async {
      // TODO
    });

    // Retrieve the scheduled dates of a production order and its operations.
    //
    //Future<ProductionOrderSchedulingResultCollection> getProductionOrderSchedulingResults(String productionOrderId, { int limit, int offset }) async
    test('test getProductionOrderSchedulingResults', () async {
      // TODO
    });

    // Retrieve properties of the production order.
    //
    // Retrieve properties of the production order, such as the quantities to be produced, the basic start and end date of a production order and its priority.
    //
    //Future<ProductionOrderSpecification> getProductionOrderSpecification(String productionOrderId, { List<String> embed }) async
    test('test getProductionOrderSpecification', () async {
      // TODO
    });

    // Retrieve the collection of production orders.
    //
    // A filtered collection of production orders is returned. Call parameters allow filtering, for example, according to the material produced or according to production orders that are executed within a certain period of time.
    //
    //Future<ProductionOrderCollection> getProductionOrders({ List<String> embed, DateTime endDate, String erpContextId, int limit, String materialNumber, String paginationDirection, String paginationIdentifier, DateTime paginationTimestamp, String productionOrderNumber, String productionOrderSplit, DateTime startDate }) async
    test('test getProductionOrders', () async {
      // TODO
    });

    // Retrieve the collection of production orders.
    //
    // A filtered collection of production orders is returned. Call parameters allow filtering, for example, according to the material produced or according to production orders that are executed within a certain period of time. In contrast to the GET method, the POST method allows the transfer of filter combinations of any length.
    //
    //Future<ProductionOrderCollection> searchProductionOrders({ SearchProductionOrders body, List<String> embed, int limit, String paginationDirection, String paginationIdentifier, DateTime paginationTimestamp }) async
    test('test searchProductionOrders', () async {
      // TODO
    });

    // Update the scheduled dates of a production order and its operations.
    //
    //Future<ProductionOrderSchedulingResultCollection> updateProductionOrderSchedulingResults(ProductionOrderSchedulingResultPropertiesWSModel body, String productionOrderId) async
    test('test updateProductionOrderSchedulingResults', () async {
      // TODO
    });

  });
}
