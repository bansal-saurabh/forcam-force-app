import 'package:swagger/api.dart';
import 'package:test/test.dart';


/// tests for ToolApi
void main() {
  var instance = new ToolApi();

  group('tests for ToolApi', () {
    // Create a tool.
    //
    //Future<Tool> createTool({ CreateToolProperties body }) async
    test('test createTool', () async {
      // TODO
    });

    // Create a new edge of a tool.
    //
    //Future<ToolEdge> createToolEdge(CreateToolEdgeProperties body, String toolId) async
    test('test createToolEdge', () async {
      // TODO
    });

    // Create a tool assembly order.
    //
    //Future<ToolAssemblyOrder> createToolOrder({ CreateToolOrderProperties body }) async
    test('test createToolOrder', () async {
      // TODO
    });

    // Delete a tool.
    //
    //Future deleteTool(String toolId) async
    test('test deleteTool', () async {
      // TODO
    });

    // Retrieve the characteristics of a tool.
    //
    //Future<ToolCharacteristicCollection> getCharacteristics(String toolId, { int limit, int offset }) async
    test('test getCharacteristics', () async {
      // TODO
    });

    // Retrieve the characteristics of an edge.
    //
    //Future<ToolCharacteristicCollection> getEdgeCharacteristics(String edgeId, String toolId, { int limit, int offset }) async
    test('test getEdgeCharacteristics', () async {
      // TODO
    });

    // Retrieve a tool.
    //
    // Information is returned for domain-specific identification of the tool and about its current state. There are up to three identifiers, the first of which is usually the tool number. Other identifiers can be tool type and tool class. Additional characteristics of the tool can be embedded (embed=characteristics).
    //
    //Future<Tool> getTool(String toolId, { List<String> embed }) async
    test('test getTool', () async {
      // TODO
    });

    // Retrieve an individual edge of a tool.
    //
    //Future<ToolEdge> getToolEdge(String edgeId, String toolId) async
    test('test getToolEdge', () async {
      // TODO
    });

    // Retrieve the edges of a tool.
    //
    // Machine tools for metal-cutting production have one or more cutting edges. A list of these edges is returned.
    //
    //Future<ToolCutEdgeCollectionWSModel> getToolEdges(String toolId, { String identifier, int limit, int offset }) async
    test('test getToolEdges', () async {
      // TODO
    });

    // Retrieve an individual tool assembly order.
    //
    //Future<ToolAssemblyOrder> getToolOrder(String toolAssemblyOrderId, { List<String> embed }) async
    test('test getToolOrder', () async {
      // TODO
    });

    // Retrieve all tool assembly orders.
    //
    //Future<ToolOrderCollectionWSModel> getToolOrders({ List<String> embed, int limit, int offset, String operationId }) async
    test('test getToolOrders', () async {
      // TODO
    });

    // Retrieve the collection of tools.
    //
    //Future<ToolCollection> getTools({ List<String> embed, String identifier, String identifier2, String identifier3, int limit, int offset }) async
    test('test getTools', () async {
      // TODO
    });

    // Update the characteristics of a tool.
    //
    //Future<ToolCharacteristicCollection> updateCharacteristics(String toolId, { List<CharacteristicGeneralDefinition> body }) async
    test('test updateCharacteristics', () async {
      // TODO
    });

    // Update the characteristics of an edge.
    //
    //Future<ToolCharacteristicCollection> updateEdgeCharacteristics(String edgeId, String toolId, { List<CharacteristicGeneralDefinition> body }) async
    test('test updateEdgeCharacteristics', () async {
      // TODO
    });

    // Change the state of a tool assembly order.
    //
    //Future<ToolAssemblyOrder> updateToolAssemblyOrderState(String toolAssemblyOrderId, String toolAssemblyOrderStateId) async
    test('test updateToolAssemblyOrderState', () async {
      // TODO
    });

    // Update an individual edge of a tool.
    //
    //Future<ToolEdge> updateToolEdge(ToolEdgeProperties body, String edgeId, String toolId) async
    test('test updateToolEdge', () async {
      // TODO
    });

    // Change the state of a tool.
    //
    //Future<Tool> updateToolState(String toolId, String toolStateId) async
    test('test updateToolState', () async {
      // TODO
    });

  });
}
