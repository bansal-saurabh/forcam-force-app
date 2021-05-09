# swagger.api.DeviceApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://forcebridgehackathon.force.eco:24443/ffwebservices/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getDevice**](DeviceApi.md#getDevice) | **GET** /devices/{deviceId} | Retrieve an individual device.
[**getDevices**](DeviceApi.md#getDevices) | **GET** /devices | Retrieve all devices.
[**getRecordedTimeSeries**](DeviceApi.md#getRecordedTimeSeries) | **GET** /devices/{deviceId}/recordedTimeSeries | Retrieve the recorded time series of a device.

# **getDevice**
> Device getDevice(deviceId)

Retrieve an individual device.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new DeviceApi();
var deviceId = deviceId_example; // String | UUID of a device

try {
    var result = api_instance.getDevice(deviceId);
    print(result);
} catch (e) {
    print("Exception when calling DeviceApi->getDevice: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceId** | **String**| UUID of a device | 

### Return type

[**Device**](Device.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDevices**
> DeviceCollection getDevices(deviceName, limit, offset, physicalQuantity)

Retrieve all devices.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new DeviceApi();
var deviceName = deviceName_example; // String | The name of the device (e.g. S7 1212C DC), which could also be an abstract device (e.g. Welding 247)
var limit = 56; // int | Size of the requested page
var offset = 56; // int | Offset used for pagination
var physicalQuantity = physicalQuantity_example; // String | The physical quantity that is measured at a device

try {
    var result = api_instance.getDevices(deviceName, limit, offset, physicalQuantity);
    print(result);
} catch (e) {
    print("Exception when calling DeviceApi->getDevices: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceName** | **String**| The name of the device (e.g. S7 1212C DC), which could also be an abstract device (e.g. Welding 247) | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]
 **physicalQuantity** | **String**| The physical quantity that is measured at a device | [optional] 

### Return type

[**DeviceCollection**](DeviceCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecordedTimeSeries**
> DeviceRecordedTimeSeriesCollection getRecordedTimeSeries(deviceId, tag, endDate, limit, materialNumber, operationNumber, paginationDirection, paginationTimestamp, productionOrderNumber, startDate, workplaceId)

Retrieve the recorded time series of a device.

A filtered list of recorded time series is returned. Call parameters allow filtering according to a specific time period. If the device is the programmable logic controller of a machine or a virtual device that combines several programmable logic controllers of a machine, the time series represent the recorded process parameters. In this case, it is also possible to filter according to a specific operation that was executed on the machine.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new DeviceApi();
var deviceId = deviceId_example; // String | UUID of a device
var tag = 789; // int | Tag for a specific variable or process parameter
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of the considered period
var limit = 56; // int | Size of the requested page
var materialNumber = materialNumber_example; // String | Material number of a material produced. To use the filter, the device must be assigned to a workplace and an operation must have produced the material at this workplace within the considered time period
var operationNumber = operationNumber_example; // String | Operation number of an executed operation. To use the filter, the device must be assigned to a workplace and the specified operation must have been executed at this workplace within the considered time period
var paginationDirection = paginationDirection_example; // String | Direction on how to navigate through the response pages
var paginationTimestamp = 2013-10-20T19:20:30+01:00; // DateTime | Timestamp used for pagination
var productionOrderNumber = productionOrderNumber_example; // String | Production Order number of an executed production order. To use the filter, the device must be assigned to a workplace and an operation of the specified production order must have been executed at this workplace within the considered period
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of the considered period Default: Beginning of the current week
var workplaceId = workplaceId_example; // String | UUID of the workplace.

try {
    var result = api_instance.getRecordedTimeSeries(deviceId, tag, endDate, limit, materialNumber, operationNumber, paginationDirection, paginationTimestamp, productionOrderNumber, startDate, workplaceId);
    print(result);
} catch (e) {
    print("Exception when calling DeviceApi->getRecordedTimeSeries: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceId** | **String**| UUID of a device | 
 **tag** | **int**| Tag for a specific variable or process parameter | 
 **endDate** | **DateTime**| The end date of the considered period | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **materialNumber** | **String**| Material number of a material produced. To use the filter, the device must be assigned to a workplace and an operation must have produced the material at this workplace within the considered time period | [optional] 
 **operationNumber** | **String**| Operation number of an executed operation. To use the filter, the device must be assigned to a workplace and the specified operation must have been executed at this workplace within the considered time period | [optional] 
 **paginationDirection** | **String**| Direction on how to navigate through the response pages | [optional] [default to NEXT]
 **paginationTimestamp** | **DateTime**| Timestamp used for pagination | [optional] 
 **productionOrderNumber** | **String**| Production Order number of an executed production order. To use the filter, the device must be assigned to a workplace and an operation of the specified production order must have been executed at this workplace within the considered period | [optional] 
 **startDate** | **DateTime**| The start date of the considered period Default: Beginning of the current week | [optional] 
 **workplaceId** | **String**| UUID of the workplace. | [optional] 

### Return type

[**DeviceRecordedTimeSeriesCollection**](DeviceRecordedTimeSeriesCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

