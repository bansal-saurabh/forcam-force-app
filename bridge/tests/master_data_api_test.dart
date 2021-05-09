import 'package:swagger/api.dart';
import 'package:test/test.dart';


/// tests for MasterDataApi
void main() {
  var instance = new MasterDataApi();

  group('tests for MasterDataApi', () {
    // Retrieve a customer specific setting.
    //
    //Future<CustomerSpecificSetting> getCustomerSpecificSetting(String customerSpecificSettingId) async
    test('test getCustomerSpecificSetting', () async {
      // TODO
    });

    // Retrieve the collection of customer specific settings.
    //
    //Future<CustomerSpecificSettingCollection> getCustomerSpecificSettings({ int limit, int offset, String topic }) async
    test('test getCustomerSpecificSettings', () async {
      // TODO
    });

    // Retrieve a document state.
    //
    // The state of a document can be NEW, WAITING_FOR_RELEASE, RELEASED or LOCKED. If the document is an numerical control (NC) program, it can also be in the CHECKED_OUT_FOR_PROCESSING state if it is currently being executed on a machine.
    //
    //Future<DocumentState> getDocumentState(String documentStateId, { List<String> embed }) async
    test('test getDocumentState', () async {
      // TODO
    });

    // Retrieve the collection of document states.
    //
    //Future<DocumentStateCollection> getDocumentStates({ List<String> embed, int limit, int offset }) async
    test('test getDocumentStates', () async {
      // TODO
    });

    // Get machine state
    //
    // Get a machine state
    //
    //Future<StatusDefinition> getMachineState(String machineStateId, { List<String> embed }) async
    test('test getMachineState', () async {
      // TODO
    });

    // Retrieve machine state detail
    //
    // Retrieve a certain machine state detail.
    //
    //Future<MachineStateDetail> getMachineStateDetail(String machineStateDetailId, { List<String> embed }) async
    test('test getMachineStateDetail', () async {
      // TODO
    });

    // Retrieve machine state details
    //
    // Request a collection of machine state details.
    //
    //Future<MachineStateDetailCollection> getMachineStateDetails({ String customerCode, List<String> embed, int limit, int offset }) async
    test('test getMachineStateDetails', () async {
      // TODO
    });

    // Get all machine states
    //
    // Get machine states
    //
    //Future<StatusDefinitionCollection> getMachineStates({ int limit, int offset }) async
    test('test getMachineStates', () async {
      // TODO
    });

    // Retrieve the entry point of the master data.
    //
    //Future<MasterData> getMasterData() async
    test('test getMasterData', () async {
      // TODO
    });

    // Retrieve an operating state.
    //
    // Operating states can be arbitrarily defined in any production site and assigned to one or more of the following time bases: SCHEDULED_OPERATING_TIME, PRODUCTION, SETUP, MALFUNCTION and MAINTENANCE. The assignment of the operating states to these time bases determines the calculation of various key performance indicators.
    //
    //Future<OperatingState> getOperatingState(String operatingStateId, { List<String> embed }) async
    test('test getOperatingState', () async {
      // TODO
    });

    // Retrieve an operating state class.
    //
    // Operating state classes represent an arbitrary classification of operating states.
    //
    //Future<StatusDefinition> getOperatingStateClass(String operatingStateClassId, { List<String> embed }) async
    test('test getOperatingStateClass', () async {
      // TODO
    });

    // Retrieve the collection of operating state classes.
    //
    //Future<StatusDefinitionCollection> getOperatingStateClasses({ List<String> embed, int limit, int offset }) async
    test('test getOperatingStateClasses', () async {
      // TODO
    });

    // Retrieve the collection of operating states.
    //
    //Future<OperatingStateCollection> getOperatingStates({ List<String> embed, int limit, int offset, String operatingStateClassId, String timeBase, String workplaceStateId }) async
    test('test getOperatingStates', () async {
      // TODO
    });

    // Retrieve an operation phase.
    //
    // An operation usually runs through the phases RELEASED, DISPATCHED, SETUP, PROCESSING, COMPLETED and CLOSED. In the meantime, an operation can also be INTERRUPTED once or several times. In individual cases, further phases may be defined for specific machines.
    //
    //Future<StatusDefinition> getOperationPhase(String operationPhaseId, { List<String> embed }) async
    test('test getOperationPhase', () async {
      // TODO
    });

    // Retrieve the collection of operation phases.
    //
    //Future<StatusDefinitionCollection> getOperationPhases({ List<String> embed, int limit, int offset }) async
    test('test getOperationPhases', () async {
      // TODO
    });

    // Get machine state
    //
    // Get a operation production state
    //
    //Future<StatusDefinition> getOperationProductionState(String operationProductionStateId, { List<String> embed }) async
    test('test getOperationProductionState', () async {
      // TODO
    });

    // Retrieve operation production state detail
    //
    // Retrieve a certain operation production state detail.
    //
    //Future<OperationProductionStateDetail> getOperationProductionStateDetail(String operationProductionStateDetailId, { List<String> embed }) async
    test('test getOperationProductionStateDetail', () async {
      // TODO
    });

    // Retrieve operation production state details
    //
    // Request a collection of operation production state details.
    //
    //Future<OperationProductionStateDetailCollection> getOperationProductionStateDetails({ String customerCode, List<String> embed, int limit, int offset }) async
    test('test getOperationProductionStateDetails', () async {
      // TODO
    });

    // Get all operation production states
    //
    // Get operation production states
    //
    //Future<StatusDefinitionCollection> getOperationProductionStates({ int limit, int offset }) async
    test('test getOperationProductionStates', () async {
      // TODO
    });

    // Retrieve a quality detail.
    //
    // The quality details are used to describe the quality types YIELD, SCRAP and REWORK more precisely or to justify the assignment to one of these quality types.
    //
    //Future<QualityDetail> getQualityDetail(String qualityDetailId, { List<String> embed }) async
    test('test getQualityDetail', () async {
      // TODO
    });

    // Retrieve the collection of quality details.
    //
    //Future<QualityDetailCollection> getQualityDetails({ String code, List<String> embed, int limit, int offset, String qualityTypeId }) async
    test('test getQualityDetails', () async {
      // TODO
    });

    // Retrieve a quality type.
    //
    // The quality type classifies the output quantity of a workplace into YIELD, SCRAP or REWORK. Among other things, this qualification is used to determine the quality rate.
    //
    //Future<QualityType> getQualityType(String qualityTypeId, { List<String> embed }) async
    test('test getQualityType', () async {
      // TODO
    });

    // Retrieve the collection of quality types.
    //
    //Future<QualityTypes> getQualityTypes({ List<String> embed, int limit, int offset }) async
    test('test getQualityTypes', () async {
      // TODO
    });

    // Retrieve a shift state.
    //
    //Future<StatusDefinition> getShiftState(String shiftStateId, { List<String> embed }) async
    test('test getShiftState', () async {
      // TODO
    });

    // Retrieve the collection of shift states.
    //
    //Future<StatusDefinitionCollection> getShiftStates({ List<String> embed, int limit, int offset }) async
    test('test getShiftStates', () async {
      // TODO
    });

    // Retrieve a shift type.
    //
    // There are usually different types of shifts, such as early shift, late shift, and night shift in a three-shift operation.
    //
    //Future<ShiftType> getShiftType(String shiftTypeId, { List<String> embed }) async
    test('test getShiftType', () async {
      // TODO
    });

    // Retrieve the collection of shift types.
    //
    //Future<ShiftTypeCollection> getShiftTypes({ List<String> embed, int limit, int offset }) async
    test('test getShiftTypes', () async {
      // TODO
    });

    // Retrieve a ticket state.
    //
    // The ticket activity state.
    //
    //Future<TicketActivityState> getTicketActivityState(String ticketActivityStateId) async
    test('test getTicketActivityState', () async {
      // TODO
    });

    // Retrieve the collection of ticket states.
    //
    //Future<TicketActivityStateCollectionWSModel> getTicketActivityStates({ int limit, int offset }) async
    test('test getTicketActivityStates', () async {
      // TODO
    });

    // Retrieve a ticket class.
    //
    // The ticket class.
    //
    //Future<TicketClass> getTicketClass(String ticketClassId, { List<String> embed }) async
    test('test getTicketClass', () async {
      // TODO
    });

    // Retrieve the collection of ticket classes.
    //
    //Future<TicketClassCollectionWSModel> getTicketClasses({ List<String> embed, int limit, int offset }) async
    test('test getTicketClasses', () async {
      // TODO
    });

    // Retrieve a ticket state.
    //
    // The ticket state.
    //
    //Future<TicketState> getTicketState(String ticketStateId, { List<String> embed }) async
    test('test getTicketState', () async {
      // TODO
    });

    // Retrieve the collection of ticket states.
    //
    //Future<TicketStateCollectionWSModel> getTicketStates({ List<String> embed, int limit, int offset }) async
    test('test getTicketStates', () async {
      // TODO
    });

    // Retrieve a tool assembly order state.
    //
    // The state of a tool assembly order can be INITIATED, ASSEMBLED, PRESET, RELEASED or COMPLETED.
    //
    //Future<StatusDefinition> getToolAssemblyOrderState(String toolAssemblyOrderStateId, { List<String> embed }) async
    test('test getToolAssemblyOrderState', () async {
      // TODO
    });

    // Retrieve the collection of tool assembly order states.
    //
    //Future<StatusDefinitionCollection> getToolAssemblyOrderStates({ List<String> embed, int limit, int offset }) async
    test('test getToolAssemblyOrderStates', () async {
      // TODO
    });

    // Retrieve a workplace state.
    //
    // The workplace state indicates whether a workplace is either in PRODUCTION or in DOWNTIME. The workplace state can thus be regarded as a dual classification of the much more detailed operating state of a workplace.
    //
    //Future<StatusDefinition> getWorkplaceState(String workplaceStateId, { List<String> embed }) async
    test('test getWorkplaceState', () async {
      // TODO
    });

    // Retrieve the collection of workplace states.
    //
    //Future<StatusDefinitionCollection> getWorkplaceStates({ List<String> embed, int limit, int offset }) async
    test('test getWorkplaceStates', () async {
      // TODO
    });

  });
}
