import 'package:swagger/api.dart';
import 'package:test/test.dart';


/// tests for ReportingApi
void main() {
  var instance = new ReportingApi();

  group('tests for ReportingApi', () {
    // Request hitlist of operating states (material)
    //
    //Future<HitListOperatingStateMaterial> getHitListOperatingStatesMaterial(DateTime startDate, { List<String> embed, DateTime endDate, int limit, String materialId, String materialNumber, int offset }) async
    test('test getHitListOperatingStatesMaterial', () async {
      // TODO
    });

    // Request hitlist of operating states (workplace)
    //
    // At least one of the following request parameters has to be provided: `workplaceId`, `workplaceNumber`, `workplaceGroupId`, `workplaceGroupNumber`
    //
    //Future<HitListOperatingStateWorkplace> getHitListOperatingStatesWorkplace(DateTime startDate, { List<String> embed, DateTime endDate, int limit, int offset, String workplaceGroupId, String workplaceGroupNumber, String workplaceId, String workplaceNumber }) async
    test('test getHitListOperatingStatesWorkplace', () async {
      // TODO
    });

    // Request overall process equipment metrics
    //
    //Future<OverallEquipmentEfficiency> getOverallEquipmentEfficiency(DateTime startDate, { DateTime endDate, String workplaceGroupId, String workplaceGroupNumber, String workplaceId, String workplaceNumber }) async
    test('test getOverallEquipmentEfficiency', () async {
      // TODO
    });

    // Request overall process efficiency metrics
    //
    //Future<OverallProcessEfficiency> getOverallProcessEfficiency(DateTime startDate, { DateTime endDate, String materialId, String materialNumber, String orderId }) async
    test('test getOverallProcessEfficiency', () async {
      // TODO
    });

    // Request quality details (material)
    //
    //Future<QualityDetailsMaterial> getQualityDetailsMaterial(DateTime startDate, { List<String> embed, DateTime endDate, int limit, String materialId, String materialNumber, int offset }) async
    test('test getQualityDetailsMaterial', () async {
      // TODO
    });

    // Request quality details (workplace)
    //
    //Future<QualityDetailsWorkplace> getQualityDetailsWorkplace(DateTime startDate, { List<String> embed, DateTime endDate, int limit, String materialId, String materialNumber, int offset, String workplaceGroupId, String workplaceGroupNumber, String workplaceId, String workplaceNumber }) async
    test('test getQualityDetailsWorkplace', () async {
      // TODO
    });

    // Request total quantity per workplace and material
    //
    //Future<TotalQuantity> getTotalQuantity(DateTime startDate, { List<String> embed, DateTime endDate, int limit, int offset, String workplaceGroupId, String workplaceGroupNumber, String workplaceId, String workplaceNumber }) async
    test('test getTotalQuantity', () async {
      // TODO
    });

  });
}
