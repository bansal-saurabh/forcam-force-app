# swagger.model.OperatingStateSummaryPropertiesWSModel

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**executionTime** | **int** | Total execution time of the operation in msec | [optional] [default to null]
**processingTime** | **int** | Total processing time of the operation in msec | [optional] [default to null]
**productionTime** | **int** | Total production time of the operation in msec | [optional] [default to null]
**setupTime** | **int** | Total setup time of the operation in msec | [optional] [default to null]
**setupReduction** | **double** | Setup reduction of an operation | [optional] [default to null]
**processAvailability** | **double** | Process availability of an operation | [optional] [default to null]
**elements** | [**List&lt;RecordedOperatingStateSummary&gt;**](RecordedOperatingStateSummary.md) | Array of operating state summaries with durations greater than zero | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

