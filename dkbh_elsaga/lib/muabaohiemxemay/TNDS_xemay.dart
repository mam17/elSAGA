import 'package:dkbh_elsaga/muabaohiemxemay/chiphi_xemay.dart';
import 'package:flutter/material.dart';

class TNDS_xemmay extends StatefulWidget {

  @override
  _TNDS_xemmayState createState() => _TNDS_xemmayState();
}

class _TNDS_xemmayState extends State<TNDS_xemmay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text("CỔNG DỊCH VỤ ĐĂNG KIỂM",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w900,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('images/logo.png', width: 40,height: 40),
                Text("MUA BẢO HIỂM TNDS XE MÁY",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350,
                  height: 80,
                  child: Column(
                    children: <Widget>[
                      TextField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                          labelText: 'Họ và tên',
                          hintText: 'Nhập họ và tên',
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 350,
                  height: 80,
                  child: Column(
                    children: <Widget>[
                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                          labelText: 'Số điện thoại',
                          hintText: 'Nhập số điện thoại',
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 350,
                  height: 80,
                  child: Column(
                    children: <Widget>[
                      TextField(
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          labelText: 'Email',
                          hintText: 'Nhập email',
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 350,
                  height: 80,
                  child: Column(
                    children: <Widget>[
                      TextField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                          labelText: 'Loại xe',
                          hintText: 'Nhập loại xe',
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Text("Tải lên hình ảnh đăng ký xe"),
                    ),
                    Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                         color: Colors.brown,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextButton(
                          child: Text('UPLOAD', style: TextStyle(fontSize: 15, color: Colors.red)),
                          onPressed: (){}
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350,
                  height: 80,
                  child: Column(
                    children: <Widget>[
                      TextField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                          labelText: 'Lựa chọn hãng bảo hiểm',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 120,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                    child: Text('Tiếp tục', style: TextStyle(fontSize: 15, color: Colors.white)),
                    onPressed:() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context)=>  CPxemay(
                          ),
                        ),
                      );
                    }
                  ),
                )
              ],
          ),
        ),
      ),
    );
  }
}