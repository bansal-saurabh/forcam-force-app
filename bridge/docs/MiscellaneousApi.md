# swagger.api.MiscellaneousApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://forcebridgehackathon.force.eco:24443/ffwebservices/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getErpContext**](MiscellaneousApi.md#getErpContext) | **GET** /erpContexts/{erpContextId} | Retrieve an ERP context.
[**getErpContexts**](MiscellaneousApi.md#getErpContexts) | **GET** /erpContexts | Retrieve the collection of ERP contexts.
[**getLiteral**](MiscellaneousApi.md#getLiteral) | **GET** /literals/{literalId} | Retrieve a literal.
[**getLiterals**](MiscellaneousApi.md#getLiterals) | **GET** /literals | Retrieve the collection of literals.
[**getMaterial**](MiscellaneousApi.md#getMaterial) | **GET** /materials/{materialId} | Request material details
[**getMaterials**](MiscellaneousApi.md#getMaterials) | **GET** /materials | Request materials

# **getErpContext**
> ErpContext getErpContext(erpContextId)

Retrieve an ERP context.

By assigning a Universally Unique Identifier (UUID) to each entity in an IoT platform, all operations, production orders and workplaces can be uniquely identified in a technical manner. In contrast, a domain-oriented identification of the different entities can be very complicated. Even the order number or the combination of order number and order split is by no means unique. Not only can different production orders have the same number in two different ERP systems, but the same order number can also refer to different production orders in different contexts within an ERP system. As an additional specification for an order number or workplace number, the ERP context describes the context in an ERP system within which this is unique.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MiscellaneousApi();
var erpContextId = erpContextId_example; // String | UUID of an ERP context

try {
    var result = api_instance.getErpContext(erpContextId);
    print(result);
} catch (e) {
    print("Exception when calling MiscellaneousApi->getErpContext: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **erpContextId** | **String**| UUID of an ERP context | 

### Return type

[**ErpContext**](ErpContext.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getErpContexts**
> ErpContextCollection getErpContexts(erpSystem, identifier1, identifier2, identifier3, limit, offset, type)

Retrieve the collection of ERP contexts.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MiscellaneousApi();
var erpSystem = erpSystem_example; // String | Identifier for a specific ERP system 
var identifier1 = identifier1_example; // String | Identifier for a specific company code in an ERP system
var identifier2 = identifier2_example; // String | Identifier for a specific client code in an ERP system
var identifier3 = identifier3_example; // String | Identifier for a specific plant in an ERP system
var limit = 56; // int | Size of the requested page
var offset = 56; // int | Offset used for pagination
var type = type_example; // String | ERP context type

try {
    var result = api_instance.getErpContexts(erpSystem, identifier1, identifier2, identifier3, limit, offset, type);
    print(result);
} catch (e) {
    print("Exception when calling MiscellaneousApi->getErpContexts: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **erpSystem** | **String**| Identifier for a specific ERP system  | [optional] 
 **identifier1** | **String**| Identifier for a specific company code in an ERP system | [optional] 
 **identifier2** | **String**| Identifier for a specific client code in an ERP system | [optional] 
 **identifier3** | **String**| Identifier for a specific plant in an ERP system | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]
 **type** | **String**| ERP context type | [optional] 

### Return type

[**ErpContextCollection**](ErpContextCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLiteral**
> Literal getLiteral(literalId)

Retrieve a literal.

A list of translations of the literal is returned in all available languages.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MiscellaneousApi();
var literalId = literalId_example; // String | UUID of a literal

try {
    var result = api_instance.getLiteral(literalId);
    print(result);
} catch (e) {
    print("Exception when calling MiscellaneousApi->getLiteral: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **literalId** | **String**| UUID of a literal | 

### Return type

[**Literal**](Literal.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLiterals**
> LiteralCollection getLiterals(identifier1, identifier2, identifier3, limit, offset, type)

Retrieve the collection of literals.

The collection of literals used to describe entities of the IoT platform is returned in all available languages.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MiscellaneousApi();
var identifier1 = identifier1_example; // String | The first literal identifier
var identifier2 = identifier2_example; // String | The second literal identifier
var identifier3 = identifier3_example; // String | The third literal identifier
var limit = 56; // int | Size of the requested page
var offset = 56; // int | Offset used for pagination
var type = type_example; // String | The literal type

try {
    var result = api_instance.getLiterals(identifier1, identifier2, identifier3, limit, offset, type);
    print(result);
} catch (e) {
    print("Exception when calling MiscellaneousApi->getLiterals: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier1** | **String**| The first literal identifier | [optional] 
 **identifier2** | **String**| The second literal identifier | [optional] 
 **identifier3** | **String**| The third literal identifier | [optional] 
 **limit** | **int**| Size of the requested page | [optional] [default to 100]
 **offset** | **int**| Offset used for pagination | [optional] [default to 0]
 **type** | **String**| The literal type | [optional] 

### Return type

[**LiteralCollection**](LiteralCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMaterial**
> Material getMaterial(materialId, embed)

Request material details

Request details for a certain material.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MiscellaneousApi();
var materialId = materialId_example; // String | UUID of the material
var embed = []; // List<String> | Request embedded resources. 

try {
    var result = api_instance.getMaterial(materialId, embed);
    print(result);
} catch (e) {
    print("Exception when calling MiscellaneousApi->getMaterial: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **materialId** | **String**| UUID of the material | 
 **embed** | [**List&lt;String&gt;**](String.md)| Request embedded resources.  | [optional] 

### Return type

[**Material**](Material.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMaterials**
> MaterialCollection getMaterials(embed, limit, number, offset)

Request materials

Request a collection of cached materials.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: oauth2schema
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MiscellaneousApi();
var embed = []; // List<String> | Request embedded resources. 
var limit = 56; // int | The limit used for pagination
var number = number_example; // String | The material number
var offset = 56; // int | The offset used for pagination

try {
    var result = api_instance.getMaterials(embed, limit, number, offset);
    print(result);
} catch (e) {
    print("Exception when calling MiscellaneousApi->getMaterials: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **embed** | [**List&lt;String&gt;**](String.md)| Request embedded resources.  | [optional] 
 **limit** | **int**| The limit used for pagination | [optional] [default to 100]
 **number** | **String**| The material number | [optional] 
 **offset** | **int**| The offset used for pagination | [optional] [default to 0]

### Return type

[**MaterialCollection**](MaterialCollection.md)

### Authorization

[oauth2schema](../README.md#oauth2schema)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json;charset=UTF-8, application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

