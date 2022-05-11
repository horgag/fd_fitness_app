class CycleEndModel {
  const CycleEndModel(this.dateTime);
  CycleEndModel.fromJson(Map<String, dynamic> json)
      : dateTime = json[lastCycleEndDateKey] != null ? DateTime.fromMillisecondsSinceEpoch(json[lastCycleEndDateKey]) : null;

  final DateTime? dateTime;

  Map<String, dynamic> toJson() => <String, dynamic>{
        lastCycleEndDateKey: dateTime?.millisecondsSinceEpoch,
      };

  bool get isExpired => dateTime == null ? true : DateTime.now().difference(dateTime!).inDays >= _daysInMonth;

  static const int _daysInMonth = 30;
  static const String lastCycleEndDateKey = 'lastCycleEndDateKey';
}
