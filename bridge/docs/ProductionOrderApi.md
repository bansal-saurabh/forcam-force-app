# swagger.api.ProductionOrderApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://forcebridgehackathon.force.eco:24443/ffwebservices/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getOperationSequence**](ProductionOrderApi.md#getOperationSequence) | **GET** /productionOrders/{productionOrderId}/operationSequence | Retrieve the operation sequence of an individual production order.
[**getProductionOrder**](ProductionOrderApi.md#getProductionOrder) | **GET** /productionOrders/{productionOrderId} | Retrieve a production order.
[**getProductionOrderSchedulingResults**](ProductionOrderApi.md#getProductionOrderSchedulingResults) | **GET** /productionOrders/{productionOrderId}/scheduledDates | Retrieve the scheduled dates of a production order and its operations.
[**getProductionOrderSpecification**](ProductionOrderApi.md#getProductionOrderSpecification) | **GET** /productionOrders/{productionOrderId}/specification | Retrieve properties of the production order.
[**getProductionOrders**](ProductionOrderApi.md#getProductionOrders) | **GET** /productionOrders | Retrieve the collection of production orders.
[**searchProductionOrders**](ProductionOrderApi.md#searchProductionOrders) | **POST** /productionOrders/search | Retrieve the collection of production orders.
[**updateProductionOrderSchedulingResults**](ProductionOrderApi.md#updateProductionOrderSchedulingResults) | **PUT** /productionOrders/{productionOrderId}/scheduledDates | Update the scheduled dates of a production order and its operations.

# **getOperationSequence**
> ProductionOrderOperationSequenceCollection getOperationSequence(productionOrderId, isDispatched, isPlannable, limit, materialNumber, offset, operationNumber, operationPhaseId, operationSplit, workplaceNumber)

Retrieve the operation sequence of an individual production order.

Retrieve the predecessor/successor relationships that exist between the individual operations of a production order or in order networks. In addition, intermediate times (move time and wait time) are specified and, in the case of parallel processing (flow or line production), the minimum offset time that is the product of the minimum send ahead quantity and the target time per unit in msec. If a minimum offset time is specified, the successor operation can already be started during the processing phase of the predecessor, at the earliest, however, after the minimum offset time from the start of the processing phase of the predecessor.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ProductionOrderApi();
var productionOrderId = productionOrderId_example; // String | UUID of a production order
var isDispatched = true; // bool | If set to true, only dispatched operations are returned
var isPlannable = true; // bool |  If set to true, only plannable operations are returned
var limit = 56; // int | Size of the requested page
var materialNumber = materialNumber_example; // String | Number of an material produced by the production order
var offset = 56; // int | Offset used for pagination
var operationNumber = operationNumber_example; // String | Number of an operation
var operationPhaseId = operationPhaseId_example; // String | ID of an operation phase according to which the operations are to be filtered
var operationSplit = operationSplit_example; // String | Number of an operation split
var workplaceNumber = workplaceNumber_example; // String | Number of a workplace

try {
    var result = api_instance.getOperationSequence(productionOrderId, isDispatched, isPlannable, limit, materialNumber, offset, operationNumber, operationPhaseId, operationSplit, workplaceNumber);
    print(result);
} catch (e) {
    print("Exception when calling ProductionOrderApi->getOperationSequence: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productionOrderId** | **String**| UUID of a production order | 
 **isDispatched** | **bool**| If set to true, only dispatched operations are returned | [optional] 
 **isPlannable** | **bool**|  If set to true, only plannable operations are returned | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **materialNumber** | **String**| Number of an material produced by the production order | [optional] 
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]
 **operationNumber** | **String**| Number of an operation | [optional] 
 **operationPhaseId** | **String**| ID of an operation phase according to which the operations are to be filtered | [optional] 
 **operationSplit** | **String**| Number of an operation split | [optional] 
 **workplaceNumber** | **String**| Number of a workplace | [optional] 

### Return type

[**ProductionOrderOperationSequenceCollection**](ProductionOrderOperationSequenceCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProductionOrder**
> ProductionOrder getProductionOrder(productionOrderId, embed)

Retrieve a production order.

Information is returned for domain-specific identification of the production order.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ProductionOrderApi();
var productionOrderId = productionOrderId_example; // String | UUID of a production order
var embed = []; // List<String> | Names of embeddable resources to be embedded

try {
    var result = api_instance.getProductionOrder(productionOrderId, embed);
    print(result);
} catch (e) {
    print("Exception when calling ProductionOrderApi->getProductionOrder: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productionOrderId** | **String**| UUID of a production order | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 

### Return type

[**ProductionOrder**](ProductionOrder.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProductionOrderSchedulingResults**
> ProductionOrderSchedulingResultCollection getProductionOrderSchedulingResults(productionOrderId, limit, offset)

Retrieve the scheduled dates of a production order and its operations.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ProductionOrderApi();
var productionOrderId = productionOrderId_example; // String | UUID of a production order
var limit = 56; // int | range[1, 100]
var offset = 56; // int | Offset used for pagination

try {
    var result = api_instance.getProductionOrderSchedulingResults(productionOrderId, limit, offset);
    print(result);
} catch (e) {
    print("Exception when calling ProductionOrderApi->getProductionOrderSchedulingResults: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productionOrderId** | **String**| UUID of a production order | 
 **limit** | **int**| range[1, 100] | [optional] [default to 100]
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]

### Return type

[**ProductionOrderSchedulingResultCollection**](ProductionOrderSchedulingResultCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProductionOrderSpecification**
> ProductionOrderSpecification getProductionOrderSpecification(productionOrderId, embed)

Retrieve properties of the production order.

Retrieve properties of the production order, such as the quantities to be produced, the basic start and end date of a production order and its priority.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ProductionOrderApi();
var productionOrderId = productionOrderId_example; // String | UUID of a production order
var embed = []; // List<String> | Names of embeddable resources to be embedded

try {
    var result = api_instance.getProductionOrderSpecification(productionOrderId, embed);
    print(result);
} catch (e) {
    print("Exception when calling ProductionOrderApi->getProductionOrderSpecification: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productionOrderId** | **String**| UUID of a production order | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 

### Return type

[**ProductionOrderSpecification**](ProductionOrderSpecification.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProductionOrders**
> ProductionOrderCollection getProductionOrders(embed, endDate, erpContextId, limit, materialNumber, paginationDirection, paginationIdentifier, paginationTimestamp, productionOrderNumber, productionOrderSplit, startDate)

Retrieve the collection of production orders.

A filtered collection of production orders is returned. Call parameters allow filtering, for example, according to the material produced or according to production orders that are executed within a certain period of time.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ProductionOrderApi();
var embed = []; // List<String> | Names of embeddable resources to be embedded
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | Production orders with a later start timestamp are excluded
var erpContextId = erpContextId_example; // String | UUID of an ERP context in which the combination of an order number and order split number is a unique identifier for a production order
var limit = 56; // int | Size of the requested page
var materialNumber = materialNumber_example; // String | Number of the material produced by a production order
var paginationDirection = paginationDirection_example; // String | Direction on how to navigate through the response pages
var paginationIdentifier = paginationIdentifier_example; // String | A response is split into pages (pagination) if the number of requested elements exceeds the defined limit. In cases where the timestamp is not unique but used more than once, a unique identifier is associated to each page of a paginated response. These can then be used to retrieve a specific page.
var paginationTimestamp = 2013-10-20T19:20:30+01:00; // DateTime | Timestamp used for pagination
var productionOrderNumber = productionOrderNumber_example; // String | Number of a production order
var productionOrderSplit = productionOrderSplit_example; // String | Number of a production order split
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | Production orders with an earlier end timestamp are excluded

try {
    var result = api_instance.getProductionOrders(embed, endDate, erpContextId, limit, materialNumber, paginationDirection, paginationIdentifier, paginationTimestamp, productionOrderNumber, productionOrderSplit, startDate);
    print(result);
} catch (e) {
    print("Exception when calling ProductionOrderApi->getProductionOrders: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 
 **endDate** | **DateTime**| Production orders with a later start timestamp are excluded | [optional] 
 **erpContextId** | **String**| UUID of an ERP context in which the combination of an order number and order split number is a unique identifier for a production order | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **materialNumber** | **String**| Number of the material produced by a production order | [optional] 
 **paginationDirection** | **String**| Direction on how to navigate through the response pages | [optional] [default to NEXT]
 **paginationIdentifier** | **String**| A response is split into pages (pagination) if the number of requested elements exceeds the defined limit. In cases where the timestamp is not unique but used more than once, a unique identifier is associated to each page of a paginated response. These can then be used to retrieve a specific page. | [optional] 
 **paginationTimestamp** | **DateTime**| Timestamp used for pagination | [optional] 
 **productionOrderNumber** | **String**| Number of a production order | [optional] 
 **productionOrderSplit** | **String**| Number of a production order split | [optional] 
 **startDate** | **DateTime**| Production orders with an earlier end timestamp are excluded | [optional] 

### Return type

[**ProductionOrderCollection**](ProductionOrderCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchProductionOrders**
> ProductionOrderCollection searchProductionOrders(body, embed, limit, paginationDirection, paginationIdentifier, paginationTimestamp)

Retrieve the collection of production orders.

A filtered collection of production orders is returned. Call parameters allow filtering, for example, according to the material produced or according to production orders that are executed within a certain period of time. In contrast to the GET method, the POST method allows the transfer of filter combinations of any length.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ProductionOrderApi();
var body = new SearchProductionOrders(); // SearchProductionOrders | Production order properties, as JSON format, to be filtered for
var embed = []; // List<String> | Names of embeddable resources to be embedded
var limit = 56; // int | Size of the requested page
var paginationDirection = paginationDirection_example; // String | Direction on how to navigate through the response pages
var paginationIdentifier = paginationIdentifier_example; // String | A response is split into pages (pagination) if the number of requested elements exceeds the defined limit. In cases where the timestamp is not unique but used more than once, a unique identifier is associated to each page of a paginated response. These can then be used to retrieve a specific page.
var paginationTimestamp = 2013-10-20T19:20:30+01:00; // DateTime | Timestamp used for pagination

try {
    var result = api_instance.searchProductionOrders(body, embed, limit, paginationDirection, paginationIdentifier, paginationTimestamp);
    print(result);
} catch (e) {
    print("Exception when calling ProductionOrderApi->searchProductionOrders: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SearchProductionOrders**](SearchProductionOrders.md)| Production order properties, as JSON format, to be filtered for | [optional] 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **paginationDirection** | **String**| Direction on how to navigate through the response pages | [optional] [default to NEXT]
 **paginationIdentifier** | **String**| A response is split into pages (pagination) if the number of requested elements exceeds the defined limit. In cases where the timestamp is not unique but used more than once, a unique identifier is associated to each page of a paginated response. These can then be used to retrieve a specific page. | [optional] 
 **paginationTimestamp** | **DateTime**| Timestamp used for pagination | [optional] 

### Return type

[**ProductionOrderCollection**](ProductionOrderCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProductionOrderSchedulingResults**
> ProductionOrderSchedulingResultCollection updateProductionOrderSchedulingResults(body, productionOrderId)

Update the scheduled dates of a production order and its operations.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ProductionOrderApi();
var body = new ProductionOrderSchedulingResultPropertiesWSModel(); // ProductionOrderSchedulingResultPropertiesWSModel | Scheduled date properties, as JSON format, to be updated
var productionOrderId = productionOrderId_example; // String | UUID of a production order

try {
    var result = api_instance.updateProductionOrderSchedulingResults(body, productionOrderId);
    print(result);
} catch (e) {
    print("Exception when calling ProductionOrderApi->updateProductionOrderSchedulingResults: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ProductionOrderSchedulingResultPropertiesWSModel**](ProductionOrderSchedulingResultPropertiesWSModel.md)| Scheduled date properties, as JSON format, to be updated | 
 **productionOrderId** | **String**| UUID of a production order | 

### Return type

[**ProductionOrderSchedulingResultCollection**](ProductionOrderSchedulingResultCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

