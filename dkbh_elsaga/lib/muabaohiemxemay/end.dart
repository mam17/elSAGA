import 'package:dkbh_elsaga/main.dart';
import 'package:flutter/material.dart';
class HoanThanh_xemay extends StatefulWidget {
  @override
  _HoanThanh_xemay createState() => _HoanThanh_xemay();
}

class _HoanThanh_xemay extends State<HoanThanh_xemay> {
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
                child: Text("Cảm ơn bạn đã mua bảo hiểm TNDS dành cho xe máy",
                    style: TextStyle(fontSize: 15))
            ),
            Container(
              margin: EdgeInsets.all(10),
                child: Text("Ấn chỉ điện tử sẽ được gửi về địa chỉ email của bạn qua ứng dụng SAUTO sau khi nhân viên bổ xung thông tin va xác nhận",
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,)
            ),
            Container(
              width: 120,
              margin: EdgeInsets.only(top: 100),
              decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                child: const Text('HOÀN TẤT', style: TextStyle(fontSize: 15, color: Colors.white)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=>  Home(
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
