import 'package:swagger/api.dart';
import 'package:test/test.dart';


/// tests for CommandApi
void main() {
  var instance = new CommandApi();

  group('tests for CommandApi', () {
    // Execute a command
    //
    // Executes a command. This documentation lists only one example based on an operation phase command. For more information please read <a href=\"/ffwebservices/docs/index.html#command-api\">FORCAM FORCE&trade; Commands API</a>
    //
    //Future<Command> executeCommand(OperationPhaseCommand body, { bool async_ }) async
    test('test executeCommand', () async {
      // TODO
    });

    // Execute commands
    //
    // Executes commands. This documentation lists only one example based on an operation phase command. For more information please read <a href=\"/ffwebservices/docs/index.html#command-api\">FORCAM FORCE&trade; Commands API</a>
    //
    //Future<String> executeCommands(Commands body, { bool async_ }) async
    test('test executeCommands', () async {
      // TODO
    });

    // Get a command
    //
    // Provides access to the command details. Only the last 1000 commands which are stored in memory can be requested. Possible result codes of the command: <br><br> RC_GENERIC_REQ_CANCEL_SUCCEED <br> Request was successfully canceled.<br><br> RC_GENERIC_REQ_UNKNOWN_FAILURE <br> Error during processing by the consumer.<br><br> RC_GENERIC_REQ_NO_MSG_LISTENER_REGISTERED <br> No registered consumer.<br><br> RC_SIMPLE_SUCCESS <br> Processed successful.<br><br> RC_ENHANCED_SUCCESS <br> Processed successful with further details.<br><br> RC_SIMPLE_FAILURE <br> Error during processing. No further details.<br><br> RC_BOOKING_FAILURE <br> Error during booking.
    //
    //Future<Command> getCommand(String id, { List<String> embed }) async
    test('test getCommand', () async {
      // TODO
    });

  });
}
