import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MedicalicHome(),
    );
  }
}

class MedicalicHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        title: Column(
          children: [
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Medi',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                  TextSpan(
                    text: 'calic',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Your Health, Our Priority.',
              style: TextStyle(
                fontWeight: FontWeight.w100,
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ],
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black12,
                width: 1.0,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(80),
              color: Colors.transparent,
            ),
            child: Icon(Icons.search),
          ),
        ),
        backgroundColor: Color(0xFFF4F4F4),
        shadowColor: Colors.transparent,
        actions: [
          UnconstrainedBox(
            child: LimitedBox(
              maxWidth: 70,
              maxHeight: 70,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black12,
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(80),
                    color: Colors.transparent,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Image.network(
                        'https://www.gstatic.com/android/keyboard/emojikitchen/20201001/u1f920/u1f920_u1f921.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        // 중앙에 수직 스크롤 가능한 위젯을 추가
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 여기에 내용을 추가할 수 있습니다.
                // 예를 들어,
                Text(
                  'Sample Text 1',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text('Sample Text 2'),
                // 추가적인 위젯을 추가하거나 원하는 내용을 표시하세요.
              ],
            ),
          ),
        ),
      ),
    );
  }
}
