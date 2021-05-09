# swagger.model.ProductionOrderProperties

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | UUID of the production order | [default to null]
**number** | **String** | The production order number (most likely overtaken from ERP) the operation belongs to | [default to null]
**split** | **String** | The production order split | [optional] [default to null]
**description** | **String** | A description of the order | [optional] [default to null]
**material** | [**CreateMaterialProperties**](CreateMaterialProperties.md) |  | [optional] [default to null]
**erpContextId** | **String** | UUID of the ERP context in which the combination of an order number and order split is a unique identifier for a production order. In SAP ERP, for example, this context is defined by the client. Further context information is the company code and the plant | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

