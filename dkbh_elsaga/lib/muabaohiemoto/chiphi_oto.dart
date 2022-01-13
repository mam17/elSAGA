import 'package:dkbh_elsaga/muabaohiemoto/TNDS_oto.dart';
import 'package:dkbh_elsaga/muabaohiemoto/thanhtoan_oto.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class CPoto extends StatefulWidget {

  @override
  _CPotoState createState() => _CPotoState();
}

class _CPotoState extends State<CPoto> {
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
      body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Image.asset('images/logo.png', width: 40,height: 40),
              Text('CHI PHÍ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.normal,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              DottedBorder(
                color: Colors.black,
                strokeWidth: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        "Phí kiểm định",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(15),
                      width: 120,
                      height: 30,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text(""),
                    )
                  ],
                ),
              ),
               DottedBorder(
                  color: Colors.black,
                  strokeWidth: 1,
                  child: Container(
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "MÃ ƯU ĐÃI",
                            style: TextStyle(fontSize: 20,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 40,
                          child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)
                                ),
                              ),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            width: 120,
                            height: 45,
                            color: Colors.orangeAccent,
                            child: TextButton(
                              child: const Text('ÁP DỤNG'),
                              style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: Colors.blue,
                                onSurface: Colors.grey,
                              ),
                              onPressed: () {
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        "TỔNG CHI PHÍ",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(15),
                      width: 200,
                      height: 30,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text(""),
                    )
                  ],
                ),
              ),
              SizedBox(height: 300),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: 120,
                      height: 45,
                      color: Color.fromRGBO(111, 70, 2, 1.0),
                      child: TextButton(
                        child: const Text('QUAY LẠI'),
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.brown,
                          onSurface: Colors.grey,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context)=>  TNDS_oto(
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: 120,
                      height: 45,
                      color: Colors.orangeAccent,
                      child: TextButton(
                        child: const Text('THANH TOÁN'),
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.amber,
                          onSurface: Colors.grey,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context)=>  Thanhtoanoto(
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
    );
  }
}
