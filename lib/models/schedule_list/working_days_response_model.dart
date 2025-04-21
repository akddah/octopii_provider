import '../base.dart';

class WorkingDaysModel extends Model {
  late final String day;
  late bool modifyedOff;
  late final bool off;
  late final double from, to;
  late DateTime fromDate, toDate;

  double get convertFromToDecimal {
    return fromDate.hour + fromDate.minute / 60.0;
  }

  double get convertToToDecimal {
    return toDate.hour + toDate.minute / 60.0;
  }

  bool get hasEdits => from != convertFromToDecimal || to != convertToToDecimal || modifyedOff != off;

  WorkingDaysModel.fromJson([Map<String, dynamic>? json]) {
    id = stringFromJson(json, "day");
    day = stringFromJson(json, "day");
    off = boolFromJson(json, "off");
    modifyedOff = boolFromJson(json, "off");
    from = doubleFromJson(json, "from");
    to = doubleFromJson(json, "to");
    final now = DateTime.now();
    fromDate = now.copyWith(hour: from.floor(), minute: ((from - from.floor()) * 60).round());
    toDate = now.copyWith(hour: to.floor(), minute: ((to - to.floor()) * 60).round());
  }

  @override
  bool operator ==(other) {
    return other is WorkingDaysModel && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;

  Map<String, dynamic> toMap() => {
        "day": day,
        "off": modifyedOff,
        "from": convertFromToDecimal,
        "to": convertToToDecimal,
      };

  @override
  Map<String, dynamic> toJson() => {
        "day": day,
        "off": off,
        "from": from,
        "to": to,
      };
}
