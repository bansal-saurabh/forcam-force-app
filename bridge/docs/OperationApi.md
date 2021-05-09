# swagger.api.OperationApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://forcebridgehackathon.force.eco:24443/ffwebservices/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createQualityDetails**](OperationApi.md#createQualityDetails) | **POST** /operations/{operationId}/qualityDetails | Specify quality details
[**getAlternativeWorkplaces**](OperationApi.md#getAlternativeWorkplaces) | **GET** /operations/{operationId}/alternativeWorkplaces | Retrieve the alternative workplaces.
[**getCurrentProductionData**](OperationApi.md#getCurrentProductionData) | **GET** /operations/{operationId}/currentProductionData | Retrieve the current production data of an operation.
[**getMaterialCharacteristics**](OperationApi.md#getMaterialCharacteristics) | **GET** /operations/{operationId}/materialCharacteristics | Retrieve the material characteristics.
[**getOperation**](OperationApi.md#getOperation) | **GET** /operations/{operationId} | Retrieve an operation.
[**getOperationComponents**](OperationApi.md#getOperationComponents) | **GET** /operations/{operationId}/components | Retrieve the components needed to perform the operation.
[**getOperationOperatingStateSummary**](OperationApi.md#getOperationOperatingStateSummary) | **GET** /operations/{operationId}/operatingStateSummary | Retrieve the operating state summary of an operation.
[**getOperationQuantitySummary**](OperationApi.md#getOperationQuantitySummary) | **GET** /operations/{operationId}/quantitySummary | Retrieve the quantity summary of an operation.
[**getOperationRecordedOperatingStates**](OperationApi.md#getOperationRecordedOperatingStates) | **GET** /operations/{operationId}/recordedOperatingStates | Retrieve the recorded operating states.
[**getOperationRecordedOperationPhases**](OperationApi.md#getOperationRecordedOperationPhases) | **GET** /operations/{operationId}/recordedOperationPhases | Retrieve the recorded operation phases of an operation and their durations.
[**getOperationRecordedOutputQuantities**](OperationApi.md#getOperationRecordedOutputQuantities) | **GET** /operations/{operationId}/recordedOutputQuantities | Retrieve the recorded output quantities of an operation.
[**getOperations**](OperationApi.md#getOperations) | **GET** /operations | Retrieve the collection of operations.
[**getProductionResourcesAndTools**](OperationApi.md#getProductionResourcesAndTools) | **GET** /operations/{operationId}/productionResourcesAndTools | Retrieve the production resources and tools needed to perform the operation.
[**getScheduledDates**](OperationApi.md#getScheduledDates) | **GET** /operations/{operationId}/scheduledDates | Retrieve the scheduled dates of an operation.
[**getSpecification**](OperationApi.md#getSpecification) | **GET** /operations/{operationId}/specification | Retrieve the operation specification
[**searchOperations**](OperationApi.md#searchOperations) | **POST** /operations/search | Retrieve the collection of operations.
[**updateOperationPhase**](OperationApi.md#updateOperationPhase) | **POST** /operations/{operationId}/{operationPhaseId} | Change the operation phase
[**updateOperationRecordedOperatingState**](OperationApi.md#updateOperationRecordedOperatingState) | **POST** /operations/{operationId}/recordedOperatingStates/update | Specify operating state

# **createQualityDetails**
> createQualityDetails(body, operationId, async_)

Specify quality details

Specify the quality details

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new OperationApi();
var body = new OperationQualityDetail(); // OperationQualityDetail | operationQuanity
var operationId = operationId_example; // String | UUID of an operation
var async_ = true; // bool | If true the command is queued and processed asynchronous

try {
    api_instance.createQualityDetails(body, operationId, async_);
} catch (e) {
    print("Exception when calling OperationApi->createQualityDetails: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**OperationQualityDetail**](OperationQualityDetail.md)| operationQuanity | 
 **operationId** | **String**| UUID of an operation | 
 **async_** | **bool**| If true the command is queued and processed asynchronous | [optional] [default to false]

### Return type

void (empty response body)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAlternativeWorkplaces**
> WorkplaceCollection getAlternativeWorkplaces(operationId)

Retrieve the alternative workplaces.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new OperationApi();
var operationId = operationId_example; // String | UUID of an operation

try {
    var result = api_instance.getAlternativeWorkplaces(operationId);
    print(result);
} catch (e) {
    print("Exception when calling OperationApi->getAlternativeWorkplaces: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **operationId** | **String**| UUID of an operation | 

### Return type

[**WorkplaceCollection**](WorkplaceCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCurrentProductionData**
> OperationCurrentProductionData getCurrentProductionData(operationId, additionalOperationTime)

Retrieve the current production data of an operation.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new OperationApi();
var operationId = operationId_example; // String | UUID of an operation
var additionalOperationTime = []; // List<String> | Additional operation time

try {
    var result = api_instance.getCurrentProductionData(operationId, additionalOperationTime);
    print(result);
} catch (e) {
    print("Exception when calling OperationApi->getCurrentProductionData: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **operationId** | **String**| UUID of an operation | 
 **additionalOperationTime** | [**List&lt;String&gt;**](String.md)| Additional operation time | [optional] 

### Return type

[**OperationCurrentProductionData**](OperationCurrentProductionData.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMaterialCharacteristics**
> OperationMaterialCharacteristics getMaterialCharacteristics(operationId)

Retrieve the material characteristics.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new OperationApi();
var operationId = operationId_example; // String | UUID of an operation

try {
    var result = api_instance.getMaterialCharacteristics(operationId);
    print(result);
} catch (e) {
    print("Exception when calling OperationApi->getMaterialCharacteristics: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **operationId** | **String**| UUID of an operation | 

### Return type

[**OperationMaterialCharacteristics**](OperationMaterialCharacteristics.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOperation**
> Operation getOperation(operationId, embed)

Retrieve an operation.

Information is returned for domain-specific identification of the operation and about its current phase.   In addition, the workplace on which the operation is currently being executed is also specified for an operation in progress.  Furthermore, most sub-resources of the operation can be embedded.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new OperationApi();
var operationId = operationId_example; // String | UUID of an operation
var embed = []; // List<String> | Names of embeddable resources to be embedded

try {
    var result = api_instance.getOperation(operationId, embed);
    print(result);
} catch (e) {
    print("Exception when calling OperationApi->getOperation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **operationId** | **String**| UUID of an operation | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 

### Return type

[**Operation**](Operation.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOperationComponents**
> OperationComponentCollection getOperationComponents(operationId, embed, limit, offset)

Retrieve the components needed to perform the operation.

A list of components is returned. These components are specified in the routing of the ERP system and are needed to perform the operation.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new OperationApi();
var operationId = operationId_example; // String | UUID of an operation
var embed = []; // List<String> | Names of embeddable resources to be embedded
var limit = 56; // int | Size of the requested page
var offset = 56; // int | Offset used for pagination

try {
    var result = api_instance.getOperationComponents(operationId, embed, limit, offset);
    print(result);
} catch (e) {
    print("Exception when calling OperationApi->getOperationComponents: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **operationId** | **String**| UUID of an operation | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]

### Return type

[**OperationComponentCollection**](OperationComponentCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOperationOperatingStateSummary**
> RecordedOperatingStateSummaryCollection getOperationOperatingStateSummary(operationId, limit, offset, operatingStateClassId, timeBase, workplaceStateId)

Retrieve the operating state summary of an operation.

The total duration and frequency of the operating states that have occurred are returned. Furthermore execution time, processing time, production time and setup time are summed up and key performance indicators setup reduction and process availability are calculated. The production time is the sum of the durations of all operating states assigned to the PRODUCTION time base. The setup time is the sum of the durations of all operating states assigned to the SETUP time base.  Note: The setup time is not necessarily identical to the duration of the setup phase, because operating states that are assigned to the time base SETUP can also occur during the processing phase (e. g. intermediate setup). If such operating states occur during the processing phase, the setup time is longer than the duration of the setup phase and the processing time is shorter than the duration of the processing phase. For further information, please refer to the documentation at https://docs.forcebridge.io/index.html. A definition of the key figures can be found at https://docs.forcebridge.io/appendix/index.html

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new OperationApi();
var operationId = operationId_example; // String | UUID of an operation
var limit = 56; // int | Size of the requested page
var offset = 56; // int | Offset used for pagination
var operatingStateClassId = operatingStateClassId_example; // String | UUID of an operating state class
var timeBase = timeBase_example; // String | Time base to be filtered for
var workplaceStateId = workplaceStateId_example; // String | ID of a workplace state

try {
    var result = api_instance.getOperationOperatingStateSummary(operationId, limit, offset, operatingStateClassId, timeBase, workplaceStateId);
    print(result);
} catch (e) {
    print("Exception when calling OperationApi->getOperationOperatingStateSummary: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **operationId** | **String**| UUID of an operation | 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]
 **operatingStateClassId** | **String**| UUID of an operating state class | [optional] 
 **timeBase** | **String**| Time base to be filtered for | [optional] 
 **workplaceStateId** | **String**| ID of a workplace state | [optional] 

### Return type

[**RecordedOperatingStateSummaryCollection**](RecordedOperatingStateSummaryCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOperationQuantitySummary**
> OperationQuantitySummary getOperationQuantitySummary(operationId, limit, offset)

Retrieve the quantity summary of an operation.

A list of output quantities is returned. All output quantities are summarized according to yield, scrap and rework quantity and the production time used for this is returned. In contrast to the specification, which provides the target durations and quantities, the actual durations and quantities are found here. In addition, the performance and quality rate are derived from this. A definition of the key figures can be found at https://docs.forcebridge.io/appendix/index.html

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new OperationApi();
var operationId = operationId_example; // String | UUID of an operation
var limit = 56; // int | Size of the requested page
var offset = 56; // int | Offset used for pagination

try {
    var result = api_instance.getOperationQuantitySummary(operationId, limit, offset);
    print(result);
} catch (e) {
    print("Exception when calling OperationApi->getOperationQuantitySummary: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **operationId** | **String**| UUID of an operation | 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]

### Return type

[**OperationQuantitySummary**](OperationQuantitySummary.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOperationRecordedOperatingStates**
> RecordedOperatingStateCollection getOperationRecordedOperatingStates(operationId, embed, endDate, limit, operatingStateClassId, paginationDirection, paginationTimestamp, startDate, timeBase, workplaceStateId)

Retrieve the recorded operating states.

A list of the recorded operating states of the relevant workplaces during the execution of the operation is returned. Call parameters allow filtering according to a specific time period. Further call parameters also enable filtering according to certain time bases or the workplace state PRODUCTION and DOWNTIME.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new OperationApi();
var operationId = operationId_example; // String | UUID of an operation
var embed = []; // List<String> | Names of embeddable resources to be embedded
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | Filters out operating states with a later end timestamp
var limit = 56; // int | Size of the requested page
var operatingStateClassId = operatingStateClassId_example; // String | UUID of an operating state class
var paginationDirection = paginationDirection_example; // String | Direction on how to navigate through the response pages
var paginationTimestamp = 2013-10-20T19:20:30+01:00; // DateTime | Timestamp used for pagination
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | Filters out operating states with an earlier start timestamp
var timeBase = timeBase_example; // String | Time base to be filtered for
var workplaceStateId = workplaceStateId_example; // String | ID of a workplace state

try {
    var result = api_instance.getOperationRecordedOperatingStates(operationId, embed, endDate, limit, operatingStateClassId, paginationDirection, paginationTimestamp, startDate, timeBase, workplaceStateId);
    print(result);
} catch (e) {
    print("Exception when calling OperationApi->getOperationRecordedOperatingStates: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **operationId** | **String**| UUID of an operation | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 
 **endDate** | **DateTime**| Filters out operating states with a later end timestamp | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **operatingStateClassId** | **String**| UUID of an operating state class | [optional] 
 **paginationDirection** | **String**| Direction on how to navigate through the response pages | [optional] [default to NEXT]
 **paginationTimestamp** | **DateTime**| Timestamp used for pagination | [optional] 
 **startDate** | **DateTime**| Filters out operating states with an earlier start timestamp | [optional] 
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

# **getOperationRecordedOperationPhases**
> RecordedOperationPhaseCollection getOperationRecordedOperationPhases(operationId, endDate, limit, paginationDirection, paginationTimestamp, startDate)

Retrieve the recorded operation phases of an operation and their durations.

A list of the recorded operation phases is returned. In addition, the setup phase duration, the processing phase duration and the execution time, which is the sum of both durations, are also returned. Call parameters allow filtering according to a specific time period.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new OperationApi();
var operationId = operationId_example; // String | UUID of an operation
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | Filters out operating phases with a later start timestamp. Default: now
var limit = 56; // int | Size of the requested page
var paginationDirection = paginationDirection_example; // String | Direction on how to navigate through the response pages
var paginationTimestamp = 2013-10-20T19:20:30+01:00; // DateTime | Timestamp used for pagination
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | Filters out operating phases with an earlier start timestamp.

try {
    var result = api_instance.getOperationRecordedOperationPhases(operationId, endDate, limit, paginationDirection, paginationTimestamp, startDate);
    print(result);
} catch (e) {
    print("Exception when calling OperationApi->getOperationRecordedOperationPhases: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **operationId** | **String**| UUID of an operation | 
 **endDate** | **DateTime**| Filters out operating phases with a later start timestamp. Default: now | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **paginationDirection** | **String**| Direction on how to navigate through the response pages | [optional] [default to NEXT]
 **paginationTimestamp** | **DateTime**| Timestamp used for pagination | [optional] 
 **startDate** | **DateTime**| Filters out operating phases with an earlier start timestamp. | [optional] 

### Return type

[**RecordedOperationPhaseCollection**](RecordedOperationPhaseCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOperationRecordedOutputQuantities**
> RecordedOutputQuantitiesCollection getOperationRecordedOutputQuantities(operationId, endDate, limit, paginationDirection, paginationIdentifier, paginationTimestamp, qualityTypeId, startDate)

Retrieve the recorded output quantities of an operation.

A list of the recorded output quantities with the classification in YIELD, SCRAP and REWORK is returned. Unconfirmed quantities can occur for operations that have not yet been completed. These are indicated separately as such. Call parameters allow for filtering according to specific quality types (YIELD, SCRAP or REWORK).

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new OperationApi();
var operationId = operationId_example; // String | UUID of an operation
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | Filters out output quantities with a later start timestamp
var limit = 56; // int | Size of the requested page
var paginationDirection = paginationDirection_example; // String | Direction on how to navigate through the response pages
var paginationIdentifier = paginationIdentifier_example; // String | A response is split into pages (pagination) if the number of requested elements exceeds the defined limit. In cases where the timestamp is not unique but used more than once, a unique identifier is associated to each page of a paginated response. These can then be used to retrieve a specific page.
var paginationTimestamp = 2013-10-20T19:20:30+01:00; // DateTime | Timestamp used for pagination
var qualityTypeId = qualityTypeId_example; // String | ID of a quality type
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | Filters out output quantities with an earlier start timestamp

try {
    var result = api_instance.getOperationRecordedOutputQuantities(operationId, endDate, limit, paginationDirection, paginationIdentifier, paginationTimestamp, qualityTypeId, startDate);
    print(result);
} catch (e) {
    print("Exception when calling OperationApi->getOperationRecordedOutputQuantities: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **operationId** | **String**| UUID of an operation | 
 **endDate** | **DateTime**| Filters out output quantities with a later start timestamp | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **paginationDirection** | **String**| Direction on how to navigate through the response pages | [optional] [default to NEXT]
 **paginationIdentifier** | **String**| A response is split into pages (pagination) if the number of requested elements exceeds the defined limit. In cases where the timestamp is not unique but used more than once, a unique identifier is associated to each page of a paginated response. These can then be used to retrieve a specific page. | [optional] 
 **paginationTimestamp** | **DateTime**| Timestamp used for pagination | [optional] 
 **qualityTypeId** | **String**| ID of a quality type | [optional] 
 **startDate** | **DateTime**| Filters out output quantities with an earlier start timestamp | [optional] 

### Return type

[**RecordedOutputQuantitiesCollection**](RecordedOutputQuantitiesCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOperations**
> OperationCollection getOperations(embed, endDate, isDispatched, isInProgress, isPlannable, limit, materialNumber, operationNumber, operationPhaseId, operationSplit, paginationDirection, paginationIdentifier, paginationTimestamp, productionOrderId, productionOrderNumber, productionOrderSplit, startDate, workplaceId, workplaceNumber)

Retrieve the collection of operations.

A filtered collection of operations is returned.   Various call parameters enable filtering, for example, according to currently processed operations, plannable operations and dispatched operations or operations carried out in a specific time period. The completed or closed operations are those that are not plannable, are not dispatched and are not currently processed. This means that all these three call parameters must be set to false in order to retrieve only the operations that have already been completed. When calling up the operations filtered according to whatever criteria, it is also always possible to embed most of the sub-resources. This is done using the call parameter embed, for example embed=specification.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new OperationApi();
var embed = []; // List<String> | Names of embeddable resources to be embedded
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | Operations with a later start date are excluded. The start timestamp of an operation is either the actual start date (COMPLETED, CLOSED, PROCESSING, SETUP) or the planned start date (DISPATCHED) or the scheduled start date (RELEASED), depending on the operation phase.
var isDispatched = true; // bool | If set to true, filter the operations by those currently in operation phase 'DISPATCHED'
var isInProgress = true; // bool | If set to true, filter the operations by those currently in progress
var isPlannable = true; // bool | If set to true, only plannable operations are returned
var limit = 56; // int | Size of the requested page
var materialNumber = materialNumber_example; // String | Material number of the material produced by the operation
var operationNumber = operationNumber_example; // String | Operation number within the ERP system
var operationPhaseId = operationPhaseId_example; // String | ID of an operation phase
var operationSplit = operationSplit_example; // String | Split number of the operation
var paginationDirection = paginationDirection_example; // String | Direction on how to navigate through the response pages
var paginationIdentifier = paginationIdentifier_example; // String | A response is split into pages (pagination) if the number of requested elements exceeds the defined limit. In cases where the timestamp is not unique but used more than once, a unique identifier is associated to each page of a paginated response. These can then be used to retrieve a specific page.
var paginationTimestamp = 2013-10-20T19:20:30+01:00; // DateTime | Timestamp used for pagination
var productionOrderId = productionOrderId_example; // String | UUID of the corresponding production order
var productionOrderNumber = productionOrderNumber_example; // String | Production Order number of the corresponding production order
var productionOrderSplit = productionOrderSplit_example; // String | Split number of the corresponding production order split
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | Operations with an earlier end date are excluded. The end timestamp of an operation is either the actual end date (COMPLETED, CLOSED) or the planned end date (DISPATCHED) or the scheduled end date (RELEASED), depending on the operation phase. For running operations (PROCESSING, SETUP), the assumed end date is the end of time. 
var workplaceId = workplaceId_example; // String | UUID of the workplace at which the operation is or has been executed for operations in the SETUP, PROCESSING, COMPLETED and CLOSED phases.  For operations in the DISPATCHED phase, it is the number of the planned workplace. For operations in the RELEASED phase, it is the number of the target workplace
var workplaceNumber = workplaceNumber_example; // String | Workplace number at which the operation is or has been executed for operations in the SETUP, PROCESSING, COMPLETED and CLOSED phases.  For operations in the DISPATCHED phase, it is the number of the planned workplace. For operations in the RELEASED phase, it is the number of the target workplace.

try {
    var result = api_instance.getOperations(embed, endDate, isDispatched, isInProgress, isPlannable, limit, materialNumber, operationNumber, operationPhaseId, operationSplit, paginationDirection, paginationIdentifier, paginationTimestamp, productionOrderId, productionOrderNumber, productionOrderSplit, startDate, workplaceId, workplaceNumber);
    print(result);
} catch (e) {
    print("Exception when calling OperationApi->getOperations: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 
 **endDate** | **DateTime**| Operations with a later start date are excluded. The start timestamp of an operation is either the actual start date (COMPLETED, CLOSED, PROCESSING, SETUP) or the planned start date (DISPATCHED) or the scheduled start date (RELEASED), depending on the operation phase. | [optional] 
 **isDispatched** | **bool**| If set to true, filter the operations by those currently in operation phase &#x27;DISPATCHED&#x27; | [optional] 
 **isInProgress** | **bool**| If set to true, filter the operations by those currently in progress | [optional] 
 **isPlannable** | **bool**| If set to true, only plannable operations are returned | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **materialNumber** | **String**| Material number of the material produced by the operation | [optional] 
 **operationNumber** | **String**| Operation number within the ERP system | [optional] 
 **operationPhaseId** | **String**| ID of an operation phase | [optional] 
 **operationSplit** | **String**| Split number of the operation | [optional] 
 **paginationDirection** | **String**| Direction on how to navigate through the response pages | [optional] [default to NEXT]
 **paginationIdentifier** | **String**| A response is split into pages (pagination) if the number of requested elements exceeds the defined limit. In cases where the timestamp is not unique but used more than once, a unique identifier is associated to each page of a paginated response. These can then be used to retrieve a specific page. | [optional] 
 **paginationTimestamp** | **DateTime**| Timestamp used for pagination | [optional] 
 **productionOrderId** | **String**| UUID of the corresponding production order | [optional] 
 **productionOrderNumber** | **String**| Production Order number of the corresponding production order | [optional] 
 **productionOrderSplit** | **String**| Split number of the corresponding production order split | [optional] 
 **startDate** | **DateTime**| Operations with an earlier end date are excluded. The end timestamp of an operation is either the actual end date (COMPLETED, CLOSED) or the planned end date (DISPATCHED) or the scheduled end date (RELEASED), depending on the operation phase. For running operations (PROCESSING, SETUP), the assumed end date is the end of time.  | [optional] 
 **workplaceId** | **String**| UUID of the workplace at which the operation is or has been executed for operations in the SETUP, PROCESSING, COMPLETED and CLOSED phases.  For operations in the DISPATCHED phase, it is the number of the planned workplace. For operations in the RELEASED phase, it is the number of the target workplace | [optional] 
 **workplaceNumber** | **String**| Workplace number at which the operation is or has been executed for operations in the SETUP, PROCESSING, COMPLETED and CLOSED phases.  For operations in the DISPATCHED phase, it is the number of the planned workplace. For operations in the RELEASED phase, it is the number of the target workplace. | [optional] 

### Return type

[**OperationCollection**](OperationCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProductionResourcesAndTools**
> ProductionResourceToolCollection getProductionResourcesAndTools(operationId, embed, group, limit, offset, type)

Retrieve the production resources and tools needed to perform the operation.

A list of production resources and tools is returned.   These production resources and tools are specified in the routing of the ERP system and are needed to perform the operation.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new OperationApi();
var operationId = operationId_example; // String | UUID of an operation
var embed = []; // List<String> | Names of embeddable resources to be embedded
var group = group_example; // String | Production resource and tool group 
var limit = 56; // int | Size of the requested page
var offset = 56; // int | Offset used for pagination
var type = type_example; // String | Type of a production resource

try {
    var result = api_instance.getProductionResourcesAndTools(operationId, embed, group, limit, offset, type);
    print(result);
} catch (e) {
    print("Exception when calling OperationApi->getProductionResourcesAndTools: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **operationId** | **String**| UUID of an operation | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 
 **group** | **String**| Production resource and tool group  | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]
 **type** | **String**| Type of a production resource | [optional] 

### Return type

[**ProductionResourceToolCollection**](ProductionResourceToolCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getScheduledDates**
> OperationScheduledDates getScheduledDates(operationId)

Retrieve the scheduled dates of an operation.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new OperationApi();
var operationId = operationId_example; // String | UUID of an operation

try {
    var result = api_instance.getScheduledDates(operationId);
    print(result);
} catch (e) {
    print("Exception when calling OperationApi->getScheduledDates: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **operationId** | **String**| UUID of an operation | 

### Return type

[**OperationScheduledDates**](OperationScheduledDates.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSpecification**
> OperationSpecification getSpecification(operationId, embed)

Retrieve the operation specification

Retrieve the quantities to be produced, the required workplace group and the specified durations, as defined in the routing of the ERP system.  In contrast to operating state summary and quantity summary, which reflect the actual durations and quantities, the target durations and target quantities can be found here.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new OperationApi();
var operationId = operationId_example; // String | UUID of an operation
var embed = []; // List<String> | Names of embeddable resources to be embedded

try {
    var result = api_instance.getSpecification(operationId, embed);
    print(result);
} catch (e) {
    print("Exception when calling OperationApi->getSpecification: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **operationId** | **String**| UUID of an operation | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 

### Return type

[**OperationSpecification**](OperationSpecification.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchOperations**
> OperationCollection searchOperations(body, embed, limit, paginationDirection, paginationIdentifier, paginationTimestamp)

Retrieve the collection of operations.

A filtered collection of operations is returned.   A large number of parameters that can be passed allow filtering according to various criteria.  For example, a large number of order numbers can be filtered. In addition, it is possible to filter by operations that are currently being processed, operations that can be planned, and operations that are dispatched or carried out in a specific time period. In contrast to the GET method, the POST method allows the transfer of filter combinations of any length.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new OperationApi();
var body = new SearchOperations(); // SearchOperations | Operation properties, as JSON format, to be filtered for
var embed = []; // List<String> | Names of embeddable resources to be embedded
var limit = 56; // int | Size of the requested page
var paginationDirection = paginationDirection_example; // String | Direction on how to navigate through the response pages
var paginationIdentifier = paginationIdentifier_example; // String | A response is split into pages (pagination) if the number of requested elements exceeds the defined limit. In cases where the timestamp is not unique but used more than once, a unique identifier is associated to each page of a paginated response. These can then be used to retrieve a specific page.
var paginationTimestamp = 2013-10-20T19:20:30+01:00; // DateTime | Timestamp used for pagination

try {
    var result = api_instance.searchOperations(body, embed, limit, paginationDirection, paginationIdentifier, paginationTimestamp);
    print(result);
} catch (e) {
    print("Exception when calling OperationApi->searchOperations: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SearchOperations**](SearchOperations.md)| Operation properties, as JSON format, to be filtered for | [optional] 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **paginationDirection** | **String**| Direction on how to navigate through the response pages | [optional] [default to NEXT]
 **paginationIdentifier** | **String**| A response is split into pages (pagination) if the number of requested elements exceeds the defined limit. In cases where the timestamp is not unique but used more than once, a unique identifier is associated to each page of a paginated response. These can then be used to retrieve a specific page. | [optional] 
 **paginationTimestamp** | **DateTime**| Timestamp used for pagination | [optional] 

### Return type

[**OperationCollection**](OperationCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOperationPhase**
> Operation updateOperationPhase(operationId, operationPhaseId, body, async_)

Change the operation phase

This method allows for changing the operation phase.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new OperationApi();
var operationId = operationId_example; // String | UUID of an operation
var operationPhaseId = operationPhaseId_example; // String | ID of an operation phase, to change to
var body = new OperationPhase(); // OperationPhase | operationPhase
var async_ = true; // bool | If true the command is queued and processed asynchronous

try {
    var result = api_instance.updateOperationPhase(operationId, operationPhaseId, body, async_);
    print(result);
} catch (e) {
    print("Exception when calling OperationApi->updateOperationPhase: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **operationId** | **String**| UUID of an operation | 
 **operationPhaseId** | **String**| ID of an operation phase, to change to | 
 **body** | [**OperationPhase**](OperationPhase.md)| operationPhase | [optional] 
 **async_** | **bool**| If true the command is queued and processed asynchronous | [optional] [default to false]

### Return type

[**Operation**](Operation.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOperationRecordedOperatingState**
> updateOperationRecordedOperatingState(body, operationId)

Specify operating state

Specify operating state details

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new OperationApi();
var body = new OperatingStateDetailRequestBody(); // OperatingStateDetailRequestBody | operatingStateDetails
var operationId = operationId_example; // String | UUID of an operation

try {
    api_instance.updateOperationRecordedOperatingState(body, operationId);
} catch (e) {
    print("Exception when calling OperationApi->updateOperationRecordedOperatingState: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**OperatingStateDetailRequestBody**](OperatingStateDetailRequestBody.md)| operatingStateDetails | 
 **operationId** | **String**| UUID of an operation | 

### Return type

void (empty response body)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

