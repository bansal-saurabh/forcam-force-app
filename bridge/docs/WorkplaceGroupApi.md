# swagger.api.WorkplaceGroupApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://forcebridgehackathon.force.eco:24443/ffwebservices/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAssignedWorkplaces**](WorkplaceGroupApi.md#getAssignedWorkplaces) | **GET** /workplaceGroups/{workplaceGroupId}/assignedWorkplaces | Retrieve the assigned workplaces of an individual workplace group.
[**getWorkplaceGroup**](WorkplaceGroupApi.md#getWorkplaceGroup) | **GET** /workplaceGroups/{workplaceGroupId} | Retrieve a workplace group.
[**getWorkplaceGroups**](WorkplaceGroupApi.md#getWorkplaceGroups) | **GET** /workplaceGroups | Retrieve the collection of workplace groups.

# **getAssignedWorkplaces**
> WorkplaceCollection getAssignedWorkplaces(workplaceGroupId, limit, offset)

Retrieve the assigned workplaces of an individual workplace group.

Retrieve a collection of workplaces assigned to the workplace group.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new WorkplaceGroupApi();
var workplaceGroupId = workplaceGroupId_example; // String | UUID of a workplace group
var limit = 56; // int | Size of the requested page
var offset = 56; // int | Offset used for pagination

try {
    var result = api_instance.getAssignedWorkplaces(workplaceGroupId, limit, offset);
    print(result);
} catch (e) {
    print("Exception when calling WorkplaceGroupApi->getAssignedWorkplaces: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workplaceGroupId** | **String**| UUID of a workplace group | 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]

### Return type

[**WorkplaceCollection**](WorkplaceCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWorkplaceGroup**
> WorkplaceGroup getWorkplaceGroup(workplaceGroupId, embed)

Retrieve a workplace group.

Information is returned for domain-specific identification of the workplace group.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new WorkplaceGroupApi();
var workplaceGroupId = workplaceGroupId_example; // String | UUID of a workplace group
var embed = []; // List<String> | Names of embeddable resources to be embedded

try {
    var result = api_instance.getWorkplaceGroup(workplaceGroupId, embed);
    print(result);
} catch (e) {
    print("Exception when calling WorkplaceGroupApi->getWorkplaceGroup: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workplaceGroupId** | **String**| UUID of a workplace group | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 

### Return type

[**WorkplaceGroup**](WorkplaceGroup.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWorkplaceGroups**
> WorkplaceGroupCollection getWorkplaceGroups(embed, erpContextId, limit, offset, type, workplaceGroupNumber)

Retrieve the collection of workplace groups.

A filtered collection of workplaces is returned. Call parameters allow filtering according to the workplace group number or the type of workplace group, which can be either a capacity group or a production line. A capacity group is the grouping of functionally identical workplaces. Because these often belong to the same cost center, they are usually mapped as a single work center in an ERP system. Production lines are functionally different workplaces whose spatial sequence enables flow production or line production. They, too, are usually mapped in an ERP system as a single work center.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new WorkplaceGroupApi();
var embed = []; // List<String> | Names of embeddable resources to be embedded
var erpContextId = erpContextId_example; // String | Universally unique identifier of the ERP context in which the workplace number is a unique identifier for a workplace or a workplace group. In SAP ERP, for example, this context is defined by the client, the company code, and the plant
var limit = 56; // int | Size of the requested page
var offset = 56; // int | Offset used for pagination
var type = type_example; // String | Type of a workplace group, which is either 'CAPACITY_GROUP' or 'PRODUCTION_LINE'
var workplaceGroupNumber = workplaceGroupNumber_example; // String | Number of a workplace group

try {
    var result = api_instance.getWorkplaceGroups(embed, erpContextId, limit, offset, type, workplaceGroupNumber);
    print(result);
} catch (e) {
    print("Exception when calling WorkplaceGroupApi->getWorkplaceGroups: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 
 **erpContextId** | **String**| Universally unique identifier of the ERP context in which the workplace number is a unique identifier for a workplace or a workplace group. In SAP ERP, for example, this context is defined by the client, the company code, and the plant | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]
 **type** | **String**| Type of a workplace group, which is either &#x27;CAPACITY_GROUP&#x27; or &#x27;PRODUCTION_LINE&#x27; | [optional] 
 **workplaceGroupNumber** | **String**| Number of a workplace group | [optional] 

### Return type

[**WorkplaceGroupCollection**](WorkplaceGroupCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

