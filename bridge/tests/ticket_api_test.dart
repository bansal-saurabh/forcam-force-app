import 'package:swagger/api.dart';
import 'package:test/test.dart';


/// tests for TicketApi
void main() {
  var instance = new TicketApi();

  group('tests for TicketApi', () {
    // Create a new ticket.
    //
    //Future<Ticket> createTicket({ WriteTicketProperties body }) async
    test('test createTicket', () async {
      // TODO
    });

    // Create a ticket activity with the given data.
    //
    //Future<TicketActivity> createTicketActivity(String ticketId, { WriteTicketActivityProperties body }) async
    test('test createTicketActivity', () async {
      // TODO
    });

    // Create a new ticket activity attachment.
    //
    //Future<TicketActivityAttachment> createTicketActivityAttachment(String activityId, String ticketId, { CreateTicketActivityAttachmentProperties body }) async
    test('test createTicketActivityAttachment', () async {
      // TODO
    });

    // Create a new ticket activity remark.
    //
    //Future<TicketActivityRemark> createTicketActivityRemark(String activityId, String ticketId, { CreateTicketActivityRemarkProperties body }) async
    test('test createTicketActivityRemark', () async {
      // TODO
    });

    // Create a new ticket attachment.
    //
    //Future<TicketAttachment> createTicketAttachment(String ticketId, { CreateTicketAttachmentProperties body }) async
    test('test createTicketAttachment', () async {
      // TODO
    });

    // Delete a ticket.
    //
    //Future deleteTicket(String ticketId) async
    test('test deleteTicket', () async {
      // TODO
    });

    // Delete a ticket activity with the given ticket UUID and activity UUID.
    //
    //Future deleteTicketActivity(String activityId, String ticketId) async
    test('test deleteTicketActivity', () async {
      // TODO
    });

    // Delete the ticket activity attachment matching the id.
    //
    //Future deleteTicketActivityAttachment(String activityId, String attachmentId, String ticketId) async
    test('test deleteTicketActivityAttachment', () async {
      // TODO
    });

    // Delete a ticket activity remark with the given ticket UUID, activity UUID and remark UUID
    //
    //Future deleteTicketActivityRemark(String activityId, String remarkId, String ticketId) async
    test('test deleteTicketActivityRemark', () async {
      // TODO
    });

    // Delete a ticket attachment.
    //
    //Future deleteTicketAttachment(String attachmentId, String ticketId) async
    test('test deleteTicketAttachment', () async {
      // TODO
    });

    // Retrieve at ticket.
    //
    //Future<Ticket> getTicket(String ticketId, { List<String> embed }) async
    test('test getTicket', () async {
      // TODO
    });

    // Retrieve ticket activities matching the filter criteria.
    //
    //Future<TicketActivityCollection> getTicketActivities(String ticketId, { String activityEditor, String activityTitle, DateTime creationDateFrom, DateTime creationDateTo, DateTime dueDateFrom, DateTime dueDateTo, List<String> embed, int limit, String paginationDirection, String paginationIdentifier, DateTime paginationTimestamp, String ticketActivityStateId }) async
    test('test getTicketActivities', () async {
      // TODO
    });

    // Retrieve a ticket activity matching the UUID.
    //
    //Future<TicketActivity> getTicketActivity(String activityId, String ticketId, { List<String> embed }) async
    test('test getTicketActivity', () async {
      // TODO
    });

    // Retrieve ticket activity attachment matching the UUID.
    //
    //Future<TicketActivityAttachment> getTicketActivityAttachment(String activityId, String attachmentId, String ticketId, { List<String> embed }) async
    test('test getTicketActivityAttachment', () async {
      // TODO
    });

    // Retrieve ticket activity attachment matching the UUID.
    //
    //Future<String> getTicketActivityAttachmentData(String activityId, String attachmentId, String ticketId, { List<String> embed }) async
    test('test getTicketActivityAttachmentData', () async {
      // TODO
    });

    // Retrieve ticket activity attachments matching the filter criteria.
    //
    //Future<TicketActivityAttachmentCollection> getTicketActivityAttachments(String activityId, String ticketId, { DateTime creationDateFrom, DateTime creationDateTo, List<String> embed, int limit, String name, String paginationDirection, String paginationIdentifier, DateTime paginationTimestamp }) async
    test('test getTicketActivityAttachments', () async {
      // TODO
    });

    // Retrieve a ticket activity remark matching the UUID.
    //
    //Future<TicketActivityRemark> getTicketActivityRemark(String activityId, String remarkId, String ticketId, { List<String> embed }) async
    test('test getTicketActivityRemark', () async {
      // TODO
    });

    // Retrieve ticket activity remarks matching the filter criteria.
    //
    //Future<TicketActivityRemarkCollection> getTicketActivityRemarks(String activityId, String ticketId, { DateTime creationDateFrom, DateTime creationDateTo, String editor, List<String> embed, int limit, String paginationDirection, String paginationIdentifier, DateTime paginationTimestamp }) async
    test('test getTicketActivityRemarks', () async {
      // TODO
    });

    // Retrieve a ticket attachment matching the ticket UuId and the attachment UuId
    //
    //Future<TicketAttachment> getTicketAttachment(String attachmentId, String ticketId, { List<String> embed }) async
    test('test getTicketAttachment', () async {
      // TODO
    });

    // Retrieve ticket attachment data matching the ticket UuId and the attachment UuId
    //
    //Future<String> getTicketAttachmentData(String attachmentId, String ticketId) async
    test('test getTicketAttachmentData', () async {
      // TODO
    });

    // Retrieve ticket attachments matching the filter criteria.
    //
    //Future<TicketAttachmentCollection> getTicketAttachments(String ticketId, { DateTime creationDateFrom, DateTime creationDateTo, List<String> embed, int limit, String name, String paginationDirection, String paginationIdentifier, DateTime paginationTimestamp }) async
    test('test getTicketAttachments', () async {
      // TODO
    });

    // Retrieve tickets matching the filter criteria.
    //
    //Future<TicketCollectionWSModel> getTickets({ DateTime creationDateFrom, DateTime creationDateTo, String editor, List<String> embed, int limit, String materialNumber, String operationId, String paginationDirection, String paginationIdentifier, DateTime paginationTimestamp, String ticketClassId, String ticketNumber, String ticketPriority, String ticketStateId, String ticketTitle, String workplaceId, String workplaceNumber }) async
    test('test getTickets', () async {
      // TODO
    });

    // Set the ticket activity state.
    //
    //Future<TicketActivity> setTicketActivityState(String activityId, String ticketActivityStateId, String ticketId) async
    test('test setTicketActivityState', () async {
      // TODO
    });

    // Update the ticket state.
    //
    //Future<Ticket> setTicketState(String ticketId, String ticketStateId) async
    test('test setTicketState', () async {
      // TODO
    });

    // Update the ticket.
    //
    //Future<Ticket> updateTicket(String ticketId, { WriteTicketProperties body }) async
    test('test updateTicket', () async {
      // TODO
    });

    // Update a ticket activity with the given data.
    //
    //Future<TicketActivity> updateTicketActivity(String activityId, String ticketId, { WriteTicketActivityProperties body }) async
    test('test updateTicketActivity', () async {
      // TODO
    });

    // Adds new Data to a ticket activity attachment.
    //
    //Future<String> updateTicketActivityAttachmentData(String data, String activityId, String attachmentId, String mimeType, String ticketId) async
    test('test updateTicketActivityAttachmentData', () async {
      // TODO
    });

    // Create a new ticket attachment data.
    //
    //Future<String> updateTicketAttachmentData(String data, String attachmentId, String mimeType, String ticketId) async
    test('test updateTicketAttachmentData', () async {
      // TODO
    });

  });
}
