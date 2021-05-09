import 'package:flutter/material.dart';
import 'package:i_am_stem/navigation-drawer.dart';
import '../payment_pages/PaypalPayment.dart';

class Donate extends StatefulWidget {
  static const String routeName = '/donate';

  @override
  _DonateState createState() => _DonateState();
}

class _DonateState extends State<Donate> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: _makeAppBar(),
      drawer: NavigationDrawer(),
      body: Center(
        child: Container(
                child: Center(
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: (){

                        // make PayPal payment

                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) => PaypalPayment(
                              onFinish: (number) async {
                                // payment done
                                print('order id: '+number);
                              },
                            ),
                          ),
                        );

                        
                      },
                      child: Text('Pay with Paypal', textAlign: TextAlign.center,),
                    ),

                  ],
                ),
        ),
      ),
      ),
    );
  }

  PreferredSizeWidget _makeAppBar() {
    return AppBar(
      title: Text("Donate"),
    );
  }
}