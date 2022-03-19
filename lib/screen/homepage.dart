import 'package:alathariahstudeint/models/informatins.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: background,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.ac_unit,
            color: Colors.amber,
          ),
        ),
        title: const Text(
          'مجمع الأثرية',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.ac_unit,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'أهلا وسهلا بكم في مجمع  دار العلوم',
                style: TextStyle(
                    color: Color(0xFF2A3447),
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'My Courses',
                    style: TextStyle(
                        color: Color(0xFF2A3447),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    selectcoursr(
                        colorbakground: const [
                          Color(0xFFFFAC71),
                          Color(0xFFFF8450),
                        ],
                        titel: 'مادة العقيدة',
                        imagetecher:
                            'https://media.cnn.com/api/v1/images/stellar/prod/150415184842-suuni-shia-islam-3.jpg?q=x_4,y_202,h_2183,w_3879,c_crop/h_720,w_1280',
                        techername: 'الشيخ معاذ الزغبي',
                        logo:
                            'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80'),
                    selectcoursr(
                        colorbakground: const [
                          Color(0xFF02AAB0),
                          Color(0xFF00CDAC),
                        ],
                        titel: 'مادة العقيدة',
                        imagetecher:
                            'https://media.cnn.com/api/v1/images/stellar/prod/150415184842-suuni-shia-islam-3.jpg?q=x_4,y_202,h_2183,w_3879,c_crop/h_720,w_1280',
                        techername: 'الشيخ معاذ الزغبي',
                        logo:
                            'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80'),
                    selectcoursr(
                        colorbakground: const [
                          Color(0xFFFFAC71),
                          Color(0xFFFF8450),
                        ],
                        titel: 'مادة العقيدة',
                        imagetecher:
                            'https://media.cnn.com/api/v1/images/stellar/prod/150415184842-suuni-shia-islam-3.jpg?q=x_4,y_202,h_2183,w_3879,c_crop/h_720,w_1280',
                        techername: 'الشيخ معاذ الزغبي',
                        logo:
                            'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80')
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

Widget selectcoursr(
    {required List<Color> colorbakground,
    required String titel,
    required String imagetecher,
    required String techername,
    required String logo}) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: InkWell(
      onTap: () {
        print('object');
      },
      child: Container(
        height: 330,
        width: 261,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colorbakground,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Color(0xFFFFAC71),
              offset: Offset(
                0.2,
                0.2,
              ), //Offset
              blurRadius: 10.0,
              //  spreadRadius: 2.0,
            ), //BoxShadow
            BoxShadow(
              color: Colors.white,
              offset: Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ),
            //BoxShadow
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 85.0, right: 85, top: 50, bottom: 20),
              child: SizedBox(child: Image.network(logo)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                titel,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, right: 8, bottom: 10),
                      child: Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(imagetecher),
                          ),
                        ),
                      ),
                    )),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      techername,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
