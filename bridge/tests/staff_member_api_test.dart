import 'package:swagger/api.dart';
import 'package:test/test.dart';


/// tests for StaffMemberApi
void main() {
  var instance = new StaffMemberApi();

  group('tests for StaffMemberApi', () {
    // Retrieve a staff member.
    //
    // Information is returned for domain-specific identification of the staff member. Information on the currently executed operations can be embedded (embed=currentlyExecutedOperations). In addition, some of the sub-resources of the staff member can be embedded.
    //
    //Future<StaffMember> getStaffMember(String staffMemberId, { String prefer, List<String> embed }) async
    test('test getStaffMember', () async {
      // TODO
    });

    // Retrieve a collection of workplaces on which the staff member is basically allowed to work.
    //
    //Future<WorkplaceCollection> getStaffMemberAssignedWorkplaces(String staffMemberId, { int limit, int offset }) async
    test('test getStaffMemberAssignedWorkplaces', () async {
      // TODO
    });

    // Retrieve the recorded login periods of a staff member.
    //
    // A filtered list of login periods is returned. It provides information about when the staff member was logged in at which workplaces, at which operations and at which operation phase.
    //
    //Future<StaffMemberRecordedActivitiesCollection> getStaffMemberRecordedLoginPeriods(String staffMemberId, { DateTime endDate, int limit, String paginationDirection, DateTime paginationTimestamp, DateTime startDate, String workplaceId, String workplaceNumber }) async
    test('test getStaffMemberRecordedLoginPeriods', () async {
      // TODO
    });

    // Retrieve the collection of staff members.
    //
    //Future<StaffMemberCollection> getStaffMembers({ String prefer, List<String> embed, String erpContextId, String firstName, String identificationNumber, String lastName, int limit, int offset, String staffNumber }) async
    test('test getStaffMembers', () async {
      // TODO
    });

  });
}
