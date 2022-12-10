import 'dart:io';
import 'package:intl/intl.dart';

class NumberUtil {
  static String formatPrice(int price) => NumberFormat.currency(locale: Platform.localeName, symbol: "€").format(price / 100);
}
