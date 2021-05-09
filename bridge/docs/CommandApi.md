# swagger.api.CommandApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://forcebridgehackathon.force.eco:24443/ffwebservices/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**executeCommand**](CommandApi.md#executeCommand) | **POST** /commands | Execute a command
[**executeCommands**](CommandApi.md#executeCommands) | **POST** /commands/bulk | Execute commands
[**getCommand**](CommandApi.md#getCommand) | **GET** /commands/{id} | Get a command

# **executeCommand**
> Command executeCommand(body, async_)

Execute a command

Executes a command. This documentation lists only one example based on an operation phase command. For more information please read <a href=\"/ffwebservices/docs/index.html#command-api\">FORCAM FORCE&trade; Commands API</a>

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CommandApi();
var body = new OperationPhaseCommand(); // OperationPhaseCommand | 
var async_ = true; // bool | If true the command is queued and processed asynchronous

try {
    var result = api_instance.executeCommand(body, async_);
    print(result);
} catch (e) {
    print("Exception when calling CommandApi->executeCommand: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**OperationPhaseCommand**](OperationPhaseCommand.md)|  | 
 **async_** | **bool**| If true the command is queued and processed asynchronous | [optional] [default to true]

### Return type

[**Command**](Command.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **executeCommands**
> String executeCommands(body, async_)

Execute commands

Executes commands. This documentation lists only one example based on an operation phase command. For more information please read <a href=\"/ffwebservices/docs/index.html#command-api\">FORCAM FORCE&trade; Commands API</a>

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CommandApi();
var body = new Commands(); // Commands | commands
var async_ = true; // bool | If true the commands are queued and processed asynchronous

try {
    var result = api_instance.executeCommands(body, async_);
    print(result);
} catch (e) {
    print("Exception when calling CommandApi->executeCommands: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Commands**](Commands.md)| commands | 
 **async_** | **bool**| If true the commands are queued and processed asynchronous | [optional] [default to false]

### Return type

**String**

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCommand**
> Command getCommand(id, embed)

Get a command

Provides access to the command details. Only the last 1000 commands which are stored in memory can be requested. Possible result codes of the command: <br><br> RC_GENERIC_REQ_CANCEL_SUCCEED <br> Request was successfully canceled.<br><br> RC_GENERIC_REQ_UNKNOWN_FAILURE <br> Error during processing by the consumer.<br><br> RC_GENERIC_REQ_NO_MSG_LISTENER_REGISTERED <br> No registered consumer.<br><br> RC_SIMPLE_SUCCESS <br> Processed successful.<br><br> RC_ENHANCED_SUCCESS <br> Processed successful with further details.<br><br> RC_SIMPLE_FAILURE <br> Error during processing. No further details.<br><br> RC_BOOKING_FAILURE <br> Error during booking.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CommandApi();
var id = id_example; // String | UUID of the command
var embed = []; // List<String> | embed

try {
    var result = api_instance.getCommand(id, embed);
    print(result);
} catch (e) {
    print("Exception when calling CommandApi->getCommand: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| UUID of the command | 
 **embed** | [**List&lt;String&gt;**](String.md)| embed | [optional] 

### Return type

[**Command**](Command.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

