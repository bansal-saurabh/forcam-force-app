# swagger.api.MasterDataApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://forcebridgehackathon.force.eco:24443/ffwebservices/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCustomerSpecificSetting**](MasterDataApi.md#getCustomerSpecificSetting) | **GET** /masterData/customerSpecificSettings/{customerSpecificSettingId} | Retrieve a customer specific setting.
[**getCustomerSpecificSettings**](MasterDataApi.md#getCustomerSpecificSettings) | **GET** /masterData/customerSpecificSettings | Retrieve the collection of customer specific settings.
[**getDocumentState**](MasterDataApi.md#getDocumentState) | **GET** /masterData/documentStates/{documentStateId} | Retrieve a document state.
[**getDocumentStates**](MasterDataApi.md#getDocumentStates) | **GET** /masterData/documentStates | Retrieve the collection of document states.
[**getMachineState**](MasterDataApi.md#getMachineState) | **GET** /masterData/machineStates/{machineStateId} | Get machine state
[**getMachineStateDetail**](MasterDataApi.md#getMachineStateDetail) | **GET** /masterData/machineStateDetails/{machineStateDetailId} | Retrieve machine state detail
[**getMachineStateDetails**](MasterDataApi.md#getMachineStateDetails) | **GET** /masterData/machineStateDetails | Retrieve machine state details
[**getMachineStates**](MasterDataApi.md#getMachineStates) | **GET** /masterData/machineStates | Get all machine states
[**getMasterData**](MasterDataApi.md#getMasterData) | **GET** /masterData | Retrieve the entry point of the master data.
[**getOperatingState**](MasterDataApi.md#getOperatingState) | **GET** /masterData/operatingStates/{operatingStateId} | Retrieve an operating state.
[**getOperatingStateClass**](MasterDataApi.md#getOperatingStateClass) | **GET** /masterData/operatingStateClasses/{operatingStateClassId} | Retrieve an operating state class.
[**getOperatingStateClasses**](MasterDataApi.md#getOperatingStateClasses) | **GET** /masterData/operatingStateClasses | Retrieve the collection of operating state classes.
[**getOperatingStates**](MasterDataApi.md#getOperatingStates) | **GET** /masterData/operatingStates | Retrieve the collection of operating states.
[**getOperationPhase**](MasterDataApi.md#getOperationPhase) | **GET** /masterData/operationPhases/{operationPhaseId} | Retrieve an operation phase.
[**getOperationPhases**](MasterDataApi.md#getOperationPhases) | **GET** /masterData/operationPhases | Retrieve the collection of operation phases.
[**getOperationProductionState**](MasterDataApi.md#getOperationProductionState) | **GET** /masterData/operationProductionStates/{operationProductionStateId} | Get machine state
[**getOperationProductionStateDetail**](MasterDataApi.md#getOperationProductionStateDetail) | **GET** /masterData/operationProductionStateDetails/{operationProductionStateDetailId} | Retrieve operation production state detail
[**getOperationProductionStateDetails**](MasterDataApi.md#getOperationProductionStateDetails) | **GET** /masterData/operationProductionStateDetails | Retrieve operation production state details
[**getOperationProductionStates**](MasterDataApi.md#getOperationProductionStates) | **GET** /masterData/operationProductionStates | Get all operation production states
[**getQualityDetail**](MasterDataApi.md#getQualityDetail) | **GET** /masterData/qualityDetails/{qualityDetailId} | Retrieve a quality detail.
[**getQualityDetails**](MasterDataApi.md#getQualityDetails) | **GET** /masterData/qualityDetails | Retrieve the collection of quality details.
[**getQualityType**](MasterDataApi.md#getQualityType) | **GET** /masterData/qualityTypes/{qualityTypeId} | Retrieve a quality type.
[**getQualityTypes**](MasterDataApi.md#getQualityTypes) | **GET** /masterData/qualityTypes | Retrieve the collection of quality types.
[**getShiftState**](MasterDataApi.md#getShiftState) | **GET** /masterData/shiftStates/{shiftStateId} | Retrieve a shift state.
[**getShiftStates**](MasterDataApi.md#getShiftStates) | **GET** /masterData/shiftStates | Retrieve the collection of shift states.
[**getShiftType**](MasterDataApi.md#getShiftType) | **GET** /masterData/shiftTypes/{shiftTypeId} | Retrieve a shift type.
[**getShiftTypes**](MasterDataApi.md#getShiftTypes) | **GET** /masterData/shiftTypes | Retrieve the collection of shift types.
[**getTicketActivityState**](MasterDataApi.md#getTicketActivityState) | **GET** /masterData/ticketActivityStates/{ticketActivityStateId} | Retrieve a ticket state.
[**getTicketActivityStates**](MasterDataApi.md#getTicketActivityStates) | **GET** /masterData/ticketActivityStates | Retrieve the collection of ticket states.
[**getTicketClass**](MasterDataApi.md#getTicketClass) | **GET** /masterData/ticketClasses/{ticketClassId} | Retrieve a ticket class.
[**getTicketClasses**](MasterDataApi.md#getTicketClasses) | **GET** /masterData/ticketClasses | Retrieve the collection of ticket classes.
[**getTicketState**](MasterDataApi.md#getTicketState) | **GET** /masterData/ticketStates/{ticketStateId} | Retrieve a ticket state.
[**getTicketStates**](MasterDataApi.md#getTicketStates) | **GET** /masterData/ticketStates | Retrieve the collection of ticket states.
[**getToolAssemblyOrderState**](MasterDataApi.md#getToolAssemblyOrderState) | **GET** /masterData/toolAssemblyOrderStates/{toolAssemblyOrderStateId} | Retrieve a tool assembly order state.
[**getToolAssemblyOrderStates**](MasterDataApi.md#getToolAssemblyOrderStates) | **GET** /masterData/toolAssemblyOrderStates | Retrieve the collection of tool assembly order states.
[**getWorkplaceState**](MasterDataApi.md#getWorkplaceState) | **GET** /masterData/workplaceStates/{workplaceStateId} | Retrieve a workplace state.
[**getWorkplaceStates**](MasterDataApi.md#getWorkplaceStates) | **GET** /masterData/workplaceStates | Retrieve the collection of workplace states.

# **getCustomerSpecificSetting**
> CustomerSpecificSetting getCustomerSpecificSetting(customerSpecificSettingId)

Retrieve a customer specific setting.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MasterDataApi();
var customerSpecificSettingId = customerSpecificSettingId_example; // String | ID of the requested customer specific setting

try {
    var result = api_instance.getCustomerSpecificSetting(customerSpecificSettingId);
    print(result);
} catch (e) {
    print("Exception when calling MasterDataApi->getCustomerSpecificSetting: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerSpecificSettingId** | **String**| ID of the requested customer specific setting | 

### Return type

[**CustomerSpecificSetting**](CustomerSpecificSetting.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerSpecificSettings**
> CustomerSpecificSettingCollection getCustomerSpecificSettings(limit, offset, topic)

Retrieve the collection of customer specific settings.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MasterDataApi();
var limit = 56; // int | Size of the requested page
var offset = 56; // int | Offset used for pagination
var topic = topic_example; // String | Topic of the requested customer specific setting

try {
    var result = api_instance.getCustomerSpecificSettings(limit, offset, topic);
    print(result);
} catch (e) {
    print("Exception when calling MasterDataApi->getCustomerSpecificSettings: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]
 **topic** | **String**| Topic of the requested customer specific setting | [optional] 

### Return type

[**CustomerSpecificSettingCollection**](CustomerSpecificSettingCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDocumentState**
> DocumentState getDocumentState(documentStateId, embed)

Retrieve a document state.

The state of a document can be NEW, WAITING_FOR_RELEASE, RELEASED or LOCKED. If the document is an numerical control (NC) program, it can also be in the CHECKED_OUT_FOR_PROCESSING state if it is currently being executed on a machine.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MasterDataApi();
var documentStateId = documentStateId_example; // String | UUID of a document state
var embed = []; // List<String> | Names of embeddable resources to be embedded

try {
    var result = api_instance.getDocumentState(documentStateId, embed);
    print(result);
} catch (e) {
    print("Exception when calling MasterDataApi->getDocumentState: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentStateId** | **String**| UUID of a document state | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 

### Return type

[**DocumentState**](DocumentState.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDocumentStates**
> DocumentStateCollection getDocumentStates(embed, limit, offset)

Retrieve the collection of document states.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MasterDataApi();
var embed = []; // List<String> | Names of embeddable resources to be embedded
var limit = 56; // int | Size of the requested page
var offset = 56; // int | Offset used for pagination

try {
    var result = api_instance.getDocumentStates(embed, limit, offset);
    print(result);
} catch (e) {
    print("Exception when calling MasterDataApi->getDocumentStates: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]

### Return type

[**DocumentStateCollection**](DocumentStateCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMachineState**
> StatusDefinition getMachineState(machineStateId, embed)

Get machine state

Get a machine state

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MasterDataApi();
var machineStateId = machineStateId_example; // String | UUID of a machine state
var embed = []; // List<String> | Names of embeddable resources to be embedded

try {
    var result = api_instance.getMachineState(machineStateId, embed);
    print(result);
} catch (e) {
    print("Exception when calling MasterDataApi->getMachineState: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **machineStateId** | **String**| UUID of a machine state | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 

### Return type

[**StatusDefinition**](StatusDefinition.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMachineStateDetail**
> MachineStateDetail getMachineStateDetail(machineStateDetailId, embed)

Retrieve machine state detail

Retrieve a certain machine state detail.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MasterDataApi();
var machineStateDetailId = machineStateDetailId_example; // String | UUID of the machine
var embed = []; // List<String> | Request embedded resources. 

try {
    var result = api_instance.getMachineStateDetail(machineStateDetailId, embed);
    print(result);
} catch (e) {
    print("Exception when calling MasterDataApi->getMachineStateDetail: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **machineStateDetailId** | **String**| UUID of the machine | 
 **embed** | [**List&lt;String&gt;**](String.md)| Request embedded resources.  | [optional] 

### Return type

[**MachineStateDetail**](MachineStateDetail.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMachineStateDetails**
> MachineStateDetailCollection getMachineStateDetails(customerCode, embed, limit, offset)

Retrieve machine state details

Request a collection of machine state details.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MasterDataApi();
var customerCode = customerCode_example; // String | The customer code
var embed = []; // List<String> | Request embedded resources. 
var limit = 56; // int | The limit used for pagination
var offset = 56; // int | The offset used for pagination

try {
    var result = api_instance.getMachineStateDetails(customerCode, embed, limit, offset);
    print(result);
} catch (e) {
    print("Exception when calling MasterDataApi->getMachineStateDetails: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerCode** | **String**| The customer code | [optional] 
 **embed** | [**List&lt;String&gt;**](String.md)| Request embedded resources.  | [optional] 
 **limit** | **int**| The limit used for pagination | [optional] [default to 100]
 **offset** | **int**| The offset used for pagination | [optional] [default to 0]

### Return type

[**MachineStateDetailCollection**](MachineStateDetailCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMachineStates**
> StatusDefinitionCollection getMachineStates(limit, offset)

Get all machine states

Get machine states

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MasterDataApi();
var limit = 56; // int | Size of the requested page
var offset = 56; // int | Offset used for pagination

try {
    var result = api_instance.getMachineStates(limit, offset);
    print(result);
} catch (e) {
    print("Exception when calling MasterDataApi->getMachineStates: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]

### Return type

[**StatusDefinitionCollection**](StatusDefinitionCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMasterData**
> MasterData getMasterData()

Retrieve the entry point of the master data.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MasterDataApi();

try {
    var result = api_instance.getMasterData();
    print(result);
} catch (e) {
    print("Exception when calling MasterDataApi->getMasterData: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MasterData**](MasterData.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOperatingState**
> OperatingState getOperatingState(operatingStateId, embed)

Retrieve an operating state.

Operating states can be arbitrarily defined in any production site and assigned to one or more of the following time bases: SCHEDULED_OPERATING_TIME, PRODUCTION, SETUP, MALFUNCTION and MAINTENANCE. The assignment of the operating states to these time bases determines the calculation of various key performance indicators.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MasterDataApi();
var operatingStateId = operatingStateId_example; // String | UUID of an operating state
var embed = []; // List<String> | Names of embeddable resources to be embedded

try {
    var result = api_instance.getOperatingState(operatingStateId, embed);
    print(result);
} catch (e) {
    print("Exception when calling MasterDataApi->getOperatingState: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **operatingStateId** | **String**| UUID of an operating state | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 

### Return type

[**OperatingState**](OperatingState.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOperatingStateClass**
> StatusDefinition getOperatingStateClass(operatingStateClassId, embed)

Retrieve an operating state class.

Operating state classes represent an arbitrary classification of operating states.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MasterDataApi();
var operatingStateClassId = operatingStateClassId_example; // String | UUID of an operating state class
var embed = []; // List<String> | Names of embeddable resources to be embedded

try {
    var result = api_instance.getOperatingStateClass(operatingStateClassId, embed);
    print(result);
} catch (e) {
    print("Exception when calling MasterDataApi->getOperatingStateClass: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **operatingStateClassId** | **String**| UUID of an operating state class | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 

### Return type

[**StatusDefinition**](StatusDefinition.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOperatingStateClasses**
> StatusDefinitionCollection getOperatingStateClasses(embed, limit, offset)

Retrieve the collection of operating state classes.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MasterDataApi();
var embed = []; // List<String> | Names of embeddable resources to be embedded
var limit = 56; // int | Size of the requested page
var offset = 56; // int | Offset used for pagination

try {
    var result = api_instance.getOperatingStateClasses(embed, limit, offset);
    print(result);
} catch (e) {
    print("Exception when calling MasterDataApi->getOperatingStateClasses: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]

### Return type

[**StatusDefinitionCollection**](StatusDefinitionCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOperatingStates**
> OperatingStateCollection getOperatingStates(embed, limit, offset, operatingStateClassId, timeBase, workplaceStateId)

Retrieve the collection of operating states.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MasterDataApi();
var embed = []; // List<String> | Names of embeddable resources to be embedded
var limit = 56; // int | Size of the requested page
var offset = 56; // int | Offset used for pagination
var operatingStateClassId = operatingStateClassId_example; // String | UUID of an operating state class
var timeBase = timeBase_example; // String | Time base to be filtered for
var workplaceStateId = workplaceStateId_example; // String | ID of a workplace state

try {
    var result = api_instance.getOperatingStates(embed, limit, offset, operatingStateClassId, timeBase, workplaceStateId);
    print(result);
} catch (e) {
    print("Exception when calling MasterDataApi->getOperatingStates: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]
 **operatingStateClassId** | **String**| UUID of an operating state class | [optional] 
 **timeBase** | **String**| Time base to be filtered for | [optional] 
 **workplaceStateId** | **String**| ID of a workplace state | [optional] 

### Return type

[**OperatingStateCollection**](OperatingStateCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOperationPhase**
> StatusDefinition getOperationPhase(operationPhaseId, embed)

Retrieve an operation phase.

An operation usually runs through the phases RELEASED, DISPATCHED, SETUP, PROCESSING, COMPLETED and CLOSED. In the meantime, an operation can also be INTERRUPTED once or several times. In individual cases, further phases may be defined for specific machines.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MasterDataApi();
var operationPhaseId = operationPhaseId_example; // String | UUID of an operation phase
var embed = []; // List<String> | Names of embeddable resources to be embedded

try {
    var result = api_instance.getOperationPhase(operationPhaseId, embed);
    print(result);
} catch (e) {
    print("Exception when calling MasterDataApi->getOperationPhase: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **operationPhaseId** | **String**| UUID of an operation phase | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 

### Return type

[**StatusDefinition**](StatusDefinition.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOperationPhases**
> StatusDefinitionCollection getOperationPhases(embed, limit, offset)

Retrieve the collection of operation phases.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MasterDataApi();
var embed = []; // List<String> | Names of embeddable resources to be embedded
var limit = 56; // int | Size of the requested page
var offset = 56; // int | Offset used for pagination

try {
    var result = api_instance.getOperationPhases(embed, limit, offset);
    print(result);
} catch (e) {
    print("Exception when calling MasterDataApi->getOperationPhases: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]

### Return type

[**StatusDefinitionCollection**](StatusDefinitionCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOperationProductionState**
> StatusDefinition getOperationProductionState(operationProductionStateId, embed)

Get machine state

Get a operation production state

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MasterDataApi();
var operationProductionStateId = operationProductionStateId_example; // String | UUID of a operation production state
var embed = []; // List<String> | Names of embeddable resources to be embedded

try {
    var result = api_instance.getOperationProductionState(operationProductionStateId, embed);
    print(result);
} catch (e) {
    print("Exception when calling MasterDataApi->getOperationProductionState: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **operationProductionStateId** | **String**| UUID of a operation production state | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 

### Return type

[**StatusDefinition**](StatusDefinition.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOperationProductionStateDetail**
> OperationProductionStateDetail getOperationProductionStateDetail(operationProductionStateDetailId, embed)

Retrieve operation production state detail

Retrieve a certain operation production state detail.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MasterDataApi();
var operationProductionStateDetailId = operationProductionStateDetailId_example; // String | UUID of the machine
var embed = []; // List<String> | Request embedded resources. 

try {
    var result = api_instance.getOperationProductionStateDetail(operationProductionStateDetailId, embed);
    print(result);
} catch (e) {
    print("Exception when calling MasterDataApi->getOperationProductionStateDetail: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **operationProductionStateDetailId** | **String**| UUID of the machine | 
 **embed** | [**List&lt;String&gt;**](String.md)| Request embedded resources.  | [optional] 

### Return type

[**OperationProductionStateDetail**](OperationProductionStateDetail.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOperationProductionStateDetails**
> OperationProductionStateDetailCollection getOperationProductionStateDetails(customerCode, embed, limit, offset)

Retrieve operation production state details

Request a collection of operation production state details.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MasterDataApi();
var customerCode = customerCode_example; // String | The customer code
var embed = []; // List<String> | Request embedded resources. 
var limit = 56; // int | The limit used for pagination
var offset = 56; // int | The offset used for pagination

try {
    var result = api_instance.getOperationProductionStateDetails(customerCode, embed, limit, offset);
    print(result);
} catch (e) {
    print("Exception when calling MasterDataApi->getOperationProductionStateDetails: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerCode** | **String**| The customer code | [optional] 
 **embed** | [**List&lt;String&gt;**](String.md)| Request embedded resources.  | [optional] 
 **limit** | **int**| The limit used for pagination | [optional] [default to 100]
 **offset** | **int**| The offset used for pagination | [optional] [default to 0]

### Return type

[**OperationProductionStateDetailCollection**](OperationProductionStateDetailCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOperationProductionStates**
> StatusDefinitionCollection getOperationProductionStates(limit, offset)

Get all operation production states

Get operation production states

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MasterDataApi();
var limit = 56; // int | Size of the requested page
var offset = 56; // int | Offset used for pagination

try {
    var result = api_instance.getOperationProductionStates(limit, offset);
    print(result);
} catch (e) {
    print("Exception when calling MasterDataApi->getOperationProductionStates: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]

### Return type

[**StatusDefinitionCollection**](StatusDefinitionCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQualityDetail**
> QualityDetail getQualityDetail(qualityDetailId, embed)

Retrieve a quality detail.

The quality details are used to describe the quality types YIELD, SCRAP and REWORK more precisely or to justify the assignment to one of these quality types.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MasterDataApi();
var qualityDetailId = qualityDetailId_example; // String | UUID of a quality detail
var embed = []; // List<String> | Names of embeddable resources to be embedded

try {
    var result = api_instance.getQualityDetail(qualityDetailId, embed);
    print(result);
} catch (e) {
    print("Exception when calling MasterDataApi->getQualityDetail: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **qualityDetailId** | **String**| UUID of a quality detail | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 

### Return type

[**QualityDetail**](QualityDetail.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQualityDetails**
> QualityDetailCollection getQualityDetails(code, embed, limit, offset, qualityTypeId)

Retrieve the collection of quality details.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MasterDataApi();
var code = code_example; // String | The code assigned to the quality detail
var embed = []; // List<String> | Names of embeddable resources to be embedded
var limit = 56; // int | Size of the requested page
var offset = 56; // int | Offset used for pagination
var qualityTypeId = qualityTypeId_example; // String | ID of the corresponding quality type

try {
    var result = api_instance.getQualityDetails(code, embed, limit, offset, qualityTypeId);
    print(result);
} catch (e) {
    print("Exception when calling MasterDataApi->getQualityDetails: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| The code assigned to the quality detail | [optional] 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]
 **qualityTypeId** | **String**| ID of the corresponding quality type | [optional] 

### Return type

[**QualityDetailCollection**](QualityDetailCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQualityType**
> QualityType getQualityType(qualityTypeId, embed)

Retrieve a quality type.

The quality type classifies the output quantity of a workplace into YIELD, SCRAP or REWORK. Among other things, this qualification is used to determine the quality rate.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MasterDataApi();
var qualityTypeId = qualityTypeId_example; // String | ID of a quality type
var embed = []; // List<String> | Names of embeddable resources to be embedded

try {
    var result = api_instance.getQualityType(qualityTypeId, embed);
    print(result);
} catch (e) {
    print("Exception when calling MasterDataApi->getQualityType: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **qualityTypeId** | **String**| ID of a quality type | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 

### Return type

[**QualityType**](QualityType.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQualityTypes**
> QualityTypes getQualityTypes(embed, limit, offset)

Retrieve the collection of quality types.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MasterDataApi();
var embed = []; // List<String> | Names of embeddable resources to be embedded
var limit = 56; // int | Size of the requested page
var offset = 56; // int | Offset used for pagination

try {
    var result = api_instance.getQualityTypes(embed, limit, offset);
    print(result);
} catch (e) {
    print("Exception when calling MasterDataApi->getQualityTypes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]

### Return type

[**QualityTypes**](QualityTypes.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getShiftState**
> StatusDefinition getShiftState(shiftStateId, embed)

Retrieve a shift state.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MasterDataApi();
var shiftStateId = shiftStateId_example; // String | UUID of a shift state
var embed = []; // List<String> | Names of embeddable resources to be embedded

try {
    var result = api_instance.getShiftState(shiftStateId, embed);
    print(result);
} catch (e) {
    print("Exception when calling MasterDataApi->getShiftState: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shiftStateId** | **String**| UUID of a shift state | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 

### Return type

[**StatusDefinition**](StatusDefinition.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getShiftStates**
> StatusDefinitionCollection getShiftStates(embed, limit, offset)

Retrieve the collection of shift states.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MasterDataApi();
var embed = []; // List<String> | Names of embeddable resources to be embedded
var limit = 56; // int | Size of the requested page
var offset = 56; // int | Offset used for pagination

try {
    var result = api_instance.getShiftStates(embed, limit, offset);
    print(result);
} catch (e) {
    print("Exception when calling MasterDataApi->getShiftStates: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]

### Return type

[**StatusDefinitionCollection**](StatusDefinitionCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getShiftType**
> ShiftType getShiftType(shiftTypeId, embed)

Retrieve a shift type.

There are usually different types of shifts, such as early shift, late shift, and night shift in a three-shift operation.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MasterDataApi();
var shiftTypeId = shiftTypeId_example; // String | UUID of a shift type
var embed = []; // List<String> | Names of embeddable resources to be embedded

try {
    var result = api_instance.getShiftType(shiftTypeId, embed);
    print(result);
} catch (e) {
    print("Exception when calling MasterDataApi->getShiftType: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shiftTypeId** | **String**| UUID of a shift type | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 

### Return type

[**ShiftType**](ShiftType.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getShiftTypes**
> ShiftTypeCollection getShiftTypes(embed, limit, offset)

Retrieve the collection of shift types.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MasterDataApi();
var embed = []; // List<String> | Names of embeddable resources to be embedded
var limit = 56; // int | Size of the requested page
var offset = 56; // int | Offset used for pagination

try {
    var result = api_instance.getShiftTypes(embed, limit, offset);
    print(result);
} catch (e) {
    print("Exception when calling MasterDataApi->getShiftTypes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]

### Return type

[**ShiftTypeCollection**](ShiftTypeCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTicketActivityState**
> TicketActivityState getTicketActivityState(ticketActivityStateId)

Retrieve a ticket state.

The ticket activity state.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MasterDataApi();
var ticketActivityStateId = ticketActivityStateId_example; // String | ID of a ticket activity state

try {
    var result = api_instance.getTicketActivityState(ticketActivityStateId);
    print(result);
} catch (e) {
    print("Exception when calling MasterDataApi->getTicketActivityState: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticketActivityStateId** | **String**| ID of a ticket activity state | 

### Return type

[**TicketActivityState**](TicketActivityState.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTicketActivityStates**
> TicketActivityStateCollectionWSModel getTicketActivityStates(limit, offset)

Retrieve the collection of ticket states.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MasterDataApi();
var limit = 56; // int | Size of the requested page
var offset = 56; // int | Offset used for pagination

try {
    var result = api_instance.getTicketActivityStates(limit, offset);
    print(result);
} catch (e) {
    print("Exception when calling MasterDataApi->getTicketActivityStates: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]

### Return type

[**TicketActivityStateCollectionWSModel**](TicketActivityStateCollectionWSModel.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTicketClass**
> TicketClass getTicketClass(ticketClassId, embed)

Retrieve a ticket class.

The ticket class.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MasterDataApi();
var ticketClassId = ticketClassId_example; // String | UUID of a ticket class
var embed = []; // List<String> | Names of embeddable resources to be embedded

try {
    var result = api_instance.getTicketClass(ticketClassId, embed);
    print(result);
} catch (e) {
    print("Exception when calling MasterDataApi->getTicketClass: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticketClassId** | **String**| UUID of a ticket class | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 

### Return type

[**TicketClass**](TicketClass.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTicketClasses**
> TicketClassCollectionWSModel getTicketClasses(embed, limit, offset)

Retrieve the collection of ticket classes.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MasterDataApi();
var embed = []; // List<String> | Names of embeddable resources to be embedded
var limit = 56; // int | Size of the requested page
var offset = 56; // int | Offset used for pagination

try {
    var result = api_instance.getTicketClasses(embed, limit, offset);
    print(result);
} catch (e) {
    print("Exception when calling MasterDataApi->getTicketClasses: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]

### Return type

[**TicketClassCollectionWSModel**](TicketClassCollectionWSModel.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTicketState**
> TicketState getTicketState(ticketStateId, embed)

Retrieve a ticket state.

The ticket state.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MasterDataApi();
var ticketStateId = ticketStateId_example; // String | ID of a ticket state
var embed = []; // List<String> | Names of embeddable resources to be embedded

try {
    var result = api_instance.getTicketState(ticketStateId, embed);
    print(result);
} catch (e) {
    print("Exception when calling MasterDataApi->getTicketState: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticketStateId** | **String**| ID of a ticket state | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 

### Return type

[**TicketState**](TicketState.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTicketStates**
> TicketStateCollectionWSModel getTicketStates(embed, limit, offset)

Retrieve the collection of ticket states.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MasterDataApi();
var embed = []; // List<String> | Names of embeddable resources to be embedded
var limit = 56; // int | Size of the requested page
var offset = 56; // int | Offset used for pagination

try {
    var result = api_instance.getTicketStates(embed, limit, offset);
    print(result);
} catch (e) {
    print("Exception when calling MasterDataApi->getTicketStates: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]

### Return type

[**TicketStateCollectionWSModel**](TicketStateCollectionWSModel.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getToolAssemblyOrderState**
> StatusDefinition getToolAssemblyOrderState(toolAssemblyOrderStateId, embed)

Retrieve a tool assembly order state.

The state of a tool assembly order can be INITIATED, ASSEMBLED, PRESET, RELEASED or COMPLETED.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MasterDataApi();
var toolAssemblyOrderStateId = toolAssemblyOrderStateId_example; // String | UUID of a tool assembly order state
var embed = []; // List<String> | Names of embeddable resources to be embedded

try {
    var result = api_instance.getToolAssemblyOrderState(toolAssemblyOrderStateId, embed);
    print(result);
} catch (e) {
    print("Exception when calling MasterDataApi->getToolAssemblyOrderState: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **toolAssemblyOrderStateId** | **String**| UUID of a tool assembly order state | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 

### Return type

[**StatusDefinition**](StatusDefinition.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getToolAssemblyOrderStates**
> StatusDefinitionCollection getToolAssemblyOrderStates(embed, limit, offset)

Retrieve the collection of tool assembly order states.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MasterDataApi();
var embed = []; // List<String> | Names of embeddable resources to be embedded
var limit = 56; // int | Size of the requested page
var offset = 56; // int | Offset used for pagination

try {
    var result = api_instance.getToolAssemblyOrderStates(embed, limit, offset);
    print(result);
} catch (e) {
    print("Exception when calling MasterDataApi->getToolAssemblyOrderStates: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]

### Return type

[**StatusDefinitionCollection**](StatusDefinitionCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWorkplaceState**
> StatusDefinition getWorkplaceState(workplaceStateId, embed)

Retrieve a workplace state.

The workplace state indicates whether a workplace is either in PRODUCTION or in DOWNTIME. The workplace state can thus be regarded as a dual classification of the much more detailed operating state of a workplace.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MasterDataApi();
var workplaceStateId = workplaceStateId_example; // String | UUID of a workplace state
var embed = []; // List<String> | Names of embeddable resources to be embedded

try {
    var result = api_instance.getWorkplaceState(workplaceStateId, embed);
    print(result);
} catch (e) {
    print("Exception when calling MasterDataApi->getWorkplaceState: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workplaceStateId** | **String**| UUID of a workplace state | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 

### Return type

[**StatusDefinition**](StatusDefinition.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWorkplaceStates**
> StatusDefinitionCollection getWorkplaceStates(embed, limit, offset)

Retrieve the collection of workplace states.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MasterDataApi();
var embed = []; // List<String> | Names of embeddable resources to be embedded
var limit = 56; // int | Size of the requested page
var offset = 56; // int | Offset used for pagination

try {
    var result = api_instance.getWorkplaceStates(embed, limit, offset);
    print(result);
} catch (e) {
    print("Exception when calling MasterDataApi->getWorkplaceStates: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]

### Return type

[**StatusDefinitionCollection**](StatusDefinitionCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

