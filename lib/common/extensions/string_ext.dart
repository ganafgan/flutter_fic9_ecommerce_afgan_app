import 'package:intl/intl.dart';

extension StrinExt on String {
  String get currencyFormat => NumberFormat.currency(
        locale: 'id',
        symbol: 'Rp. ',
        decimalDigits: 0,
      ).format(int.parse(this));
}
