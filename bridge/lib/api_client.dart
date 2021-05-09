part of swagger.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {

  String basePath;
  var client = new BrowserClient();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final _RegList = new RegExp(r'^List<(.*)>$');
  final _RegMap = new RegExp(r'^Map<String,(.*)>$');

  ApiClient({this.basePath: "https://forcebridgehackathon.force.eco:24443/ffwebservices/api/v3"}) {
    // Setup authentications (key: authentication name, value: authentication).
    _authentications['oauth2schema'] = new OAuth();
  }

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  dynamic _deserialize(dynamic value, String targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'Activity':
          return new Activity.fromJson(value);
        case 'Body':
          return new Body.fromJson(value);
        case 'Body1':
          return new Body1.fromJson(value);
        case 'Body2':
          return new Body2.fromJson(value);
        case 'Callback':
          return new Callback.fromJson(value);
        case 'CallbackCollectionWSModel':
          return new CallbackCollectionWSModel.fromJson(value);
        case 'CallbackObjectFilter':
          return new CallbackObjectFilter.fromJson(value);
        case 'CallbackProperties':
          return new CallbackProperties.fromJson(value);
        case 'CharacteristicGeneralDefinition':
          return new CharacteristicGeneralDefinition.fromJson(value);
        case 'CollectionProperties':
          return new CollectionProperties.fromJson(value);
        case 'Command':
          return new Command.fromJson(value);
        case 'CommandData':
          return new CommandData.fromJson(value);
        case 'CommandProperties':
          return new CommandProperties.fromJson(value);
        case 'Commands':
          return new Commands.fromJson(value);
        case 'CreateCallbackProperties':
          return new CreateCallbackProperties.fromJson(value);
        case 'CreateFileRepositoryDocumentProperties':
          return new CreateFileRepositoryDocumentProperties.fromJson(value);
        case 'CreateFileRepositoryFolderProperties':
          return new CreateFileRepositoryFolderProperties.fromJson(value);
        case 'CreateMaterialProperties':
          return new CreateMaterialProperties.fromJson(value);
        case 'CreateTicketActivityAttachmentProperties':
          return new CreateTicketActivityAttachmentProperties.fromJson(value);
        case 'CreateTicketActivityRemarkProperties':
          return new CreateTicketActivityRemarkProperties.fromJson(value);
        case 'CreateTicketAttachmentProperties':
          return new CreateTicketAttachmentProperties.fromJson(value);
        case 'CreateToolEdgeProperties':
          return new CreateToolEdgeProperties.fromJson(value);
        case 'CreateToolLocationProperties':
          return new CreateToolLocationProperties.fromJson(value);
        case 'CreateToolOrderProperties':
          return new CreateToolOrderProperties.fromJson(value);
        case 'CreateToolProperties':
          return new CreateToolProperties.fromJson(value);
        case 'CustomerSpecificSetting':
          return new CustomerSpecificSetting.fromJson(value);
        case 'CustomerSpecificSettingCollection':
          return new CustomerSpecificSettingCollection.fromJson(value);
        case 'CustomerSpecificSettingProperties':
          return new CustomerSpecificSettingProperties.fromJson(value);
        case 'Device':
          return new Device.fromJson(value);
        case 'DeviceCollection':
          return new DeviceCollection.fromJson(value);
        case 'DeviceProperties':
          return new DeviceProperties.fromJson(value);
        case 'DeviceRecordedTimeSeriesCollection':
          return new DeviceRecordedTimeSeriesCollection.fromJson(value);
        case 'DeviceRecordedTimeSeriesCollectionProperties':
          return new DeviceRecordedTimeSeriesCollectionProperties.fromJson(value);
        case 'DocumentState':
          return new DocumentState.fromJson(value);
        case 'DocumentStateCollection':
          return new DocumentStateCollection.fromJson(value);
        case 'DocumentStateProperties':
          return new DocumentStateProperties.fromJson(value);
        case 'DomainAttributeChangeCommand':
          return new DomainAttributeChangeCommand.fromJson(value);
        case 'EmbeddedCallbackWSModel':
          return new EmbeddedCallbackWSModel.fromJson(value);
        case 'EmbeddedCustomerSpecificSetting':
          return new EmbeddedCustomerSpecificSetting.fromJson(value);
        case 'EmbeddedDevices':
          return new EmbeddedDevices.fromJson(value);
        case 'EmbeddedDocumentStates':
          return new EmbeddedDocumentStates.fromJson(value);
        case 'EmbeddedErpContexts':
          return new EmbeddedErpContexts.fromJson(value);
        case 'EmbeddedFileRepositoryDocuments':
          return new EmbeddedFileRepositoryDocuments.fromJson(value);
        case 'EmbeddedFileRepositoryFolders':
          return new EmbeddedFileRepositoryFolders.fromJson(value);
        case 'EmbeddedLiterals':
          return new EmbeddedLiterals.fromJson(value);
        case 'EmbeddedMachineStateDetails':
          return new EmbeddedMachineStateDetails.fromJson(value);
        case 'EmbeddedMachines':
          return new EmbeddedMachines.fromJson(value);
        case 'EmbeddedMaterials':
          return new EmbeddedMaterials.fromJson(value);
        case 'EmbeddedOperatingStates':
          return new EmbeddedOperatingStates.fromJson(value);
        case 'EmbeddedOperations':
          return new EmbeddedOperations.fromJson(value);
        case 'EmbeddedProductionOrders':
          return new EmbeddedProductionOrders.fromJson(value);
        case 'EmbeddedProductionResourcesAndTools':
          return new EmbeddedProductionResourcesAndTools.fromJson(value);
        case 'EmbeddedQualityDetails':
          return new EmbeddedQualityDetails.fromJson(value);
        case 'EmbeddedQualityTypes':
          return new EmbeddedQualityTypes.fromJson(value);
        case 'EmbeddedShiftTypes':
          return new EmbeddedShiftTypes.fromJson(value);
        case 'EmbeddedStaffMembers':
          return new EmbeddedStaffMembers.fromJson(value);
        case 'EmbeddedStatusDefinition':
          return new EmbeddedStatusDefinition.fromJson(value);
        case 'EmbeddedTicketActivitiesWSModel':
          return new EmbeddedTicketActivitiesWSModel.fromJson(value);
        case 'EmbeddedTicketActivityAttachmentWSModel':
          return new EmbeddedTicketActivityAttachmentWSModel.fromJson(value);
        case 'EmbeddedTicketActivityRemarkWSModel':
          return new EmbeddedTicketActivityRemarkWSModel.fromJson(value);
        case 'EmbeddedTicketActivityStateWSModel':
          return new EmbeddedTicketActivityStateWSModel.fromJson(value);
        case 'EmbeddedTicketAttachmentsWSModel':
          return new EmbeddedTicketAttachmentsWSModel.fromJson(value);
        case 'EmbeddedTicketClassWSModel':
          return new EmbeddedTicketClassWSModel.fromJson(value);
        case 'EmbeddedTicketStateWSModel':
          return new EmbeddedTicketStateWSModel.fromJson(value);
        case 'EmbeddedTickets':
          return new EmbeddedTickets.fromJson(value);
        case 'EmbeddedToolEdges':
          return new EmbeddedToolEdges.fromJson(value);
        case 'EmbeddedToolOrders':
          return new EmbeddedToolOrders.fromJson(value);
        case 'EmbeddedTools':
          return new EmbeddedTools.fromJson(value);
        case 'EmbeddedWorkplaceGroups':
          return new EmbeddedWorkplaceGroups.fromJson(value);
        case 'EmbeddedWorkplaceShifts':
          return new EmbeddedWorkplaceShifts.fromJson(value);
        case 'EmbeddedWorkplaces':
          return new EmbeddedWorkplaces.fromJson(value);
        case 'EntryPoint':
          return new EntryPoint.fromJson(value);
        case 'EntryPointProperties':
          return new EntryPointProperties.fromJson(value);
        case 'ErpContext':
          return new ErpContext.fromJson(value);
        case 'ErpContextCollection':
          return new ErpContextCollection.fromJson(value);
        case 'ErpContextProperties':
          return new ErpContextProperties.fromJson(value);
        case 'ErrorMessage':
          return new ErrorMessage.fromJson(value);
        case 'EventRequestBody':
          return new EventRequestBody.fromJson(value);
        case 'FileRepository':
          return new FileRepository.fromJson(value);
        case 'FileRepositoryDocument':
          return new FileRepositoryDocument.fromJson(value);
        case 'FileRepositoryDocumentCollection':
          return new FileRepositoryDocumentCollection.fromJson(value);
        case 'FileRepositoryDocumentProperties':
          return new FileRepositoryDocumentProperties.fromJson(value);
        case 'FileRepositoryFolder':
          return new FileRepositoryFolder.fromJson(value);
        case 'FileRepositoryFolderCollection':
          return new FileRepositoryFolderCollection.fromJson(value);
        case 'FileRepositoryFolderProperties':
          return new FileRepositoryFolderProperties.fromJson(value);
        case 'GeoCoordinates':
          return new GeoCoordinates.fromJson(value);
        case 'HitListOperatingStateMaterial':
          return new HitListOperatingStateMaterial.fromJson(value);
        case 'HitListOperatingStateMaterialEntry':
          return new HitListOperatingStateMaterialEntry.fromJson(value);
        case 'HitListOperatingStateMaterialProperties':
          return new HitListOperatingStateMaterialProperties.fromJson(value);
        case 'HitListOperatingStateWorkplace':
          return new HitListOperatingStateWorkplace.fromJson(value);
        case 'HitListOperatingStateWorkplaceEntry':
          return new HitListOperatingStateWorkplaceEntry.fromJson(value);
        case 'HitListOperatingStateWorkplaceProperties':
          return new HitListOperatingStateWorkplaceProperties.fromJson(value);
        case 'LifeTime':
          return new LifeTime.fromJson(value);
        case 'Literal':
          return new Literal.fromJson(value);
        case 'LiteralCollection':
          return new LiteralCollection.fromJson(value);
        case 'LiteralProperties':
          return new LiteralProperties.fromJson(value);
        case 'Machine':
          return new Machine.fromJson(value);
        case 'MachineCollection':
          return new MachineCollection.fromJson(value);
        case 'MachineCount':
          return new MachineCount.fromJson(value);
        case 'MachineCountCommand':
          return new MachineCountCommand.fromJson(value);
        case 'MachineProperties':
          return new MachineProperties.fromJson(value);
        case 'MachineQuantitiesWithQualityDetails':
          return new MachineQuantitiesWithQualityDetails.fromJson(value);
        case 'MachineQuantityCommand':
          return new MachineQuantityCommand.fromJson(value);
        case 'MachineStateCommand':
          return new MachineStateCommand.fromJson(value);
        case 'MachineStateDetail':
          return new MachineStateDetail.fromJson(value);
        case 'MachineStateDetailCollection':
          return new MachineStateDetailCollection.fromJson(value);
        case 'MachineStateDetailProperties':
          return new MachineStateDetailProperties.fromJson(value);
        case 'MachineStateRequestBody':
          return new MachineStateRequestBody.fromJson(value);
        case 'MachineStateRevisionInsertCommand':
          return new MachineStateRevisionInsertCommand.fromJson(value);
        case 'MachineStrokeCommand':
          return new MachineStrokeCommand.fromJson(value);
        case 'MachineStrokes':
          return new MachineStrokes.fromJson(value);
        case 'MasterData':
          return new MasterData.fromJson(value);
        case 'Material':
          return new Material.fromJson(value);
        case 'MaterialCollection':
          return new MaterialCollection.fromJson(value);
        case 'MaterialProperties':
          return new MaterialProperties.fromJson(value);
        case 'OperatingState':
          return new OperatingState.fromJson(value);
        case 'OperatingStateCollection':
          return new OperatingStateCollection.fromJson(value);
        case 'OperatingStateDetailRequestBody':
          return new OperatingStateDetailRequestBody.fromJson(value);
        case 'OperatingStateGeneralDefinition':
          return new OperatingStateGeneralDefinition.fromJson(value);
        case 'OperatingStateProperties':
          return new OperatingStateProperties.fromJson(value);
        case 'OperatingStateRecord':
          return new OperatingStateRecord.fromJson(value);
        case 'OperatingStateSummaryPropertiesWSModel':
          return new OperatingStateSummaryPropertiesWSModel.fromJson(value);
        case 'Operation':
          return new Operation.fromJson(value);
        case 'OperationCollection':
          return new OperationCollection.fromJson(value);
        case 'OperationComponent':
          return new OperationComponent.fromJson(value);
        case 'OperationComponentCollection':
          return new OperationComponentCollection.fromJson(value);
        case 'OperationComponentCollectionProperties':
          return new OperationComponentCollectionProperties.fromJson(value);
        case 'OperationCurrentProductionData':
          return new OperationCurrentProductionData.fromJson(value);
        case 'OperationCurrentProductionDataProperties':
          return new OperationCurrentProductionDataProperties.fromJson(value);
        case 'OperationMaterialCharacteristics':
          return new OperationMaterialCharacteristics.fromJson(value);
        case 'OperationPhase':
          return new OperationPhase.fromJson(value);
        case 'OperationPhaseCollectionProperties':
          return new OperationPhaseCollectionProperties.fromJson(value);
        case 'OperationPhaseCommand':
          return new OperationPhaseCommand.fromJson(value);
        case 'OperationPhaseRevisionInsertCommand':
          return new OperationPhaseRevisionInsertCommand.fromJson(value);
        case 'OperationProductionStateCommand':
          return new OperationProductionStateCommand.fromJson(value);
        case 'OperationProductionStateDetail':
          return new OperationProductionStateDetail.fromJson(value);
        case 'OperationProductionStateDetailCollection':
          return new OperationProductionStateDetailCollection.fromJson(value);
        case 'OperationProductionStateDetailProperties':
          return new OperationProductionStateDetailProperties.fromJson(value);
        case 'OperationProductionStateRevisionInsertCommand':
          return new OperationProductionStateRevisionInsertCommand.fromJson(value);
        case 'OperationProperties':
          return new OperationProperties.fromJson(value);
        case 'OperationQualityDetail':
          return new OperationQualityDetail.fromJson(value);
        case 'OperationQuantityCommand':
          return new OperationQuantityCommand.fromJson(value);
        case 'OperationQuantityRevisionInsertCommand':
          return new OperationQuantityRevisionInsertCommand.fromJson(value);
        case 'OperationQuantitySummary':
          return new OperationQuantitySummary.fromJson(value);
        case 'OperationQuantitySummaryDetailProperties':
          return new OperationQuantitySummaryDetailProperties.fromJson(value);
        case 'OperationQuantitySummaryProperties':
          return new OperationQuantitySummaryProperties.fromJson(value);
        case 'OperationScheduledDates':
          return new OperationScheduledDates.fromJson(value);
        case 'OperationScheduledDatesProperties':
          return new OperationScheduledDatesProperties.fromJson(value);
        case 'OperationSpecification':
          return new OperationSpecification.fromJson(value);
        case 'OperationSpecificationProperties':
          return new OperationSpecificationProperties.fromJson(value);
        case 'OperationTime':
          return new OperationTime.fromJson(value);
        case 'OverallEquipmentEfficiency':
          return new OverallEquipmentEfficiency.fromJson(value);
        case 'OverallEquipmentEfficiencyProperties':
          return new OverallEquipmentEfficiencyProperties.fromJson(value);
        case 'OverallProcessEfficiency':
          return new OverallProcessEfficiency.fromJson(value);
        case 'OverallProcessEfficiencyProperties':
          return new OverallProcessEfficiencyProperties.fromJson(value);
        case 'PaginationIdentifier':
          return new PaginationIdentifier.fromJson(value);
        case 'PredecessorWSModel':
          return new PredecessorWSModel.fromJson(value);
        case 'ProductionOrder':
          return new ProductionOrder.fromJson(value);
        case 'ProductionOrderCollection':
          return new ProductionOrderCollection.fromJson(value);
        case 'ProductionOrderGeneralDefinition':
          return new ProductionOrderGeneralDefinition.fromJson(value);
        case 'ProductionOrderOperation':
          return new ProductionOrderOperation.fromJson(value);
        case 'ProductionOrderOperationSequence':
          return new ProductionOrderOperationSequence.fromJson(value);
        case 'ProductionOrderOperationSequenceCollection':
          return new ProductionOrderOperationSequenceCollection.fromJson(value);
        case 'ProductionOrderOperationSequenceProperties':
          return new ProductionOrderOperationSequenceProperties.fromJson(value);
        case 'ProductionOrderProperties':
          return new ProductionOrderProperties.fromJson(value);
        case 'ProductionOrderScheduledDates':
          return new ProductionOrderScheduledDates.fromJson(value);
        case 'ProductionOrderSchedulingResultCollection':
          return new ProductionOrderSchedulingResultCollection.fromJson(value);
        case 'ProductionOrderSchedulingResultPropertiesWSModel':
          return new ProductionOrderSchedulingResultPropertiesWSModel.fromJson(value);
        case 'ProductionOrderSpecification':
          return new ProductionOrderSpecification.fromJson(value);
        case 'ProductionResourceTool':
          return new ProductionResourceTool.fromJson(value);
        case 'ProductionResourceToolCollection':
          return new ProductionResourceToolCollection.fromJson(value);
        case 'ProductionResourceToolProperties':
          return new ProductionResourceToolProperties.fromJson(value);
        case 'QualityDetail':
          return new QualityDetail.fromJson(value);
        case 'QualityDetailCollection':
          return new QualityDetailCollection.fromJson(value);
        case 'QualityDetailProperties':
          return new QualityDetailProperties.fromJson(value);
        case 'QualityDetailsMaterial':
          return new QualityDetailsMaterial.fromJson(value);
        case 'QualityDetailsMaterialProperties':
          return new QualityDetailsMaterialProperties.fromJson(value);
        case 'QualityDetailsWorkplace':
          return new QualityDetailsWorkplace.fromJson(value);
        case 'QualityDetailsWorkplaceProperties':
          return new QualityDetailsWorkplaceProperties.fromJson(value);
        case 'QualityType':
          return new QualityType.fromJson(value);
        case 'QualityTypeProperties':
          return new QualityTypeProperties.fromJson(value);
        case 'QualityTypes':
          return new QualityTypes.fromJson(value);
        case 'QuantitiesWithUncategorized':
          return new QuantitiesWithUncategorized.fromJson(value);
        case 'RecordedMachineStateDetailCollection':
          return new RecordedMachineStateDetailCollection.fromJson(value);
        case 'RecordedMachineStateDetailElement':
          return new RecordedMachineStateDetailElement.fromJson(value);
        case 'RecordedMachineStateDetailPropertiesModel':
          return new RecordedMachineStateDetailPropertiesModel.fromJson(value);
        case 'RecordedOperatingStateCollection':
          return new RecordedOperatingStateCollection.fromJson(value);
        case 'RecordedOperatingStateSummary':
          return new RecordedOperatingStateSummary.fromJson(value);
        case 'RecordedOperatingStateSummaryCollection':
          return new RecordedOperatingStateSummaryCollection.fromJson(value);
        case 'RecordedOperatingStatesPropertiesModel':
          return new RecordedOperatingStatesPropertiesModel.fromJson(value);
        case 'RecordedOperationOutputQuantitiesProperties':
          return new RecordedOperationOutputQuantitiesProperties.fromJson(value);
        case 'RecordedOperationPhase':
          return new RecordedOperationPhase.fromJson(value);
        case 'RecordedOperationPhaseCollection':
          return new RecordedOperationPhaseCollection.fromJson(value);
        case 'RecordedOutputQuantities':
          return new RecordedOutputQuantities.fromJson(value);
        case 'RecordedOutputQuantitiesCollection':
          return new RecordedOutputQuantitiesCollection.fromJson(value);
        case 'RecordedPhysicalQuantitiesWSModel':
          return new RecordedPhysicalQuantitiesWSModel.fromJson(value);
        case 'ResponseEntity':
          return new ResponseEntity.fromJson(value);
        case 'ScheduledMaintenanceTimes':
          return new ScheduledMaintenanceTimes.fromJson(value);
        case 'ScheduledOperatingTimes':
          return new ScheduledOperatingTimes.fromJson(value);
        case 'SearchOperations':
          return new SearchOperations.fromJson(value);
        case 'SearchProductionOrders':
          return new SearchProductionOrders.fromJson(value);
        case 'Shift':
          return new Shift.fromJson(value);
        case 'ShiftBreak':
          return new ShiftBreak.fromJson(value);
        case 'ShiftType':
          return new ShiftType.fromJson(value);
        case 'ShiftTypeCollection':
          return new ShiftTypeCollection.fromJson(value);
        case 'ShiftTypeProperties':
          return new ShiftTypeProperties.fromJson(value);
        case 'StaffMember':
          return new StaffMember.fromJson(value);
        case 'StaffMemberCollection':
          return new StaffMemberCollection.fromJson(value);
        case 'StaffMemberLoginPeriodRecord':
          return new StaffMemberLoginPeriodRecord.fromJson(value);
        case 'StaffMemberOperationStateCommand':
          return new StaffMemberOperationStateCommand.fromJson(value);
        case 'StaffMemberOperationStateRevisionInsertCommand':
          return new StaffMemberOperationStateRevisionInsertCommand.fromJson(value);
        case 'StaffMemberProperties':
          return new StaffMemberProperties.fromJson(value);
        case 'StaffMemberRecordedActivitiesCollection':
          return new StaffMemberRecordedActivitiesCollection.fromJson(value);
        case 'StaffMemberRecordedActivitiesProperties':
          return new StaffMemberRecordedActivitiesProperties.fromJson(value);
        case 'StaffMemberTimeAttendanceBreakRevisionInsertCommand':
          return new StaffMemberTimeAttendanceBreakRevisionInsertCommand.fromJson(value);
        case 'StaffMemberTimeAttendanceCommand':
          return new StaffMemberTimeAttendanceCommand.fromJson(value);
        case 'StaffMemberTimeAttendanceRevisionInsertCommand':
          return new StaffMemberTimeAttendanceRevisionInsertCommand.fromJson(value);
        case 'StaffMemberWorkplaceStateCommand':
          return new StaffMemberWorkplaceStateCommand.fromJson(value);
        case 'StaffMemberWorkplaceStateRevisionInsertCommand':
          return new StaffMemberWorkplaceStateRevisionInsertCommand.fromJson(value);
        case 'StatusDefinition':
          return new StatusDefinition.fromJson(value);
        case 'StatusDefinitionCollection':
          return new StatusDefinitionCollection.fromJson(value);
        case 'StatusDefinitionProperties':
          return new StatusDefinitionProperties.fromJson(value);
        case 'SuccessorWSModel':
          return new SuccessorWSModel.fromJson(value);
        case 'Ticket':
          return new Ticket.fromJson(value);
        case 'TicketActivity':
          return new TicketActivity.fromJson(value);
        case 'TicketActivityAttachment':
          return new TicketActivityAttachment.fromJson(value);
        case 'TicketActivityAttachmentCollection':
          return new TicketActivityAttachmentCollection.fromJson(value);
        case 'TicketActivityAttachmentProperties':
          return new TicketActivityAttachmentProperties.fromJson(value);
        case 'TicketActivityCollection':
          return new TicketActivityCollection.fromJson(value);
        case 'TicketActivityProperties':
          return new TicketActivityProperties.fromJson(value);
        case 'TicketActivityRemark':
          return new TicketActivityRemark.fromJson(value);
        case 'TicketActivityRemarkCollection':
          return new TicketActivityRemarkCollection.fromJson(value);
        case 'TicketActivityRemarkProperties':
          return new TicketActivityRemarkProperties.fromJson(value);
        case 'TicketActivityState':
          return new TicketActivityState.fromJson(value);
        case 'TicketActivityStateCollectionWSModel':
          return new TicketActivityStateCollectionWSModel.fromJson(value);
        case 'TicketActivityStateProperties':
          return new TicketActivityStateProperties.fromJson(value);
        case 'TicketAttachment':
          return new TicketAttachment.fromJson(value);
        case 'TicketAttachmentCollection':
          return new TicketAttachmentCollection.fromJson(value);
        case 'TicketAttachmentsProperties':
          return new TicketAttachmentsProperties.fromJson(value);
        case 'TicketClass':
          return new TicketClass.fromJson(value);
        case 'TicketClassCollectionWSModel':
          return new TicketClassCollectionWSModel.fromJson(value);
        case 'TicketClassProperties':
          return new TicketClassProperties.fromJson(value);
        case 'TicketCollectionWSModel':
          return new TicketCollectionWSModel.fromJson(value);
        case 'TicketProperties':
          return new TicketProperties.fromJson(value);
        case 'TicketState':
          return new TicketState.fromJson(value);
        case 'TicketStateCollectionWSModel':
          return new TicketStateCollectionWSModel.fromJson(value);
        case 'TicketStateProperties':
          return new TicketStateProperties.fromJson(value);
        case 'TimePeriodDefinition':
          return new TimePeriodDefinition.fromJson(value);
        case 'TimeSeriesWSModel':
          return new TimeSeriesWSModel.fromJson(value);
        case 'Tool':
          return new Tool.fromJson(value);
        case 'ToolAssemblyOrder':
          return new ToolAssemblyOrder.fromJson(value);
        case 'ToolAssemblyOrderProperties':
          return new ToolAssemblyOrderProperties.fromJson(value);
        case 'ToolCharacteristicCollection':
          return new ToolCharacteristicCollection.fromJson(value);
        case 'ToolCharacteristicCollectionProperties':
          return new ToolCharacteristicCollectionProperties.fromJson(value);
        case 'ToolCollection':
          return new ToolCollection.fromJson(value);
        case 'ToolCutEdgeCollectionWSModel':
          return new ToolCutEdgeCollectionWSModel.fromJson(value);
        case 'ToolEdge':
          return new ToolEdge.fromJson(value);
        case 'ToolEdgeProperties':
          return new ToolEdgeProperties.fromJson(value);
        case 'ToolIdentifierValue':
          return new ToolIdentifierValue.fromJson(value);
        case 'ToolOrderCollectionWSModel':
          return new ToolOrderCollectionWSModel.fromJson(value);
        case 'ToolProperties':
          return new ToolProperties.fromJson(value);
        case 'TotalQuantity':
          return new TotalQuantity.fromJson(value);
        case 'TotalQuantityEntry':
          return new TotalQuantityEntry.fromJson(value);
        case 'TotalQuantityProperties':
          return new TotalQuantityProperties.fromJson(value);
        case 'Translation':
          return new Translation.fromJson(value);
        case 'Workplace':
          return new Workplace.fromJson(value);
        case 'WorkplaceCollection':
          return new WorkplaceCollection.fromJson(value);
        case 'WorkplaceGeneralDefinition':
          return new WorkplaceGeneralDefinition.fromJson(value);
        case 'WorkplaceGroup':
          return new WorkplaceGroup.fromJson(value);
        case 'WorkplaceGroupCollection':
          return new WorkplaceGroupCollection.fromJson(value);
        case 'WorkplaceGroupProperties':
          return new WorkplaceGroupProperties.fromJson(value);
        case 'WorkplaceMaintenanceRequestCommand':
          return new WorkplaceMaintenanceRequestCommand.fromJson(value);
        case 'WorkplaceMaintenanceStateCommand':
          return new WorkplaceMaintenanceStateCommand.fromJson(value);
        case 'WorkplacePlannedMaintenanceStateCommand':
          return new WorkplacePlannedMaintenanceStateCommand.fromJson(value);
        case 'WorkplaceProperties':
          return new WorkplaceProperties.fromJson(value);
        case 'WorkplaceQuantitySummary':
          return new WorkplaceQuantitySummary.fromJson(value);
        case 'WorkplaceQuantitySummaryCollectionProperties':
          return new WorkplaceQuantitySummaryCollectionProperties.fromJson(value);
        case 'WorkplaceQuantitySummaryDetailProperties':
          return new WorkplaceQuantitySummaryDetailProperties.fromJson(value);
        case 'WorkplaceRecordedOperatingStateSummaryCollection':
          return new WorkplaceRecordedOperatingStateSummaryCollection.fromJson(value);
        case 'WorkplaceRecordedOperationPhaseCollection':
          return new WorkplaceRecordedOperationPhaseCollection.fromJson(value);
        case 'WorkplaceScheduledMaintenanceTimesPropertiesWSModel':
          return new WorkplaceScheduledMaintenanceTimesPropertiesWSModel.fromJson(value);
        case 'WorkplaceScheduledOperatingTimesPropertiesWSModel':
          return new WorkplaceScheduledOperatingTimesPropertiesWSModel.fromJson(value);
        case 'WorkplaceShift':
          return new WorkplaceShift.fromJson(value);
        case 'WorkplaceShiftCollection':
          return new WorkplaceShiftCollection.fromJson(value);
        case 'WorkplaceShiftProperties':
          return new WorkplaceShiftProperties.fromJson(value);
        case 'WorkplaceShiftStateCommand':
          return new WorkplaceShiftStateCommand.fromJson(value);
        case 'WorkplaceStateCorrectionRequestBody':
          return new WorkplaceStateCorrectionRequestBody.fromJson(value);
        case 'WpOperatingStateSummaryPropertiesWSModel':
          return new WpOperatingStateSummaryPropertiesWSModel.fromJson(value);
        case 'WpOperationPhaseCollectionProperties':
          return new WpOperationPhaseCollectionProperties.fromJson(value);
        case 'WriteTicketActivityProperties':
          return new WriteTicketActivityProperties.fromJson(value);
        case 'WriteTicketProperties':
          return new WriteTicketProperties.fromJson(value);
        case 'ZonedTimePeriodDefinition':
          return new ZonedTimePeriodDefinition.fromJson(value);
        default:
          {
            Match match;
            if (value is List &&
                (match = _RegList.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return value.map((v) => _deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _RegMap.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return new Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType)));
            }
          }
      }
    } catch (e, stack) {
      throw new ApiException.withInner(500, 'Exception during deserialization.', e, stack);
    }
    throw new ApiException(500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String jsonVal, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return jsonVal;

    var decodedJson = json.decode(jsonVal);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = json.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(String path,
                             String method,
                             Iterable<QueryParam> queryParams,
                             Object body,
                             Map<String, String> headerParams,
                             Map<String, String> formParams,
                             String contentType,
                             List<String> authNames) async {

    _updateParamsForAuth(authNames, queryParams, headerParams);

    var ps = queryParams.where((p) => p.value != null).map((p) => '${p.name}=${p.value}');
    String queryString = ps.isNotEmpty ?
                         '?' + ps.join('&') :
                         '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = contentType;

    if(body is MultipartRequest) {
      var request = new MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = contentType == "application/x-www-form-urlencoded" ? formParams : serialize(body);
      switch(method) {
        case "POST":
          return client.post(url, headers: headerParams, body: msgBody);
        case "PUT":
          return client.put(url, headers: headerParams, body: msgBody);
        case "DELETE":
          return client.delete(url, headers: headerParams);
        case "PATCH":
          return client.patch(url, headers: headerParams, body: msgBody);
        default:
          return client.get(url, headers: headerParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames, List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName];
      if (auth == null) throw new ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }

  void setAccessToken(String accessToken) {
    _authentications.forEach((key, auth) {
      if (auth is OAuth) {
        auth.setAccessToken(accessToken);
      }
    });
  }
}
