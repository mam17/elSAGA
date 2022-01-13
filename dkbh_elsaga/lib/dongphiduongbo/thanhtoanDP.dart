
import 'package:dkbh_elsaga/dongphiduongbo/end.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThanhtoanDP extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ThanhtoanDP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text("CỔNG DỊCH VỤ ĐĂNG KIỂM",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w900,
            fontStyle: FontStyle.normal,
          ),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Image.asset('images/logo.png', width: 40,height: 40),
            Text('THANH TOÁN',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.normal,
              ),
            ),
            SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                color: Colors.orangeAccent,
                width: 250,
                height: 130,
                child: TextButton.icon(
                  icon: const Icon(
                    Icons.payments_sharp,
                    color: Colors.black,
                  ),
                  label: const Text('THANH TOÁN TRỰC TUYẾN',
                    style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=> Hoantat(),
                      ),
                    );
                  },
                ),

              ),
            ),
            SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                color: Colors.brown,
                width: 250,
                height: 130,
                child: TextButton.icon(
                  icon: const Icon(
                    Icons.payment_sharp,
                    color: Colors.white,
                  ),
                  label: const Text('THANH TOÁN TRỰC TIẾP',
                    style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=> Hoantat(),
                      ),
                    );
                  },
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}