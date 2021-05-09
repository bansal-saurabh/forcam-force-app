import 'package:swagger/api.dart';
import 'package:test/test.dart';


/// tests for WorkplaceGroupApi
void main() {
  var instance = new WorkplaceGroupApi();

  group('tests for WorkplaceGroupApi', () {
    // Retrieve the assigned workplaces of an individual workplace group.
    //
    // Retrieve a collection of workplaces assigned to the workplace group.
    //
    //Future<WorkplaceCollection> getAssignedWorkplaces(String workplaceGroupId, { int limit, int offset }) async
    test('test getAssignedWorkplaces', () async {
      // TODO
    });

    // Retrieve a workplace group.
    //
    // Information is returned for domain-specific identification of the workplace group.
    //
    //Future<WorkplaceGroup> getWorkplaceGroup(String workplaceGroupId, { List<String> embed }) async
    test('test getWorkplaceGroup', () async {
      // TODO
    });

    // Retrieve the collection of workplace groups.
    //
    // A filtered collection of workplaces is returned. Call parameters allow filtering according to the workplace group number or the type of workplace group, which can be either a capacity group or a production line. A capacity group is the grouping of functionally identical workplaces. Because these often belong to the same cost center, they are usually mapped as a single work center in an ERP system. Production lines are functionally different workplaces whose spatial sequence enables flow production or line production. They, too, are usually mapped in an ERP system as a single work center.
    //
    //Future<WorkplaceGroupCollection> getWorkplaceGroups({ List<String> embed, String erpContextId, int limit, int offset, String type, String workplaceGroupNumber }) async
    test('test getWorkplaceGroups', () async {
      // TODO
    });

  });
}
