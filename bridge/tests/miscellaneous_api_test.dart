import 'package:swagger/api.dart';
import 'package:test/test.dart';


/// tests for MiscellaneousApi
void main() {
  var instance = new MiscellaneousApi();

  group('tests for MiscellaneousApi', () {
    // Retrieve an ERP context.
    //
    // By assigning a Universally Unique Identifier (UUID) to each entity in an IoT platform, all operations, production orders and workplaces can be uniquely identified in a technical manner. In contrast, a domain-oriented identification of the different entities can be very complicated. Even the order number or the combination of order number and order split is by no means unique. Not only can different production orders have the same number in two different ERP systems, but the same order number can also refer to different production orders in different contexts within an ERP system. As an additional specification for an order number or workplace number, the ERP context describes the context in an ERP system within which this is unique.
    //
    //Future<ErpContext> getErpContext(String erpContextId) async
    test('test getErpContext', () async {
      // TODO
    });

    // Retrieve the collection of ERP contexts.
    //
    //Future<ErpContextCollection> getErpContexts({ String erpSystem, String identifier1, String identifier2, String identifier3, int limit, int offset, String type }) async
    test('test getErpContexts', () async {
      // TODO
    });

    // Retrieve a literal.
    //
    // A list of translations of the literal is returned in all available languages.
    //
    //Future<Literal> getLiteral(String literalId) async
    test('test getLiteral', () async {
      // TODO
    });

    // Retrieve the collection of literals.
    //
    // The collection of literals used to describe entities of the IoT platform is returned in all available languages.
    //
    //Future<LiteralCollection> getLiterals({ String identifier1, String identifier2, String identifier3, int limit, int offset, String type }) async
    test('test getLiterals', () async {
      // TODO
    });

    // Request material details
    //
    // Request details for a certain material.
    //
    //Future<Material> getMaterial(String materialId, { List<String> embed }) async
    test('test getMaterial', () async {
      // TODO
    });

    // Request materials
    //
    // Request a collection of cached materials.
    //
    //Future<MaterialCollection> getMaterials({ List<String> embed, int limit, String number, int offset }) async
    test('test getMaterials', () async {
      // TODO
    });

  });
}
