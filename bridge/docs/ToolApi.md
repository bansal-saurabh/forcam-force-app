# swagger.api.ToolApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://forcebridgehackathon.force.eco:24443/ffwebservices/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTool**](ToolApi.md#createTool) | **POST** /tools | Create a tool.
[**createToolEdge**](ToolApi.md#createToolEdge) | **POST** /tools/{toolId}/edges | Create a new edge of a tool.
[**createToolOrder**](ToolApi.md#createToolOrder) | **POST** /tools/assemblyOrders | Create a tool assembly order.
[**deleteTool**](ToolApi.md#deleteTool) | **DELETE** /tools/{toolId} | Delete a tool.
[**getCharacteristics**](ToolApi.md#getCharacteristics) | **GET** /tools/{toolId}/characteristics | Retrieve the characteristics of a tool.
[**getEdgeCharacteristics**](ToolApi.md#getEdgeCharacteristics) | **GET** /tools/{toolId}/edges/{edgeId}/characteristics | Retrieve the characteristics of an edge.
[**getTool**](ToolApi.md#getTool) | **GET** /tools/{toolId} | Retrieve a tool.
[**getToolEdge**](ToolApi.md#getToolEdge) | **GET** /tools/{toolId}/edges/{edgeId} | Retrieve an individual edge of a tool.
[**getToolEdges**](ToolApi.md#getToolEdges) | **GET** /tools/{toolId}/edges | Retrieve the edges of a tool.
[**getToolOrder**](ToolApi.md#getToolOrder) | **GET** /tools/assemblyOrders/{toolAssemblyOrderId} | Retrieve an individual tool assembly order.
[**getToolOrders**](ToolApi.md#getToolOrders) | **GET** /tools/assemblyOrders | Retrieve all tool assembly orders.
[**getTools**](ToolApi.md#getTools) | **GET** /tools | Retrieve the collection of tools.
[**updateCharacteristics**](ToolApi.md#updateCharacteristics) | **PUT** /tools/{toolId}/characteristics | Update the characteristics of a tool.
[**updateEdgeCharacteristics**](ToolApi.md#updateEdgeCharacteristics) | **PUT** /tools/{toolId}/edges/{edgeId}/characteristics | Update the characteristics of an edge.
[**updateToolAssemblyOrderState**](ToolApi.md#updateToolAssemblyOrderState) | **POST** /tools/assemblyOrders/{toolAssemblyOrderId}/{toolAssemblyOrderStateId} | Change the state of a tool assembly order.
[**updateToolEdge**](ToolApi.md#updateToolEdge) | **PUT** /tools/{toolId}/edges/{edgeId} | Update an individual edge of a tool.
[**updateToolState**](ToolApi.md#updateToolState) | **POST** /tools/{toolId}/{toolStateId} | Change the state of a tool.

# **createTool**
> Tool createTool(body)

Create a tool.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ToolApi();
var body = new CreateToolProperties(); // CreateToolProperties | Tool properties, as JSON format, to be saved

try {
    var result = api_instance.createTool(body);
    print(result);
} catch (e) {
    print("Exception when calling ToolApi->createTool: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateToolProperties**](CreateToolProperties.md)| Tool properties, as JSON format, to be saved | [optional] 

### Return type

[**Tool**](Tool.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createToolEdge**
> ToolEdge createToolEdge(body, toolId)

Create a new edge of a tool.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ToolApi();
var body = new CreateToolEdgeProperties(); // CreateToolEdgeProperties | Tool Edge properties, as JSON format, to be saved
var toolId = toolId_example; // String | UUID of a tool

try {
    var result = api_instance.createToolEdge(body, toolId);
    print(result);
} catch (e) {
    print("Exception when calling ToolApi->createToolEdge: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateToolEdgeProperties**](CreateToolEdgeProperties.md)| Tool Edge properties, as JSON format, to be saved | 
 **toolId** | **String**| UUID of a tool | 

### Return type

[**ToolEdge**](ToolEdge.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createToolOrder**
> ToolAssemblyOrder createToolOrder(body)

Create a tool assembly order.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ToolApi();
var body = new CreateToolOrderProperties(); // CreateToolOrderProperties | Tool Assembly Order properties, as JSON format, to be saved

try {
    var result = api_instance.createToolOrder(body);
    print(result);
} catch (e) {
    print("Exception when calling ToolApi->createToolOrder: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateToolOrderProperties**](CreateToolOrderProperties.md)| Tool Assembly Order properties, as JSON format, to be saved | [optional] 

### Return type

[**ToolAssemblyOrder**](ToolAssemblyOrder.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTool**
> deleteTool(toolId)

Delete a tool.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ToolApi();
var toolId = toolId_example; // String | UUID of a tool

try {
    api_instance.deleteTool(toolId);
} catch (e) {
    print("Exception when calling ToolApi->deleteTool: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **toolId** | **String**| UUID of a tool | 

### Return type

void (empty response body)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCharacteristics**
> ToolCharacteristicCollection getCharacteristics(toolId, limit, offset)

Retrieve the characteristics of a tool.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ToolApi();
var toolId = toolId_example; // String | UUID of a tool
var limit = 56; // int | Size of the requested page
var offset = 56; // int | Offset used for pagination

try {
    var result = api_instance.getCharacteristics(toolId, limit, offset);
    print(result);
} catch (e) {
    print("Exception when calling ToolApi->getCharacteristics: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **toolId** | **String**| UUID of a tool | 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]

### Return type

[**ToolCharacteristicCollection**](ToolCharacteristicCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEdgeCharacteristics**
> ToolCharacteristicCollection getEdgeCharacteristics(edgeId, toolId, limit, offset)

Retrieve the characteristics of an edge.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ToolApi();
var edgeId = edgeId_example; // String | UUID of a tool edge
var toolId = toolId_example; // String | UUID of a tool
var limit = 56; // int | Size of the requested page
var offset = 56; // int | Offset used for pagination

try {
    var result = api_instance.getEdgeCharacteristics(edgeId, toolId, limit, offset);
    print(result);
} catch (e) {
    print("Exception when calling ToolApi->getEdgeCharacteristics: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edgeId** | **String**| UUID of a tool edge | 
 **toolId** | **String**| UUID of a tool | 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]

### Return type

[**ToolCharacteristicCollection**](ToolCharacteristicCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTool**
> Tool getTool(toolId, embed)

Retrieve a tool.

Information is returned for domain-specific identification of the tool and about its current state. There are up to three identifiers, the first of which is usually the tool number. Other identifiers can be tool type and tool class. Additional characteristics of the tool can be embedded (embed=characteristics).

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ToolApi();
var toolId = toolId_example; // String | UUID of a tool
var embed = []; // List<String> | Names of embeddable resources to be embedded

try {
    var result = api_instance.getTool(toolId, embed);
    print(result);
} catch (e) {
    print("Exception when calling ToolApi->getTool: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **toolId** | **String**| UUID of a tool | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 

### Return type

[**Tool**](Tool.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getToolEdge**
> ToolEdge getToolEdge(edgeId, toolId)

Retrieve an individual edge of a tool.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ToolApi();
var edgeId = edgeId_example; // String | UUID of a tool edge
var toolId = toolId_example; // String | UUID of a tool

try {
    var result = api_instance.getToolEdge(edgeId, toolId);
    print(result);
} catch (e) {
    print("Exception when calling ToolApi->getToolEdge: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edgeId** | **String**| UUID of a tool edge | 
 **toolId** | **String**| UUID of a tool | 

### Return type

[**ToolEdge**](ToolEdge.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getToolEdges**
> ToolCutEdgeCollectionWSModel getToolEdges(toolId, identifier, limit, offset)

Retrieve the edges of a tool.

Machine tools for metal-cutting production have one or more cutting edges. A list of these edges is returned.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ToolApi();
var toolId = toolId_example; // String | UUID of a tool
var identifier = identifier_example; // String | A domain specific identifier of the edge in practice
var limit = 56; // int | Size of the requested page
var offset = 56; // int | Offset used for pagination

try {
    var result = api_instance.getToolEdges(toolId, identifier, limit, offset);
    print(result);
} catch (e) {
    print("Exception when calling ToolApi->getToolEdges: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **toolId** | **String**| UUID of a tool | 
 **identifier** | **String**| A domain specific identifier of the edge in practice | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]

### Return type

[**ToolCutEdgeCollectionWSModel**](ToolCutEdgeCollectionWSModel.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getToolOrder**
> ToolAssemblyOrder getToolOrder(toolAssemblyOrderId, embed)

Retrieve an individual tool assembly order.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ToolApi();
var toolAssemblyOrderId = toolAssemblyOrderId_example; // String | UUID of a tool assembly order
var embed = []; // List<String> | Names of embeddable resources to be embedded

try {
    var result = api_instance.getToolOrder(toolAssemblyOrderId, embed);
    print(result);
} catch (e) {
    print("Exception when calling ToolApi->getToolOrder: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **toolAssemblyOrderId** | **String**| UUID of a tool assembly order | 
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 

### Return type

[**ToolAssemblyOrder**](ToolAssemblyOrder.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getToolOrders**
> ToolOrderCollectionWSModel getToolOrders(embed, limit, offset, operationId)

Retrieve all tool assembly orders.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ToolApi();
var embed = []; // List<String> | Names of embeddable resources to be embedded
var limit = 56; // int | Size of the requested page
var offset = 56; // int | Offset used for pagination
var operationId = operationId_example; // String | UUID of a corresponding operation that has triggered the tool assembly order

try {
    var result = api_instance.getToolOrders(embed, limit, offset, operationId);
    print(result);
} catch (e) {
    print("Exception when calling ToolApi->getToolOrders: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]
 **operationId** | **String**| UUID of a corresponding operation that has triggered the tool assembly order | [optional] 

### Return type

[**ToolOrderCollectionWSModel**](ToolOrderCollectionWSModel.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTools**
> ToolCollection getTools(embed, identifier, identifier2, identifier3, limit, offset)

Retrieve the collection of tools.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ToolApi();
var embed = []; // List<String> | Names of embeddable resources to be embedded
var identifier = identifier_example; // String | A domain specific identifier of the tool in practice, which is usually the tool number
var identifier2 = identifier2_example; // String | An additional identifier of the tool in operational practice
var identifier3 = identifier3_example; // String | An additional identifier of the tool in operational practice
var limit = 56; // int | Size of the requested page
var offset = 56; // int | Offset used for pagination

try {
    var result = api_instance.getTools(embed, identifier, identifier2, identifier3, limit, offset);
    print(result);
} catch (e) {
    print("Exception when calling ToolApi->getTools: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **embed** | [**List&lt;String&gt;**](String.md)| Names of embeddable resources to be embedded | [optional] 
 **identifier** | **String**| A domain specific identifier of the tool in practice, which is usually the tool number | [optional] 
 **identifier2** | **String**| An additional identifier of the tool in operational practice | [optional] 
 **identifier3** | **String**| An additional identifier of the tool in operational practice | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]

### Return type

[**ToolCollection**](ToolCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCharacteristics**
> ToolCharacteristicCollection updateCharacteristics(toolId, body)

Update the characteristics of a tool.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ToolApi();
var toolId = toolId_example; // String | UUID of a tool
var body = [new List&lt;CharacteristicGeneralDefinition&gt;()]; // List<CharacteristicGeneralDefinition> | Tool characteristic properties, as JSON format, to be updated

try {
    var result = api_instance.updateCharacteristics(toolId, body);
    print(result);
} catch (e) {
    print("Exception when calling ToolApi->updateCharacteristics: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **toolId** | **String**| UUID of a tool | 
 **body** | [**List&lt;CharacteristicGeneralDefinition&gt;**](CharacteristicGeneralDefinition.md)| Tool characteristic properties, as JSON format, to be updated | [optional] 

### Return type

[**ToolCharacteristicCollection**](ToolCharacteristicCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateEdgeCharacteristics**
> ToolCharacteristicCollection updateEdgeCharacteristics(edgeId, toolId, body)

Update the characteristics of an edge.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ToolApi();
var edgeId = edgeId_example; // String | UUID of a tool edge
var toolId = toolId_example; // String | UUID of a tool
var body = [new List&lt;CharacteristicGeneralDefinition&gt;()]; // List<CharacteristicGeneralDefinition> | Tool edge characteristic properties, as JSON format, to be updated

try {
    var result = api_instance.updateEdgeCharacteristics(edgeId, toolId, body);
    print(result);
} catch (e) {
    print("Exception when calling ToolApi->updateEdgeCharacteristics: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edgeId** | **String**| UUID of a tool edge | 
 **toolId** | **String**| UUID of a tool | 
 **body** | [**List&lt;CharacteristicGeneralDefinition&gt;**](CharacteristicGeneralDefinition.md)| Tool edge characteristic properties, as JSON format, to be updated | [optional] 

### Return type

[**ToolCharacteristicCollection**](ToolCharacteristicCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateToolAssemblyOrderState**
> ToolAssemblyOrder updateToolAssemblyOrderState(toolAssemblyOrderId, toolAssemblyOrderStateId)

Change the state of a tool assembly order.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ToolApi();
var toolAssemblyOrderId = toolAssemblyOrderId_example; // String | UUID of a tool assembly order
var toolAssemblyOrderStateId = toolAssemblyOrderStateId_example; // String | ID of the tool assembly order state to change to

try {
    var result = api_instance.updateToolAssemblyOrderState(toolAssemblyOrderId, toolAssemblyOrderStateId);
    print(result);
} catch (e) {
    print("Exception when calling ToolApi->updateToolAssemblyOrderState: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **toolAssemblyOrderId** | **String**| UUID of a tool assembly order | 
 **toolAssemblyOrderStateId** | **String**| ID of the tool assembly order state to change to | 

### Return type

[**ToolAssemblyOrder**](ToolAssemblyOrder.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateToolEdge**
> ToolEdge updateToolEdge(body, edgeId, toolId)

Update an individual edge of a tool.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ToolApi();
var body = new ToolEdgeProperties(); // ToolEdgeProperties | Tool Edge properties, as JSON format, to be updated
var edgeId = edgeId_example; // String | UUID of a tool edge
var toolId = toolId_example; // String | UUID of a tool

try {
    var result = api_instance.updateToolEdge(body, edgeId, toolId);
    print(result);
} catch (e) {
    print("Exception when calling ToolApi->updateToolEdge: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ToolEdgeProperties**](ToolEdgeProperties.md)| Tool Edge properties, as JSON format, to be updated | 
 **edgeId** | **String**| UUID of a tool edge | 
 **toolId** | **String**| UUID of a tool | 

### Return type

[**ToolEdge**](ToolEdge.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateToolState**
> Tool updateToolState(toolId, toolStateId)

Change the state of a tool.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new ToolApi();
var toolId = toolId_example; // String | UUID of a tool
var toolStateId = toolStateId_example; // String | ID of a tool state

try {
    var result = api_instance.updateToolState(toolId, toolStateId);
    print(result);
} catch (e) {
    print("Exception when calling ToolApi->updateToolState: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **toolId** | **String**| UUID of a tool | 
 **toolStateId** | **String**| ID of a tool state | 

### Return type

[**Tool**](Tool.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

