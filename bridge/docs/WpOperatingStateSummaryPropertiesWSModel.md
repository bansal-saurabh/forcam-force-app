# swagger.model.WpOperatingStateSummaryPropertiesWSModel

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**scheduledOperatingTime** | **int** | Scheduled operating time of the workplace during the selected period in msec | [optional] [default to null]
**occupancyTime** | **int** | Total execution time of all operations executed at the respective workplace within the selected period in msec | [optional] [default to null]
**processingTime** | **int** | Total processing time of the workplace during the selected period in msec | [optional] [default to null]
**productionTime** | **int** | Total production time of the workplace during the selected period in msec | [optional] [default to null]
**setupTime** | **int** | Total setup time during the selected period in msec | [optional] [default to null]
**occupancyRate** | **double** | Occupancy rate of the workplace during the selected period | [optional] [default to null]
**setupReduction** | **double** | Setup reduction of the workplace during the selected period | [optional] [default to null]
**processAvailability** | **double** | Process availability of the workplace during the selected period | [optional] [default to null]
**availability** | **double** | Availability of the workplace during the selected period | [optional] [default to null]
**elements** | [**List&lt;RecordedOperatingStateSummary&gt;**](RecordedOperatingStateSummary.md) | Array of operating state summaries with duration greater than zero | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

