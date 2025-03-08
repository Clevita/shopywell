import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:shopywell/Constants.dart';

class StripeService {
  StripeService._();
  static StripeService instance = StripeService._();
  Future<void> MakePayment() async {
    try {
      final String? paymentIntentClientSecret =
          await _createPymentIntent(amount: 12, currency: 'usd');
      if (paymentIntentClientSecret == null) {
        return null;
      }
      await Stripe.instance.initPaymentSheet(
          paymentSheetParameters: SetupPaymentSheetParameters(paymentIntentClientSecret:paymentIntentClientSecret,merchantDisplayName: "Clevita Merine pereira" ),);
          await _processPyment();
    } catch (e) {
      print(e.toString());
    }
  }

  Future<String?> _createPymentIntent(
      {required int amount, required String currency}) async {
    try {
      final Dio dio = Dio();
      Map<String, dynamic> paymentdata = {
        "amount": _ClculateAmount(amount),
        "currency": currency
       
      };
      var responce = await dio.post(
        // "http://api.stripe.com/v1/payment_intents",
        "https://api.stripe.com/v1/payment_intents",
          data: paymentdata,
          options:
              Options(contentType: Headers.formUrlEncodedContentType, headers: {
            "Authorization": "Bearer ${stripeSecretKey}",
            "Content-Type": 'application/x-www-form-urlencoded'
          }));
      if (responce.data != null) {
        print(responce.data);
        return responce.data['client_secret'];
      }
      return null;
    } catch (e) {
      print(e);
    }
    return null;
  }
  Future<void> _processPyment() async{
    try {
      await Stripe.instance.presentPaymentSheet();
    } catch (e) {
      print(e);
    }
  }

  String _ClculateAmount(int amount) {
    var calculatedamount = amount * 100;
    return calculatedamount.toString();
  }
}
