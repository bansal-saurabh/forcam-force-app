# swagger.model.ProductionOrderOperation

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | UUID of the operation | [default to null]
**number** | **String** | The operation number within the ERP system | [default to null]
**split** | **String** | Number of the operation split | [optional] [default to null]
**sequenceNumber** | **String** | The operation sequence number within the ERP system | [optional] [default to null]
**description** | **String** | A description of the operation | [optional] [default to null]
**material** | [**MaterialProperties**](MaterialProperties.md) |  | [default to null]
**erpContextId** | **String** | UUID of the ERP context in which the workplace number is a unique identifier for a workplace or a workplace group. In SAP ERP, for example, this context is defined by the client, the company code, and the plant | [default to null]
**productionOrder** | [**ProductionOrderGeneralDefinition**](ProductionOrderGeneralDefinition.md) |  | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

