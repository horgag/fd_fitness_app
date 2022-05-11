import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

enum NotificationEventType {
  pushNotifications,
  checkInAndProgress,
  motivationAndReminders,
  accountIssues,
}

extension NotificationEventsConverter on List<String>? {
  List<NotificationEventType>? toNotificationEvents() {
    if (this == null) return null;
    return this!.map((String el) => el.toNotificationEvent()!).toList();
  }
}

extension NotificationEventConverter on String? {
  NotificationEventType? toNotificationEvent() {
    if (this == null) return null;
    return NotificationEventType.values.firstWhereOrNull(
      (NotificationEventType notificationEventType) => describeEnum(notificationEventType).toLowerCase() == this!.toLowerCase(),
    );
  }
}
