import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var dio = Dio();
  var result='시작';

  void postDataUsingDio() async {
    var i;
    for (i = 100; i <= 150; i++) {
      print(i);
      try {
        var res = await dio.post(
          'https://sniperfactory.com/sfac/http_assignment_${i}',
          options: Options(
            headers: {
              "user-agent": "SniperFactoryBrowser",
              "authorization": "Bearer ey-12312312312312"
            },
          ),
        );
        if (res.data != null) {
          print('들어와?'); //출력됌. if문 들어오는데 break가 안됌. why????
          result = res.data;
          break; // 연결이 성공하면 루프를 빠져나갑니다.
        }
      } catch (e) {
        result = '${e}';
      }
    }
    // 루프가 끝난 후 i 값을 확인하여 어떤 정수에서 연결이 성공했는지 확인할 수 있습니다.
    print('연결 성공한 정수: $i');
    setState(() {
      // result 변수의 값이 변경되었을 때만 setState()를 호출합니다.
      result = result;
    });
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text(result),
              TextButton(
                onPressed: (){
                  postDataUsingDio();
                }, 
                child: Text('postDataUsingDio'),
              ),
            ]
            ),
        ),
      ),
    );
  }
}