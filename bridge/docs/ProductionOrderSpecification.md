# swagger.model.ProductionOrderSpecification

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**embedded** | [**Object**](Object.md) | HAL embedded objects | [optional] [default to null]
**links** | [**Object**](Object.md) | HAL link objects | [optional] [default to null]
**properties** | [**ProductionOrderSpecification**](ProductionOrderSpecification.md) |  | [optional] [default to null]
**targetQuantity** | **double** | The target yield quantity | [optional] [default to null]
**quantityUnit** | **String** | The unit of the target quantity target yield quantity | [optional] [default to null]
**basicStartDate** | [**DateTime**](DateTime.md) | Earliest start date of the production order | [optional] [default to null]
**basicEndDate** | [**DateTime**](DateTime.md) | Latest end date of the production order | [optional] [default to null]
**priority** | **String** | An arbitrary integer value for the priority of a production order specified in the ERP system. The highest priority is 0. | [optional] [default to null]
**degreeOfParallelization** | **double** | The degree of parallelization used, among other things, to determine the throughput efficiency | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

