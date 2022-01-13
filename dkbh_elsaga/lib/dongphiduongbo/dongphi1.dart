
import 'package:date_time_picker/date_time_picker.dart';
import 'package:dkbh_elsaga/dongphiduongbo/chiphiDP.dart';
import 'package:flutter/material.dart';

class Dongphi1 extends StatefulWidget {
  @override
  _State createState() => _State();
}
class _State extends State<Dongphi1> {
   DateTime selectedDate = DateTime.now();
  String? valueChoose ;
  List listItem = [
    'Doanh nghiệp', 'Cá nhân'
  ];
  String? valueHinhthuc ;
  List ItemHinhthuc = [
    'Có kinh doanh vận tải', 'Không kinh doanh vận tải'
  ];

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
                  fontSize: 23,
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
                  height: 70,
                  child: Column(
                    children: <Widget>[
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                          labelText: 'Hãng xe',
                          hintText: 'Nhập hãng xe',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ClipRRect(
                child: Container(
                  width: 350,
                  height: 70,
                  child: Column(
                    children: <Widget>[
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                          labelText: 'Loại phương tiện',
                          hintText: 'Loại phương tiện',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ClipRRect(
                child: Container(
                  width: 350,
                  height: 70,
                  child: Column(
                    children: <Widget>[
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                          labelText: 'Năm sản xuất',
                          hintText: 'Nhập năm sản xuất',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ClipRRect(
                child: Container(
                  width: 350,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: DropdownButton(
                      underline: Container(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(20),
                      hint: Text(' Hình thức'),
                      dropdownColor: Colors.grey,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 36,
                      isExpanded: true,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.normal,
                      ),
                      value: valueHinhthuc,
                      onChanged: (newValue){
                        setState(() {
                          valueHinhthuc = newValue as String?;
                        });
                      },
                      items: ItemHinhthuc.map((newValue){
                        return DropdownMenuItem(
                          value: newValue,
                          child: Text(" "+newValue),
                        );
                      }).toList()
                  ),
                ),
              ),
              SizedBox(height: 20),
              ClipRRect(
                child: Container(
                  width: 350,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: DropdownButton(
                      underline: Container(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(20),
                      hint: Text(' Sở hữu'),
                      dropdownColor: Colors.grey,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 36,
                      isExpanded: true,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.normal,
                      ),
                      value: valueChoose,
                      onChanged: (newValue){
                        setState(() {
                          valueChoose = newValue as String?;
                        });
                      },
                      items: listItem.map((newValue){
                        return DropdownMenuItem(
                          value: newValue,
                          child: Text(" "+newValue),
                        );
                      }).toList()
                  ),
                ),
              ),
              SizedBox(height: 20),
              ClipRRect(
                child: Container(
                  width: 350,
                  height: 60,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: DateTimePicker(
                    type: DateTimePickerType.date,
                    dateMask: 'dd/MM/yyyy',
                    initialDatePickerMode: DatePickerMode.day,
                    firstDate: DateTime(1910),
                    lastDate: DateTime(2100),
                    initialDate: selectedDate,
                    icon: const Icon(Icons.date_range),
                    dateLabelText: 'Ngày đăng kiểm',
                    calendarTitle: 'Chọn ngày đăng kiểm',
                    cancelText: 'Huỷ bỏ',
                    confirmText: 'Xong',
                    onChanged: (value){
                      selectedDate = value as DateTime;
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
                    child: Text('TIẾP TỤC'),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                      primary: Colors.white,
                      shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(7))),
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context)=>  ChiphiDP(
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