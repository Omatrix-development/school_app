import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(color: Colors.amber),
                  ),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.web_outlined),
                        Text('مرجباَ ! '),
                        Text(
                            'اهلا وسهلاّ بككم في مجمع وصرح العلم "مجمع الأثرية"'),
                      ],
                    ),
                  ),
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
