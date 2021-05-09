# swagger.api.MachineApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://forcebridgehackathon.force.eco:24443/ffwebservices/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCounterIncrease**](MachineApi.md#createCounterIncrease) | **POST** /machines/{machineId}/counterIncrease | Send machine count
[**createQuantitiesWithQualityDetails**](MachineApi.md#createQuantitiesWithQualityDetails) | **POST** /machines/{machineId}/quantitiesWithQualityDetails | Specify quality details
[**createStrokes**](MachineApi.md#createStrokes) | **POST** /machines/{machineId}/strokes | Send machine strokes
[**getMachine**](MachineApi.md#getMachine) | **GET** /machines/{machineId} | Request machine details
[**getMachines**](MachineApi.md#getMachines) | **GET** /machines | Request machines
[**updateMachineStatus**](MachineApi.md#updateMachineStatus) | **POST** /machines/{machineId}/{machineStateId} | Set the machine state

# **createCounterIncrease**
> createCounterIncrease(body, machineId, async_)

Send machine count

Send machine count

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MachineApi();
var body = new MachineCount(); // MachineCount | machineCount
var machineId = machineId_example; // String | UUID of the machine
var async_ = true; // bool | If true the command is queued and processed asynchronous

try {
    api_instance.createCounterIncrease(body, machineId, async_);
} catch (e) {
    print("Exception when calling MachineApi->createCounterIncrease: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MachineCount**](MachineCount.md)| machineCount | 
 **machineId** | **String**| UUID of the machine | 
 **async_** | **bool**| If true the command is queued and processed asynchronous | [optional] [default to true]

### Return type

void (empty response body)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createQuantitiesWithQualityDetails**
> createQuantitiesWithQualityDetails(body, machineId, async_)

Specify quality details

Specify quality details

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MachineApi();
var body = new MachineQuantitiesWithQualityDetails(); // MachineQuantitiesWithQualityDetails | machineQuantitiesWithQualityDetails
var machineId = machineId_example; // String | UUID of the machine
var async_ = true; // bool | If true the command is queued and processed asynchronous

try {
    api_instance.createQuantitiesWithQualityDetails(body, machineId, async_);
} catch (e) {
    print("Exception when calling MachineApi->createQuantitiesWithQualityDetails: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MachineQuantitiesWithQualityDetails**](MachineQuantitiesWithQualityDetails.md)| machineQuantitiesWithQualityDetails | 
 **machineId** | **String**| UUID of the machine | 
 **async_** | **bool**| If true the command is queued and processed asynchronous | [optional] [default to true]

### Return type

void (empty response body)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createStrokes**
> createStrokes(body, machineId, async_)

Send machine strokes

Send machine strokes

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MachineApi();
var body = new MachineStrokes(); // MachineStrokes | machineStrokes
var machineId = machineId_example; // String | UUID of the machine
var async_ = true; // bool | If true the command is queued and processed asynchronous

try {
    api_instance.createStrokes(body, machineId, async_);
} catch (e) {
    print("Exception when calling MachineApi->createStrokes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MachineStrokes**](MachineStrokes.md)| machineStrokes | 
 **machineId** | **String**| UUID of the machine | 
 **async_** | **bool**| If true the command is queued and processed asynchronous | [optional] [default to true]

### Return type

void (empty response body)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMachine**
> Machine getMachine(machineId, embed)

Request machine details

Request details for a certain machine.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MachineApi();
var machineId = machineId_example; // String | UUID of the machine
var embed = []; // List<String> | Request embedded resources. 

try {
    var result = api_instance.getMachine(machineId, embed);
    print(result);
} catch (e) {
    print("Exception when calling MachineApi->getMachine: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **machineId** | **String**| UUID of the machine | 
 **embed** | [**List&lt;String&gt;**](String.md)| Request embedded resources.  | [optional] 

### Return type

[**Machine**](Machine.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMachines**
> MachineCollection getMachines(embed, limit, machineNumber, offset, workplaceNumber)

Request machines

Request a collection of cached machines.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MachineApi();
var embed = []; // List<String> | embed
var limit = 56; // int | The limit used for pagination
var machineNumber = machineNumber_example; // String | machineNumber
var offset = 56; // int | The offset used for pagination
var workplaceNumber = workplaceNumber_example; // String | workplaceNumber

try {
    var result = api_instance.getMachines(embed, limit, machineNumber, offset, workplaceNumber);
    print(result);
} catch (e) {
    print("Exception when calling MachineApi->getMachines: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **embed** | [**List&lt;String&gt;**](String.md)| embed | [optional] 
 **limit** | **int**| The limit used for pagination | [optional] [default to 100]
 **machineNumber** | **String**| machineNumber | [optional] 
 **offset** | **int**| The offset used for pagination | [optional] [default to 0]
 **workplaceNumber** | **String**| workplaceNumber | [optional] 

### Return type

[**MachineCollection**](MachineCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMachineStatus**
> Machine updateMachineStatus(machineId, machineStateId, body, async_)

Set the machine state

Sets the machine state

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MachineApi();
var machineId = machineId_example; // String | UUID of the machine
var machineStateId = machineStateId_example; // String | UUID of the machine status
var body = new MachineStateRequestBody(); // MachineStateRequestBody | machineStatusRequestBody
var async_ = true; // bool | If true the command is queued and processed asynchronous

try {
    var result = api_instance.updateMachineStatus(machineId, machineStateId, body, async_);
    print(result);
} catch (e) {
    print("Exception when calling MachineApi->updateMachineStatus: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **machineId** | **String**| UUID of the machine | 
 **machineStateId** | **String**| UUID of the machine status | 
 **body** | [**MachineStateRequestBody**](MachineStateRequestBody.md)| machineStatusRequestBody | [optional] 
 **async_** | **bool**| If true the command is queued and processed asynchronous | [optional] [default to false]

### Return type

[**Machine**](Machine.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

