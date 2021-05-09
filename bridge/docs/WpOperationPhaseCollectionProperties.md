# swagger.model.WpOperationPhaseCollectionProperties

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**startDate** | [**DateTime**](DateTime.md) | Start timestamp of the selected period | [optional] [default to null]
**endDate** | [**DateTime**](DateTime.md) | The end date of the selected period | [optional] [default to null]
**setupPhaseDuration** | **int** | Total duration of the setup phases of all operations executed at the respective workplace within the selected period in msec. | [optional] [default to null]
**processingPhaseDuration** | **int** | Total duration of the processing phases of all operations executed at the respective workplace within the selected period in msec | [optional] [default to null]
**occupancyTime** | **int** | Total execution time of all operations executed at the respective workplace within the selected period in msec | [optional] [default to null]
**elements** | [**List&lt;RecordedOperationPhase&gt;**](RecordedOperationPhase.md) | Array of operation phase records | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

