import 'package:flutter/material.dart';
import 'package:lab1/DetailPage.dart';
import 'package:lab1/student.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const MyAppPage(),
    );
  }
}

class MyAppPage extends StatelessWidget {
  const MyAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Student> datas = [
      Student("ทัศนีย์ มลาตรี", "643450075-1", "images/B3.jpg","about me","thatsanee@mail","https://www.facebook.com/tatsanee.tookta"),
      Student("ปรเมศวร์ สิทธิมงคล", "643450078-5", "images/Parames.jpg","about me","Parames@mail","https://www.facebook.com/kki.jik.3"),
      Student("พรธิตา ขานพล", "643450080-8", "images/B5.jpg","about me","phontita@mail","https://www.facebook.com/pornthita.hkanphol.58"),
      Student("อรัญ ศรีสวัสดิ์", "643450095-5", "images/Arun.jpg","about me","arun@mail","https://www.facebook.com/"),
      Student("กฤติยา สินโพธิ์", "643450320-4", "images/B1.jpg","about me","krittiya@mail","https://www.facebook.com/"),
      Student("อมรรัตน์ มาระเหว", "643450094-7", "images/B2.jpg","about me","amornrat@mail","https://www.facebook.com/"),
      Student("ณัฐธิดา บุญพา", "643450647-2", "images/B4.jpg","about me","nattida@mail","https://www.facebook.com/"),
      Student("รัตพงษ์ ปานเจริญ", "643450650-3", "images/Ratpong.jpg","about me","Ratpong@mail","https://www.facebook.com/"),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("My App"),
      ),
      body: ListView.builder(
          itemCount: datas.length,
          itemBuilder: (context, index) {
            return displayItem(context: context, student: datas[index]);
          }),
    );
  }

  Widget displayItem(
      {required BuildContext context, required Student student}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailPage(
                      data: student,
                    )));
      },
      child: Container(
          padding: const EdgeInsets.all(10),
          child: Row(children: [
            Hero(
              tag: "image_profile",
              child: Image(
                width: 100,
                image: AssetImage(student.image),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  student.name,
                  style: const TextStyle(fontSize: 20),
                ),
                Text(
                  student.studentid,
                  style: const TextStyle(fontSize: 12),
                )
              ],
            )
          ])),
    );
  }
}
