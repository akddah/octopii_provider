import 'dart:async';

import 'package:octopii_provier_app/core/helpers/event_bus.dart';
import 'package:octopii_provier_app/core/utils/utils/app_logger.dart';
import 'package:octopii_provier_app/models/list_holidays/list_holidays_response_model.dart';
class DeleteDataEvent {
  final int id; // Use the ID to find and delete the holiday

  DeleteDataEvent({required this.id});
}
// Define events
class AddDataEvent {
  final List<HolidayResponse> response;

  AddDataEvent({required this.response});
}

class RetrieveDataEvent {
  // Placeholder for any additional logic needed for retrieval
}

// Define the event bus handlers
class EventBusHandlers {
  // Factory constructor to return the same instance
  factory EventBusHandlers() => _instance;

  EventBusHandlers._internal() {
    _eventBus = EventBus();
    AppLogger().info('EventBusHandlers initialized'); // Log when initialized
  }

  // Singleton instance
  static final EventBusHandlers _instance = EventBusHandlers._internal();

  late final EventBus _eventBus;
  final List<HolidayResponse> _holidays = <HolidayResponse>[];
  final List<StreamSubscription<dynamic>> _subscriptions = <StreamSubscription<dynamic>>[];


  void listenToRetrieveData(void Function(RetrieveDataEvent) onRetrieveData) {
    AppLogger().info('Listening to RetrieveDataEvent');
    final StreamSubscription<RetrieveDataEvent> subscription = _eventBus.on<RetrieveDataEvent>().listen((RetrieveDataEvent event) {
      AppLogger().info('RetrieveDataEvent fired');
      onRetrieveData(event);
    });
    _subscriptions.add(subscription);
  }
  List<HolidayResponse> retrieveData() => List<HolidayResponse>.from(_holidays);


  void listenToAddData(void Function(AddDataEvent) onDataUpdate) {
    AppLogger().info('Listening to AddDataEvent');
    final StreamSubscription<AddDataEvent> subscription = _eventBus.on<AddDataEvent>().listen((AddDataEvent event) {
      _holidays.addAll(event.response);
      onDataUpdate(AddDataEvent(response: List<HolidayResponse>.from(_holidays)));
    });
    _subscriptions.add(subscription);
  }

  void addData(List<HolidayResponse> response) {
    AppLogger().info('Firing AddDataEvent with response: $response');
    _eventBus.fire(AddDataEvent(response: response));
  }


  // Listen to DeleteDataEvent
  void listenToDeleteData(void Function(DeleteDataEvent) onDeleteData) {
    AppLogger().info('Listening to DeleteDataEvent');
    final StreamSubscription<DeleteDataEvent> subscription = _eventBus.on<DeleteDataEvent>().listen((DeleteDataEvent event) {
      _holidays.removeWhere((HolidayResponse holiday) => holiday.id == event.id); // Remove by ID
      onDeleteData(event); // Notify listener
    });
    _subscriptions.add(subscription);
  }

  // Emit a DeleteDataEvent
  void deleteDataById(int id) {
    AppLogger().info('Firing DeleteDataEvent for ID: $id');
    _eventBus.fire(DeleteDataEvent(id: id));
  }

  void clearListeners() {
    AppLogger().info('Clearing all listeners');
    for (final StreamSubscription<dynamic> subscription in _subscriptions) {
      subscription.cancel();
    }
    _subscriptions.clear();
    _holidays.clear();
  }}
