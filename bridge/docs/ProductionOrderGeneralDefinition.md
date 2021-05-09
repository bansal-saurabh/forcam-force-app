# swagger.model.ProductionOrderGeneralDefinition

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | UUID of the production order | [default to null]
**number** | **String** | The order number | [default to null]
**split** | **String** | The order split | [optional] [default to null]
**description** | **String** | A description of the order | [optional] [default to null]
**material** | [**MaterialProperties**](MaterialProperties.md) |  | [optional] [default to null]
**erpContextId** | **String** | UUID of the ERP context in which the workplace number is a unique identifier for a workplace or a workplace group. In SAP ERP, for example, this context is defined by the client, the company code, and the plant | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

