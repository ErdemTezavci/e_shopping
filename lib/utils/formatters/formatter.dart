import 'package:intl/intl.dart';

class TFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-mm-yyyy').format(date); // Customise the date  format  as needed
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    // asuming a 10-digit US phone Number format : (123) 456-7890
    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) (${phoneNumber.substring(3, 6)}) (${phoneNumber.substring(6)})';
    } else if (phoneNumber.length == 11) {
      return '(${phoneNumber.substring(0, 4)}) (${phoneNumber.substring(4, 7)}) (${phoneNumber.substring(7)})';
    }
    // Add more custom phone number formatting logicfor different formats if needed
    return phoneNumber;
  }
  
  // Not fully tested.
  /*static String InternationelFormatPhoneNumber(String phoneNumber) {
    // remove any non-digit characters from the phone number 
    var digitsOnly = phoneNumber.replaceAll((r'\D'), '');

    // extract the country  code from digitsOnly
    String countryCode = '+${digitsOnly.substring(0, 2)}';
    digitsOnly = digitsOnly.substring(2);

    // Add the remaining digits with proper formatting
    final formatttedNumber = StringBuffer();
    formatttedNumber.write('($countryCode)');

    int i = 0;
    while (i < digitsOnly.length) {
      int groupLength = 2;
      if (i == 0 && countryCode == '+1') {
        groupLength = 3;
      }

      int end  = i + groupLength;
      formatttedNumber.write(digitsOnly.substring(i, end));

      if (end < digitsOnly.length) {
        formatttedNumber.write(' ');
      }
      i = end;
    }
  }*/
}