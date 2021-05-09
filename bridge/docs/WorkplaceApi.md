# swagger.api.WorkplaceApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://forcebridgehackathon.force.eco:24443/ffwebservices/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getRecordedMachineStates**](WorkplaceApi.md#getRecordedMachineStates) | **GET** /workplaces/{workplaceId}/machine/recordedMachineStateDetails | Request the operating states of a workplace
[**getScheduledMaintenanceTimes**](WorkplaceApi.md#getScheduledMaintenanceTimes) | **GET** /workplaces/{workplaceId}/scheduledMaintenanceTimes | Retrieve the scheduled maintenance times of a workplace.
[**getScheduledOperatingTimes**](WorkplaceApi.md#getScheduledOperatingTimes) | **GET** /workplaces/{workplaceId}/scheduledOperatingTimes | Retrieve the originally scheduled operating times of a workplace.
[**getShift**](WorkplaceApi.md#getShift) | **GET** /workplaces/shifts/{shiftId} | Retrieve a workplace shift.
[**getShifts**](WorkplaceApi.md#getShifts) | **GET** /workplaces/shifts | Retrieve the collection of workplace shifts.
[**getWorkplace**](WorkplaceApi.md#getWorkplace) | **GET** /workplaces/{workplaceId} | Retrieve a workplace.
[**getWorkplaceDevices**](WorkplaceApi.md#getWorkplaceDevices) | **GET** /workplaces/{workplaceId}/devices | Retrieve the devices that belong to a workplace.
[**getWorkplaceMachine**](WorkplaceApi.md#getWorkplaceMachine) | **GET** /workplaces/{workplaceId}/machine | Get machine of workplace state
[**getWorkplaceOperatingStateSummary**](WorkplaceApi.md#getWorkplaceOperatingStateSummary) | **GET** /workplaces/{workplaceId}/operatingStateSummary | Retrieve the operating state summary of a workplace.
[**getWorkplaceQuantitySummary**](WorkplaceApi.md#getWorkplaceQuantitySummary) | **GET** /workplaces/{workplaceId}/quantitySummary | Retrieve the quantity summary of a workplace.
[**getWorkplaceRecordedOperatingStates**](WorkplaceApi.md#getWorkplaceRecordedOperatingStates) | **GET** /workplaces/{workplaceId}/recordedOperatingStates | Retrieve the recorded operating states of a workplace.
[**getWorkplaceRecordedOperationPhases**](WorkplaceApi.md#getWorkplaceRecordedOperationPhases) | **GET** /workplaces/{workplaceId}/recordedOperationPhases | Retrieve the recorded operation phases of a workplace and their durations.
[**getWorkplaceRecordedOutputQuantities**](WorkplaceApi.md#getWorkplaceRecordedOutputQuantities) | **GET** /workplaces/{workplaceId}/recordedOutputQuantities | Retrieve the recorded output quantities of a workplace.
[**getWorkplaces**](WorkplaceApi.md#getWorkplaces) | **GET** /workplaces | Retrieve the collection of workplaces.
[**updateRecordedMachineState**](WorkplaceApi.md#updateRecordedMachineState) | **POST** /workplaces/{workplaceId}/machine/recordedMachineStateDetails/update | Request a correction of a state
[**updateRecordedOperatingState**](WorkplaceApi.md#updateRecordedOperatingState) | **POST** /workplaces/{workplaceId}/recordedOperatingStates/update | Specify operating state
[**updateWorkplaceState**](WorkplaceApi.md#updateWorkplaceState) | **POST** /workplaces/{workplaceId}/machine/{machineStateId} | Update the machine state

# **getRecordedMachineStates**
> RecordedMachineStateDetailCollection getRecordedMachineStates(workplaceId, embed, endDate, limit, offset, startDate)

Request the operating states of a workplace

Request the operating states of a workplace

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new WorkplaceApi();
var workplaceId = workplaceId_example; // String | UUID of a workplace
var embed = []; // List<String> | Names of embeddable resources to be embedded
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | Filters out operating states with a later start timestamp. Default: now
var limit = 56; // int | Size of the requested page
var offset = 56; // int | Offset used for pagination
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | Filters out operating states with an earlier start timestamp. Default: 10 days before

try {
    var result = api_instance.getRecordedMachineStates(workplaceId, embed, endDate, limit, offset, startDate);
    print(result);
} catch (e) {
    print("Exception when calling WorkplaceApi->getRecordedMachineStates: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workplaceId** | **String**| UUID of a workplace | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 
 **endDate** | **DateTime**| Filters out operating states with a later start timestamp. Default: now | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]
 **startDate** | **DateTime**| Filters out operating states with an earlier start timestamp. Default: 10 days before | [optional] 

### Return type

[**RecordedMachineStateDetailCollection**](RecordedMachineStateDetailCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getScheduledMaintenanceTimes**
> ScheduledMaintenanceTimes getScheduledMaintenanceTimes(workplaceId, endDate, limit, paginationDirection, paginationTimestamp, startDate)

Retrieve the scheduled maintenance times of a workplace.

A filtered list of scheduled maintenance times is returned. Call parameters allow filtering according to a specific time period.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new WorkplaceApi();
var workplaceId = workplaceId_example; // String | UUID of a workplace
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of the considered period
var limit = 56; // int | Size of the requested page
var paginationDirection = paginationDirection_example; // String | Direction on how to navigate through the response pages NEXT
var paginationTimestamp = 2013-10-20T19:20:30+01:00; // DateTime | Timestamp used for pagination
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of the considered period Default: Beginning of the current week

try {
    var result = api_instance.getScheduledMaintenanceTimes(workplaceId, endDate, limit, paginationDirection, paginationTimestamp, startDate);
    print(result);
} catch (e) {
    print("Exception when calling WorkplaceApi->getScheduledMaintenanceTimes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workplaceId** | **String**| UUID of a workplace | 
 **endDate** | **DateTime**| The end date of the considered period | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **paginationDirection** | **String**| Direction on how to navigate through the response pages NEXT | [optional] 
 **paginationTimestamp** | **DateTime**| Timestamp used for pagination | [optional] 
 **startDate** | **DateTime**| The start date of the considered period Default: Beginning of the current week | [optional] 

### Return type

[**ScheduledMaintenanceTimes**](ScheduledMaintenanceTimes.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getScheduledOperatingTimes**
> ScheduledOperatingTimes getScheduledOperatingTimes(workplaceId, endDate, limit, paginationDirection, paginationTimestamp, startDate)

Retrieve the originally scheduled operating times of a workplace.

A filtered list of scheduled operating times is returned. These are the operating times scheduled in advance, which include work shifts minus the planned shift breaks. Scheduled maintenance times also do not count towards the scheduled operating times. Call parameters allow filtering according to a specific time period.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new WorkplaceApi();
var workplaceId = workplaceId_example; // String | UUID of a workplace
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of the considered period Default: End of the next week
var limit = 56; // int | Size of the requested page
var paginationDirection = paginationDirection_example; // String | Direction on how to navigate through the response pages
var paginationTimestamp = 2013-10-20T19:20:30+01:00; // DateTime | Timestamp used for pagination
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of the considered period Default: Beginning of the current week

try {
    var result = api_instance.getScheduledOperatingTimes(workplaceId, endDate, limit, paginationDirection, paginationTimestamp, startDate);
    print(result);
} catch (e) {
    print("Exception when calling WorkplaceApi->getScheduledOperatingTimes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workplaceId** | **String**| UUID of a workplace | 
 **endDate** | **DateTime**| The end date of the considered period Default: End of the next week | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **paginationDirection** | **String**| Direction on how to navigate through the response pages | [optional] [default to NEXT]
 **paginationTimestamp** | **DateTime**| Timestamp used for pagination | [optional] 
 **startDate** | **DateTime**| The start date of the considered period Default: Beginning of the current week | [optional] 

### Return type

[**ScheduledOperatingTimes**](ScheduledOperatingTimes.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getShift**
> WorkplaceShift getShift(shiftId, embed)

Retrieve a workplace shift.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new WorkplaceApi();
var shiftId = shiftId_example; // String | UUID of a shift
var embed = []; // List<String> | Names of embeddable resources to be embedded

try {
    var result = api_instance.getShift(shiftId, embed);
    print(result);
} catch (e) {
    print("Exception when calling WorkplaceApi->getShift: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shiftId** | **String**| UUID of a shift | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 

### Return type

[**WorkplaceShift**](WorkplaceShift.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getShifts**
> WorkplaceShiftCollection getShifts(associatedDay, embed, endDate, erpContextId, isWorkingShift, limit, paginationDirection, paginationIdentifier, paginationTimestamp, shiftTypeId, startDate, workplaceGroupNumber, workplaceId, workplaceNumber)

Retrieve the collection of workplace shifts.

A filtered collection of workplace shifts is returned. Call parameters allow filtering, for example, according to a specific workplace and according to shifts within a certain period of time.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new WorkplaceApi();
var associatedDay = 2013-10-20; // DateTime | Associated day of the workplace shift
var embed = []; // List<String> | Names of embeddable resources to be embedded
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of the considered period Default: End of the next week
var erpContextId = erpContextId_example; // String | Universally unique identifier of the ERP context in which the workplace number is a unique identifier for a workplace or a workplace group. In SAP ERP, for example, this context is defined by the client, the company code, and the plant
var isWorkingShift = true; // bool | Boolean to indicate if a shift is a working shift
var limit = 56; // int | Size of the requested page
var paginationDirection = paginationDirection_example; // String | Direction on how to navigate through the response pages
var paginationIdentifier = paginationIdentifier_example; // String | A response is split into pages (pagination) if the number of requested elements exceeds the defined limit. In cases where the timestamp is not unique but used more than once, a unique identifier is associated to each page of a paginated response. These can then be used to retrieve a specific page.
var paginationTimestamp = 2013-10-20T19:20:30+01:00; // DateTime | Timestamp used for pagination
var shiftTypeId = shiftTypeId_example; // String | ID of a shift type
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of the considered period Default: Beginning of the current week
var workplaceGroupNumber = workplaceGroupNumber_example; // String | Number of workplace group
var workplaceId = workplaceId_example; // String | UUID of a workplace
var workplaceNumber = workplaceNumber_example; // String | Number of the workplace

try {
    var result = api_instance.getShifts(associatedDay, embed, endDate, erpContextId, isWorkingShift, limit, paginationDirection, paginationIdentifier, paginationTimestamp, shiftTypeId, startDate, workplaceGroupNumber, workplaceId, workplaceNumber);
    print(result);
} catch (e) {
    print("Exception when calling WorkplaceApi->getShifts: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **associatedDay** | **DateTime**| Associated day of the workplace shift | [optional] 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 
 **endDate** | **DateTime**| The end date of the considered period Default: End of the next week | [optional] 
 **erpContextId** | **String**| Universally unique identifier of the ERP context in which the workplace number is a unique identifier for a workplace or a workplace group. In SAP ERP, for example, this context is defined by the client, the company code, and the plant | [optional] 
 **isWorkingShift** | **bool**| Boolean to indicate if a shift is a working shift | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **paginationDirection** | **String**| Direction on how to navigate through the response pages | [optional] [default to NEXT]
 **paginationIdentifier** | **String**| A response is split into pages (pagination) if the number of requested elements exceeds the defined limit. In cases where the timestamp is not unique but used more than once, a unique identifier is associated to each page of a paginated response. These can then be used to retrieve a specific page. | [optional] 
 **paginationTimestamp** | **DateTime**| Timestamp used for pagination | [optional] 
 **shiftTypeId** | **String**| ID of a shift type | [optional] 
 **startDate** | **DateTime**| The start date of the considered period Default: Beginning of the current week | [optional] 
 **workplaceGroupNumber** | **String**| Number of workplace group | [optional] 
 **workplaceId** | **String**| UUID of a workplace | [optional] 
 **workplaceNumber** | **String**| Number of the workplace | [optional] 

### Return type

[**WorkplaceShiftCollection**](WorkplaceShiftCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWorkplace**
> Workplace getWorkplace(workplaceId, embed)

Retrieve a workplace.

Information is returned for domain-specific identification of the workplace and about its current state. Information on the operations that are currently being executed at the workplace can be embedded (embed=currentOperations). In addition, most sub-resources of the workplace can be embedded.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new WorkplaceApi();
var workplaceId = workplaceId_example; // String | UUID of a workplace
var embed = []; // List<String> | Names of embeddable resources to be embedded

try {
    var result = api_instance.getWorkplace(workplaceId, embed);
    print(result);
} catch (e) {
    print("Exception when calling WorkplaceApi->getWorkplace: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workplaceId** | **String**| UUID of a workplace | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 

### Return type

[**Workplace**](Workplace.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWorkplaceDevices**
> DeviceCollection getWorkplaceDevices(workplaceId, limit, offset)

Retrieve the devices that belong to a workplace.

These can be embedded systems or individual programmable logic controllers of a machine or several controllers, which are combined to a virtual device. The devices record time series of process parameters and other sensory measured values. The recorded time series are used, among other things, for predictive maintenance. If applicable, sensory measurement time series may also be evaluated in the context of a predictive quality assurance system.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new WorkplaceApi();
var workplaceId = workplaceId_example; // String | UUID of a workplace
var limit = 56; // int | Size of the requested page
var offset = 56; // int | Offset used for pagination

try {
    var result = api_instance.getWorkplaceDevices(workplaceId, limit, offset);
    print(result);
} catch (e) {
    print("Exception when calling WorkplaceApi->getWorkplaceDevices: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workplaceId** | **String**| UUID of a workplace | 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]

### Return type

[**DeviceCollection**](DeviceCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWorkplaceMachine**
> Machine getWorkplaceMachine(workplaceId, embed)

Get machine of workplace state

Retrieve the associated machine

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new WorkplaceApi();
var workplaceId = workplaceId_example; // String | UUID of a workplace
var embed = []; // List<String> | Names of embeddable resources to be embedded

try {
    var result = api_instance.getWorkplaceMachine(workplaceId, embed);
    print(result);
} catch (e) {
    print("Exception when calling WorkplaceApi->getWorkplaceMachine: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workplaceId** | **String**| UUID of a workplace | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 

### Return type

[**Machine**](Machine.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWorkplaceOperatingStateSummary**
> WorkplaceRecordedOperatingStateSummaryCollection getWorkplaceOperatingStateSummary(workplaceId, endDate, limit, offset, operatingStateClassId, shiftId, startDate, timeBase, workplaceStateId)

Retrieve the operating state summary of a workplace.

The total duration and frequency of the operating states that have occurred are returned. Furthermore scheduled operating time, occupancy time, processing time, production time and setup time are summed up and the key performance indicators occupancy rate, setup reduction, process availability and availability are calculated. The production time is the sum of the durations of all operating states assigned to the PRODUCTION time base. The setup time is the sum of the durations of all operating states assigned to the SETUP time base. The scheduled operating time is the sum of the durations of all operating states assigned to the SCHEDULED OPERATING TIME time base.   Note: The setup time is not necessarily identical to the duration of the setup phase, because operating states that are assigned to the time base SETUP can also occur during the processing phase (e. g. intermediate setup). If such operating states occur during the processing phase, the setup time is longer than the duration of the setup phase and the processing time is shorter than the duration of the processing phase. The scheduled operating time is also not necessarily identical to the duration of the originally scheduled operating time, since operating states that are not assigned to the SCHEDULED OPERATING TIME time base can also occur within the originally scheduled operating time (e.g. spontaneous works council meeting). Such operating states do not reduce the availability of a workplace. For further information, please refer to the documentation at https://docs.forcebridge.io/index.html. A definition of the key figures can be found at https://docs.forcebridge.io/appendix/ .

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new WorkplaceApi();
var workplaceId = workplaceId_example; // String | UUID of a workplace
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of the considered period Default: Current timestamp
var limit = 56; // int | Size of the requested page
var offset = 56; // int | Offset used for pagination
var operatingStateClassId = operatingStateClassId_example; // String | UUID of an operating state class
var shiftId = shiftId_example; // String | UUID of a shift of the corresponding workplace
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of the considered period Default: Beginning of the current week
var timeBase = timeBase_example; // String | Time base to be filtered for
var workplaceStateId = workplaceStateId_example; // String | ID of a workplace state

try {
    var result = api_instance.getWorkplaceOperatingStateSummary(workplaceId, endDate, limit, offset, operatingStateClassId, shiftId, startDate, timeBase, workplaceStateId);
    print(result);
} catch (e) {
    print("Exception when calling WorkplaceApi->getWorkplaceOperatingStateSummary: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workplaceId** | **String**| UUID of a workplace | 
 **endDate** | **DateTime**| The end date of the considered period Default: Current timestamp | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]
 **operatingStateClassId** | **String**| UUID of an operating state class | [optional] 
 **shiftId** | **String**| UUID of a shift of the corresponding workplace | [optional] 
 **startDate** | **DateTime**| The start date of the considered period Default: Beginning of the current week | [optional] 
 **timeBase** | **String**| Time base to be filtered for | [optional] 
 **workplaceStateId** | **String**| ID of a workplace state | [optional] 

### Return type

[**WorkplaceRecordedOperatingStateSummaryCollection**](WorkplaceRecordedOperatingStateSummaryCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWorkplaceQuantitySummary**
> WorkplaceQuantitySummary getWorkplaceQuantitySummary(workplaceId, endDate, limit, materialNumber, offset, shiftId, startDate)

Retrieve the quantity summary of a workplace.

A list of output quantities is returned for each material produced. All output quantities are summarized according to yield, scrap and rework quantity and the production time used for this is returned. In contrast to the specification, which provides the target durations and quantities, the actual durations and quantities are found here. In addition, the performance, the time-based and the quantity-based quality rate are derived from this. A definition of the key figures can be found at https://docs.forcebridge.io/appendix/ .

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new WorkplaceApi();
var workplaceId = workplaceId_example; // String | UUID of a workplace
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of the considered period
var limit = 56; // int | Size of the requested page
var materialNumber = materialNumber_example; // String | Material number to be produced at the workplace
var offset = 56; // int | Offset used for pagination
var shiftId = shiftId_example; // String | UUID of a shift of the corresponding workplace
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of the considered period Default: Beginning of the current week

try {
    var result = api_instance.getWorkplaceQuantitySummary(workplaceId, endDate, limit, materialNumber, offset, shiftId, startDate);
    print(result);
} catch (e) {
    print("Exception when calling WorkplaceApi->getWorkplaceQuantitySummary: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workplaceId** | **String**| UUID of a workplace | 
 **endDate** | **DateTime**| The end date of the considered period | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **materialNumber** | **String**| Material number to be produced at the workplace | [optional] 
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]
 **shiftId** | **String**| UUID of a shift of the corresponding workplace | [optional] 
 **startDate** | **DateTime**| The start date of the considered period Default: Beginning of the current week | [optional] 

### Return type

[**WorkplaceQuantitySummary**](WorkplaceQuantitySummary.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWorkplaceRecordedOperatingStates**
> RecordedOperatingStateCollection getWorkplaceRecordedOperatingStates(workplaceId, embed, endDate, limit, operatingStateClassId, paginationDirection, paginationTimestamp, shiftId, startDate, timeBase, workplaceStateId)

Retrieve the recorded operating states of a workplace.

A list of the recorded operating states is returned. Call parameters allow filtering according to a specific time period. Further call parameters also enable filtering according to certain time bases or the workplace state PRODUCTION and DOWNTIME.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new WorkplaceApi();
var workplaceId = workplaceId_example; // String | UUID of a workplace
var embed = []; // List<String> | Names of embeddable resources to be embedded
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of the considered period
var limit = 56; // int | Size of the requested page
var operatingStateClassId = operatingStateClassId_example; // String | UUID of an operating state class
var paginationDirection = paginationDirection_example; // String | Direction on how to navigate through the response pages
var paginationTimestamp = 2013-10-20T19:20:30+01:00; // DateTime | Timestamp used for pagination
var shiftId = shiftId_example; // String | UUID of a shift of the corresponding workplace
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of the considered period Default: Beginning of the current week
var timeBase = timeBase_example; // String | Time base to be filtered for
var workplaceStateId = workplaceStateId_example; // String | ID of a workplace state

try {
    var result = api_instance.getWorkplaceRecordedOperatingStates(workplaceId, embed, endDate, limit, operatingStateClassId, paginationDirection, paginationTimestamp, shiftId, startDate, timeBase, workplaceStateId);
    print(result);
} catch (e) {
    print("Exception when calling WorkplaceApi->getWorkplaceRecordedOperatingStates: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workplaceId** | **String**| UUID of a workplace | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 
 **endDate** | **DateTime**| The end date of the considered period | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **operatingStateClassId** | **String**| UUID of an operating state class | [optional] 
 **paginationDirection** | **String**| Direction on how to navigate through the response pages | [optional] [default to NEXT]
 **paginationTimestamp** | **DateTime**| Timestamp used for pagination | [optional] 
 **shiftId** | **String**| UUID of a shift of the corresponding workplace | [optional] 
 **startDate** | **DateTime**| The start date of the considered period Default: Beginning of the current week | [optional] 
 **timeBase** | **String**| Time base to be filtered for | [optional] 
 **workplaceStateId** | **String**| ID of a workplace state | [optional] 

### Return type

[**RecordedOperatingStateCollection**](RecordedOperatingStateCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWorkplaceRecordedOperationPhases**
> WorkplaceRecordedOperationPhaseCollection getWorkplaceRecordedOperationPhases(workplaceId, endDate, limit, paginationDirection, paginationTimestamp, startDate)

Retrieve the recorded operation phases of a workplace and their durations.

The time series of the recorded operation phases is returned. In addition, the setup phase duration, the processing phase duration and the occupancy time, which is the sum of both durations, are also returned. Call parameters allow filtering according to a specific time period.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new WorkplaceApi();
var workplaceId = workplaceId_example; // String | UUID of a workplace
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of the considered period
var limit = 56; // int | Size of the requested page
var paginationDirection = paginationDirection_example; // String | Direction on how to navigate through the response pages
var paginationTimestamp = 2013-10-20T19:20:30+01:00; // DateTime | Timestamp used for pagination
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of the considered period Default: Beginning of the current week

try {
    var result = api_instance.getWorkplaceRecordedOperationPhases(workplaceId, endDate, limit, paginationDirection, paginationTimestamp, startDate);
    print(result);
} catch (e) {
    print("Exception when calling WorkplaceApi->getWorkplaceRecordedOperationPhases: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workplaceId** | **String**| UUID of a workplace | 
 **endDate** | **DateTime**| The end date of the considered period | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **paginationDirection** | **String**| Direction on how to navigate through the response pages | [optional] [default to NEXT]
 **paginationTimestamp** | **DateTime**| Timestamp used for pagination | [optional] 
 **startDate** | **DateTime**| The start date of the considered period Default: Beginning of the current week | [optional] 

### Return type

[**WorkplaceRecordedOperationPhaseCollection**](WorkplaceRecordedOperationPhaseCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWorkplaceRecordedOutputQuantities**
> RecordedOutputQuantitiesCollection getWorkplaceRecordedOutputQuantities(workplaceId, endDate, limit, paginationDirection, paginationIdentifier, paginationTimestamp, shiftId, startDate)

Retrieve the recorded output quantities of a workplace.

A list of the recorded output quantities with the classification in YIELD, SCRAP and REWORK is returned. If operations are currently performed at the workplace, unconfirmed quantities can also occur in the current time period. These are indicated separately as such. Call parameters allow filtering according to a specific time period. Further call parameters also enable filtering according to specific quality types (YIELD, SRCAP or REWORK).

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new WorkplaceApi();
var workplaceId = workplaceId_example; // String | UUID of a workplace
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of the considered period Default: Current timestamp
var limit = 56; // int | Size of the requested page
var paginationDirection = paginationDirection_example; // String | Direction on how to navigate through the response pages
var paginationIdentifier = paginationIdentifier_example; // String | A response is split into pages (pagination) if the number of requested elements exceeds the defined limit. In cases where the timestamp is not unique but used more than once, a unique identifier is associated to each page of a paginated response. These can then be used to retrieve a specific page.
var paginationTimestamp = 2013-10-20T19:20:30+01:00; // DateTime | Timestamp used for pagination
var shiftId = shiftId_example; // String | UUID of a shift of the corresponding workplace
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of the considered period Default: Beginning of the current week

try {
    var result = api_instance.getWorkplaceRecordedOutputQuantities(workplaceId, endDate, limit, paginationDirection, paginationIdentifier, paginationTimestamp, shiftId, startDate);
    print(result);
} catch (e) {
    print("Exception when calling WorkplaceApi->getWorkplaceRecordedOutputQuantities: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workplaceId** | **String**| UUID of a workplace | 
 **endDate** | **DateTime**| The end date of the considered period Default: Current timestamp | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **paginationDirection** | **String**| Direction on how to navigate through the response pages | [optional] [default to NEXT]
 **paginationIdentifier** | **String**| A response is split into pages (pagination) if the number of requested elements exceeds the defined limit. In cases where the timestamp is not unique but used more than once, a unique identifier is associated to each page of a paginated response. These can then be used to retrieve a specific page. | [optional] 
 **paginationTimestamp** | **DateTime**| Timestamp used for pagination | [optional] 
 **shiftId** | **String**| UUID of a shift of the corresponding workplace | [optional] 
 **startDate** | **DateTime**| The start date of the considered period Default: Beginning of the current week | [optional] 

### Return type

[**RecordedOutputQuantitiesCollection**](RecordedOutputQuantitiesCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWorkplaces**
> WorkplaceCollection getWorkplaces(embed, erpContextId, limit, offset, workplaceGroupId, workplaceGroupNumber, workplaceNumber, workplaceType)

Retrieve the collection of workplaces.

A filtered collection of workplaces is returned. Call parameters allow filtering, for example, according to the workplace group number or according to specific workplace number.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new WorkplaceApi();
var embed = []; // List<String> | Names of embeddable resources to be embedded
var erpContextId = erpContextId_example; // String | Universally unique identifier of the ERP context in which the workplace number is a unique identifier for a workplace or a workplace group. In SAP ERP, for example, this context is defined by the client, the company code, and the plant
var limit = 56; // int | Size of the requested page
var offset = 56; // int | Offset used for pagination
var workplaceGroupId = workplaceGroupId_example; // String | UUID of a workplace group
var workplaceGroupNumber = workplaceGroupNumber_example; // String | Number of a workplace group.
var workplaceNumber = workplaceNumber_example; // String | The number of the workplace.
var workplaceType = workplaceType_example; // String | The type of workplace.

try {
    var result = api_instance.getWorkplaces(embed, erpContextId, limit, offset, workplaceGroupId, workplaceGroupNumber, workplaceNumber, workplaceType);
    print(result);
} catch (e) {
    print("Exception when calling WorkplaceApi->getWorkplaces: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 
 **erpContextId** | **String**| Universally unique identifier of the ERP context in which the workplace number is a unique identifier for a workplace or a workplace group. In SAP ERP, for example, this context is defined by the client, the company code, and the plant | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]
 **workplaceGroupId** | **String**| UUID of a workplace group | [optional] 
 **workplaceGroupNumber** | **String**| Number of a workplace group. | [optional] 
 **workplaceNumber** | **String**| The number of the workplace. | [optional] 
 **workplaceType** | **String**| The type of workplace. | [optional] 

### Return type

[**WorkplaceCollection**](WorkplaceCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRecordedMachineState**
> updateRecordedMachineState(body, workplaceId)

Request a correction of a state

Request a correction of a state of a workplace.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new WorkplaceApi();
var body = new WorkplaceStateCorrectionRequestBody(); // WorkplaceStateCorrectionRequestBody | statusCorrectionWSModel
var workplaceId = workplaceId_example; // String | UUID of a workplace

try {
    api_instance.updateRecordedMachineState(body, workplaceId);
} catch (e) {
    print("Exception when calling WorkplaceApi->updateRecordedMachineState: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**WorkplaceStateCorrectionRequestBody**](WorkplaceStateCorrectionRequestBody.md)| statusCorrectionWSModel | 
 **workplaceId** | **String**| UUID of a workplace | 

### Return type

void (empty response body)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRecordedOperatingState**
> updateRecordedOperatingState(body, workplaceId)

Specify operating state

Specify operating state details

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new WorkplaceApi();
var body = new OperatingStateDetailRequestBody(); // OperatingStateDetailRequestBody | operatingStateDetails
var workplaceId = workplaceId_example; // String | UUID of a workplace

try {
    api_instance.updateRecordedOperatingState(body, workplaceId);
} catch (e) {
    print("Exception when calling WorkplaceApi->updateRecordedOperatingState: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**OperatingStateDetailRequestBody**](OperatingStateDetailRequestBody.md)| operatingStateDetails | 
 **workplaceId** | **String**| UUID of a workplace | 

### Return type

void (empty response body)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWorkplaceState**
> Machine updateWorkplaceState(body, machineStateId, workplaceId, async_)

Update the machine state

Update the machine state of the associated machine

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new WorkplaceApi();
var body = new MachineStateRequestBody(); // MachineStateRequestBody | machineStateRequestBody
var machineStateId = machineStateId_example; // String | ID of a machine state, to change to
var workplaceId = workplaceId_example; // String | UUID of a workplace
var async_ = true; // bool | If set to true, the command is queued and processed asynchronous

try {
    var result = api_instance.updateWorkplaceState(body, machineStateId, workplaceId, async_);
    print(result);
} catch (e) {
    print("Exception when calling WorkplaceApi->updateWorkplaceState: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MachineStateRequestBody**](MachineStateRequestBody.md)| machineStateRequestBody | 
 **machineStateId** | **String**| ID of a machine state, to change to | 
 **workplaceId** | **String**| UUID of a workplace | 
 **async_** | **bool**| If set to true, the command is queued and processed asynchronous | [optional] [default to false]

### Return type

[**Machine**](Machine.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

