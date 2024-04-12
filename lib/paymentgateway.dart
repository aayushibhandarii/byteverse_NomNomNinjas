import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class paymentGateway extends StatefulWidget {
  const paymentGateway({super.key});

  @override
  State<paymentGateway> createState() => _paymentGatewayState();
}

class _paymentGatewayState extends State<paymentGateway> {
  late Razorpay _razorpay;
  TextEditingController amountController = TextEditingController();
  void openCheckout(amount)async{
    amount = amount * 100;        //as in razor we have the amount in points
    var options = {
      'key' : 'rzp_test_7oeZnQZwMit3UX',
      'amount' : amount,
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
  }

  //For handling payment errors
  void handlingPaymentError (PaymentFailureResponse response){
    Fluttertoast.showToast(msg: "Payment Fail " + response.message!, toastLength: Toast.LENGTH_SHORT);
  }

  //For handling the external wallet
  void handlingExternalWallet (ExternalWalletResponse response){
    Fluttertoast.showToast(msg: "External Wallet " + response.walletName!, toastLength: Toast.LENGTH_SHORT);
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
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text("Payment"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100,),
            //Image.network('https://www.vector-eps.com/wp-content/gallery/corporate-logo-vectors/corporate-logo-vector10.jpg',height: 100,width: 100,),
            Text("hello"),
            SizedBox(height: 10,),
            Text("Welcome to Razorpay Gateway Integration",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),textAlign: TextAlign.center,),
            SizedBox(height: 30,),
            Padding(padding: EdgeInsets.all(8.00),
            child: TextFormField(
              cursorColor: Colors.white,
              autofocus: false,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: "Enter Amount to be paid",
                labelStyle: TextStyle(fontSize: 15.0, color: Colors.white),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 1.0,
                  )
                ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 1.0,
                  )
              ),
              errorStyle: TextStyle(color: Colors.red,fontSize: 15)
              ),
              controller: amountController,
              validator: (value){
                if(value==null || value.isEmpty){
                  return 'Please Enter Amount to be paid';
                }
                return null;
              },
            )
              ,),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              if (amountController.text.toString().isNotEmpty){
                setState(() {
                  int amount = int.parse(amountController.text.toString());
                  openCheckout(amount);
                });
              }
            }, child: Padding(
              padding: EdgeInsets.all(8.00),
              child: Text("MAke Payment"),
            ),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green))
          ],
        ),
      ),

    );
  }
}
