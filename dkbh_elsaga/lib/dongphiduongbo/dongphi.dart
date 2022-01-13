import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:dkbh_elsaga/dongphiduongbo/dongphi1.dart';
import 'package:dkbh_elsaga/model/thanhpho.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dongphi extends StatefulWidget {
  @override
  _State createState() => _State();
}
class _State extends State<Dongphi> {
  City? selectTp;
  List<City> listTp = [];
  getCity() async {//City
    const String url = 'https://api.dangkiem.online/api/City';
    http.Response response = await http.get(Uri.parse(url));
    List<dynamic> jsonResponse = jsonDecode(response.body)["city"];
    setState(() {
      listTp = List<City>.from(
          jsonResponse.map((it) => City.fromJson(it)));
    });
  }
  @override
  void initState() {
    super.initState();
    getCity();
  }
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Image.asset('images/logo.png', width: 40,height: 40),
              Text('ĐÓNG PHÍ ĐƯỜNG BỘ TRỰC TUYẾN',
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
              ClipRRect(
                child: Container(
                  width: 350,
                  height: 80,
                  child: Column(
                    children: <Widget>[
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                          labelText: 'Họ và tên',
                          hintText: 'Nhập họ và tên',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ClipRRect(
                child: Container(
                  width: 350,
                  height: 80,
                  child: Column(
                    children: <Widget>[
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                          labelText: 'Số điện thoại',
                          hintText: 'Nhập số điện thoại',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ClipRRect(
                child: Container(
                  width: 350,
                  height: 80,
                  child: Column(
                    children: <Widget>[
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                          labelText: 'Biển số xe',
                          hintText: 'Nhập biển số xe',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ClipRRect(
                child: Container(
                  width: 350,
                  height: 80,
                  child: Column(
                    children: <Widget>[
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                          labelText: 'Địa chỉ nhận tem phí đường bộ',
                          hintText: 'Nhập địa tem phí đường bộ',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ClipRRect(
                child: Container(
                  width: 350,
                  padding: EdgeInsets.only(top: 8),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: DropdownButton<City>(
                    underline: Container(color: Colors.transparent),
                    hint: const Text(" Tỉnh/Tp"),
                    value: selectTp,
                    iconSize: 36,
                    isExpanded: true,
                    items: listTp.map((City item) {
                      return DropdownMenuItem<City>(
                        child: Text("TP " + item.name),
                        value: item,
                      );
                    }).toList(),
                    onChanged: (value) {
                      selectTp = value;
                    },
                  ),
                ),
              ),
              SizedBox(height: 20),
              ClipRRect(
                child:Container(
                  width: 120,
                  height: 40,
                  child: TextButton(
                    child: Text('TIẾP TỤC', style: TextStyle(fontSize: 15)),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                      primary: Colors.white,
                      shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(7))),
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context)=>  Dongphi1(
                          ),
                        ),
                      );
                    },
                  ),
                ) ,
              ),
            ],
          ),
        ),
      ),
    );
  }
}