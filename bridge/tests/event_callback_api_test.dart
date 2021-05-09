import 'package:swagger/api.dart';
import 'package:test/test.dart';


/// tests for EventCallbackApi
void main() {
  var instance = new EventCallbackApi();

  group('tests for EventCallbackApi', () {
    // Create a callback.
    //
    // Creates a callback, which corresponds to the registration for a particular event. At least the event type and, for an HTTP callback, the URL to be called respectively a topic for an MQTT callback must be specified. Third party systems that have their own HTTP server can be informed about events via HTTP, whereas MQTT is much more suitable for simple applications, especially those that are executed on mobile devices. For more information please read <a href=\"/ffwebservices/docs/index.html#callback-api\">FORCAM FORCE&trade; Callback API</a>
    //
    //Future<Callback> createCallback({ CreateCallbackProperties body }) async
    test('test createCallback', () async {
      // TODO
    });

    // Notify Applications about a certain event.
    //
    // This POST method allows for informing about a specific event. Any application registered for the corresponding callback will be notified of the event.
    //
    //Future createEvent({ EventRequestBody body }) async
    test('test createEvent', () async {
      // TODO
    });

    // Delete a callback.
    //
    // Callbacks are calls directed to interfaces of applications and third party systems that are executed by the IoT platform in response to an event. In order to be notified of a specific event by callback, an application or third party system must first have registered for that event. A new callback is generated with each registration. In order to delete the registration, the callback must be deleted.
    //
    //Future deleteCallback(String uuid) async
    test('test deleteCallback', () async {
      // TODO
    });

    // Retrieve a callback.
    //
    // Callbacks are calls directed to interfaces of applications and third party systems that are executed by the IoT platform in response to an event. In order to be notified of a specific event by callback, an application or third party system must first have registered for that event. A new callback is generated with each registration. Both HTTP and MQTT are supported for callbacks.  In the case of an HTTP callback, the URL to be called, that is, the fully qualified URI of the external Web service, is returned.  In the case of an MQTT callback, the topic for which the subscriber has registered is returned. In both cases, the name and type of the event that triggers the callback is returned.
    //
    //Future<Callback> getCallback(String uuid) async
    test('test getCallback', () async {
      // TODO
    });

    // Retrieve the collection of callbacks.
    //
    // A filtered collection of callbacks is returned.
    //
    //Future<CallbackCollectionWSModel> getCallbacks({ int limit, int offset }) async
    test('test getCallbacks', () async {
      // TODO
    });

  });
}
