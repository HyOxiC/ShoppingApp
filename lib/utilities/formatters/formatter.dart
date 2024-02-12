import 'package:intl/intl.dart';

class TestFormatter{
  static String formatDate(DateTime? date){
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  static String formatCurrency(double amount){
    return NumberFormat.currency(locale: 'India', symbol: '₹').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber){

         // Assuming the format is +91-1234567890
         phoneNumber = '91$phoneNumber';
         return phoneNumber;
         
  }
}