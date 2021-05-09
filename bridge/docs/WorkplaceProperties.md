# swagger.model.WorkplaceProperties

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | UUID of the workplace  | [default to null]
**number** | **String** | The workplace number which is unique in its ERP context | [optional] [default to null]
**description** | **String** | A description of the workplace  | [optional] [default to null]
**erpContextId** | **String** | UUID of the ERP context in which the workplace number is a unique identifier for a workplace or a workplace group. In SAP ERP, for example, this context is defined by the client, the company code, and the plant | [optional] [default to null]
**capacityGroup** | [**WorkplaceGroupProperties**](WorkplaceGroupProperties.md) |  | [optional] [default to null]
**productionLine** | [**WorkplaceGroupProperties**](WorkplaceGroupProperties.md) |  | [optional] [default to null]
**operatingState** | [**OperatingStateGeneralDefinition**](OperatingStateGeneralDefinition.md) |  | [optional] [default to null]
**workplaceType** | **String** | The type of the workplace e.g. &#x27;MANUAL MACHINE WORKPLACE&#x27;,&#x27;MANUAL WORKPLACE&#x27; or &#x27;MACHINE WORKPLACE&#x27; | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

