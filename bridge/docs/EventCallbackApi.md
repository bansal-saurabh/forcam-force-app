# swagger.api.EventCallbackApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://forcebridgehackathon.force.eco:24443/ffwebservices/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCallback**](EventCallbackApi.md#createCallback) | **POST** /callbacks | Create a callback.
[**createEvent**](EventCallbackApi.md#createEvent) | **POST** /events | Notify Applications about a certain event.
[**deleteCallback**](EventCallbackApi.md#deleteCallback) | **DELETE** /callbacks/{uuid} | Delete a callback.
[**getCallback**](EventCallbackApi.md#getCallback) | **GET** /callbacks/{uuid} | Retrieve a callback.
[**getCallbacks**](EventCallbackApi.md#getCallbacks) | **GET** /callbacks | Retrieve the collection of callbacks.

# **createCallback**
> Callback createCallback(body)

Create a callback.

Creates a callback, which corresponds to the registration for a particular event. At least the event type and, for an HTTP callback, the URL to be called respectively a topic for an MQTT callback must be specified. Third party systems that have their own HTTP server can be informed about events via HTTP, whereas MQTT is much more suitable for simple applications, especially those that are executed on mobile devices. For more information please read <a href=\"/ffwebservices/docs/index.html#callback-api\">FORCAM FORCE&trade; Callback API</a>

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new EventCallbackApi();
var body = new CreateCallbackProperties(); // CreateCallbackProperties | Callback properties, as JSON format, to be stored

try {
    var result = api_instance.createCallback(body);
    print(result);
} catch (e) {
    print("Exception when calling EventCallbackApi->createCallback: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateCallbackProperties**](CreateCallbackProperties.md)| Callback properties, as JSON format, to be stored | [optional] 

### Return type

[**Callback**](Callback.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createEvent**
> createEvent(body)

Notify Applications about a certain event.

This POST method allows for informing about a specific event. Any application registered for the corresponding callback will be notified of the event.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new EventCallbackApi();
var body = new EventRequestBody(); // EventRequestBody | Event properties, as JSON format, which are to be sent

try {
    api_instance.createEvent(body);
} catch (e) {
    print("Exception when calling EventCallbackApi->createEvent: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**EventRequestBody**](EventRequestBody.md)| Event properties, as JSON format, which are to be sent | [optional] 

### Return type

void (empty response body)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCallback**
> deleteCallback(uuid)

Delete a callback.

Callbacks are calls directed to interfaces of applications and third party systems that are executed by the IoT platform in response to an event. In order to be notified of a specific event by callback, an application or third party system must first have registered for that event. A new callback is generated with each registration. In order to delete the registration, the callback must be deleted.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new EventCallbackApi();
var uuid = uuid_example; // String | UUID of a callback

try {
    api_instance.deleteCallback(uuid);
} catch (e) {
    print("Exception when calling EventCallbackApi->deleteCallback: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| UUID of a callback | 

### Return type

void (empty response body)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCallback**
> Callback getCallback(uuid)

Retrieve a callback.

Callbacks are calls directed to interfaces of applications and third party systems that are executed by the IoT platform in response to an event. In order to be notified of a specific event by callback, an application or third party system must first have registered for that event. A new callback is generated with each registration. Both HTTP and MQTT are supported for callbacks.  In the case of an HTTP callback, the URL to be called, that is, the fully qualified URI of the external Web service, is returned.  In the case of an MQTT callback, the topic for which the subscriber has registered is returned. In both cases, the name and type of the event that triggers the callback is returned.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new EventCallbackApi();
var uuid = uuid_example; // String | UUID of a callback

try {
    var result = api_instance.getCallback(uuid);
    print(result);
} catch (e) {
    print("Exception when calling EventCallbackApi->getCallback: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| UUID of a callback | 

### Return type

[**Callback**](Callback.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCallbacks**
> CallbackCollectionWSModel getCallbacks(limit, offset)

Retrieve the collection of callbacks.

A filtered collection of callbacks is returned.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new EventCallbackApi();
var limit = 56; // int | Size of the requested page
var offset = 56; // int | Offset used for pagination

try {
    var result = api_instance.getCallbacks(limit, offset);
    print(result);
} catch (e) {
    print("Exception when calling EventCallbackApi->getCallbacks: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]

### Return type

[**CallbackCollectionWSModel**](CallbackCollectionWSModel.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

