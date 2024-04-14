import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'mealplan.dart';

class paymentGateway extends StatefulWidget {
  const paymentGateway({super.key});

  @override
  State<paymentGateway> createState() => _paymentGatewayState();
}

class _paymentGatewayState extends State<paymentGateway> {
  late Razorpay _razorpay;
  void openCheckout(totalCost)async{
    totalCost = totalCost * 100;        //as in razor we have the amount in points
    var options = {
      'key' : 'rzp_test_7oeZnQZwMit3UX',
      'amount' : totalCost,
      'name' : 'Rasoi Riders',
      'prefill' : {'contact' : '1234567891' , 'email' : 'example1234@gmail.com'},
      'external' : {
        'wallets' : ['paytm']
      }
    };
    try{
      _razorpay.open(options);
    }catch(e){
      debugPrint('Error : e');
    }
  }

  //For handling payment success
  void handlingPaymentSuccess (PaymentSuccessResponse response){
    Fluttertoast.showToast(msg: "Payment Succesful " + response.paymentId!, toastLength: Toast.LENGTH_SHORT);
    Navigator.pushNamed(context, '/track');
  }

  //For handling payment errors
  void handlingPaymentError (PaymentFailureResponse response){
    Fluttertoast.showToast(msg: "Payment Fail " + response.message!, toastLength: Toast.LENGTH_SHORT);
    Navigator.pushNamed(context, '/track');
  }

  //For handling the external wallet
  void handlingExternalWallet (ExternalWalletResponse response){
    Fluttertoast.showToast(msg: "External Wallet " + response.walletName!, toastLength: Toast.LENGTH_SHORT);
    Navigator.pushNamed(context, '/track');
  }

  //to clear the razorpay
  @override
  void dispose() {
    super.dispose();
    _razorpay.clear();
  }

  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlingPaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlingPaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handlingExternalWallet);
  }

  @override
  Widget build(BuildContext context) {
    final price = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Payment"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10,),
            Image.asset('assets/images/rasoi_.png',),
            const SizedBox(height: 10,),
            const Text("Welcome to Razorpay Gateway Integration",style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 30),textAlign: TextAlign.center,),
            const SizedBox(height: 30,),
            Padding(padding: const EdgeInsets.all(8.00),
            child:  Text("Rs "+price.toString(),style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25)),
            ),
            const SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              openCheckout(price);
            }, child: const Padding(
              padding: EdgeInsets.all(8.00),
              child: Text("Make Payment",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20,)),
            ),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green))
          ],
        ),
      ),

    );
  }
}



