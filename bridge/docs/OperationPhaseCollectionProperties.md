# swagger.model.OperationPhaseCollectionProperties

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**startDate** | [**DateTime**](DateTime.md) | Timestamp of the first execution period | [optional] [default to null]
**endDate** | [**DateTime**](DateTime.md) | End timestamp of the last execution period | [optional] [default to null]
**setupPhaseDuration** | **int** | Duration of all setup phases of the operation in msec | [optional] [default to null]
**processingPhaseDuration** | **int** | Duration of all processing phases of the operation in msec | [optional] [default to null]
**executionTime** | **int** | Entire execution time of the operation in msec | [optional] [default to null]
**elements** | [**List&lt;RecordedOperationPhase&gt;**](RecordedOperationPhase.md) | Array of operation phase records | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

