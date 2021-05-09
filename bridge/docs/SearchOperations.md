# swagger.model.SearchOperations

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**endDate** | [**DateTime**](DateTime.md) | Operations with a later start date are excluded. The start date of an operation is either the actual start date or the planned start date or the scheduled start date, depending on the operation phase | [optional] [default to null]
**erpContextIds** | **List&lt;String&gt;** | UUID of the ERP context in which the workplace number is a unique identifier for a workplace or a workplace group. In SAP ERP, for example, this context is defined by the client, the company code, and the plant | [optional] [default to []]
**isDispatched** | **bool** | True if the operationPhaseId is &#x27;DISPATCHED&#x27; | [optional] [default to null]
**isInProgress** | **bool** |  | [optional] [default to null]
**isPlannable** | **bool** | “true” or “false”. An operation is plannable if the operation phase is either RELEASED or DISPATCHED and the plannedStartDate is out-side the frozen zone. If no frozen zone has been defined, the first condition is sufficient. If there is an operation block, e.g. in joint production, only the leading operation of the operation block is planned. This means that all operations for which a block number has been defined and which are not themselves leading operations cannot be planned separately | [optional] [default to null]
**materialNumbers** | **List&lt;String&gt;** | The material number of the material produced by the operation | [optional] [default to []]
**operationIds** | **List&lt;String&gt;** |  | [optional] [default to []]
**operationNumbers** | **List&lt;String&gt;** | The operation number | [optional] [default to []]
**operationPhaseIds** | **List&lt;String&gt;** | The identifier of the current operation phase of the operation | [optional] [default to []]
**operationSplits** | **List&lt;String&gt;** | The split number of the operation | [optional] [default to []]
**plannedWorkplaceIds** | **List&lt;String&gt;** |  | [optional] [default to []]
**plannedWorkplaceNumbers** | **List&lt;String&gt;** | The number of the planned workplace that is defined in detailed scheduling and dispatching | [optional] [default to []]
**productionOrderIds** | **List&lt;String&gt;** | UUID of an order | [optional] [default to []]
**productionOrderNumbers** | **List&lt;String&gt;** | The order number of the corresponding production order | [optional] [default to []]
**productionOrderSplits** | **List&lt;String&gt;** | The split number of the corresponding production order split | [optional] [default to []]
**startDate** | [**DateTime**](DateTime.md) | Operations with an earlier end date are excluded. The end date of an operation is either the actual end date or the planned end date or the scheduled end date, depending on the operation phase (default value: beginning of the current week) | [optional] [default to null]
**targetWorkplaceIds** | **List&lt;String&gt;** |  | [optional] [default to []]
**targetWorkplaceNumbers** | **List&lt;String&gt;** | The number of the target workplace specified by the ERP system | [optional] [default to []]
**workplaceIds** | **List&lt;String&gt;** |  | [optional] [default to []]
**workplaceNumbers** | **List&lt;String&gt;** | The number of the workplace at which the operation is or has been executed for operations in the SETUP, PROCESSING, COMPLETED and CLOSED phases.  For operations in the DISPATCHED phase, it is the number of the planned workplace. For operations in the RELEASED phase, it is the number of the target workplace | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

