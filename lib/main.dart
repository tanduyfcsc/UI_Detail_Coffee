import 'package:details_coffee/detailScreen.dart';
import 'package:details_coffee/detailsCoffeeWidget.dart';
import 'package:details_coffee/itemStoreCoffee.dart';
import 'package:details_coffee/storeCoffee.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Store Coffee'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  List<StoreCoffee> storeCoffees = [];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState(){
    super.initState();
    _initData();
  }

  void _initData(){
    var storeCoffee1 = new StoreCoffee(1, 'https://file.hstatic.net/1000075078/file/dan-tran-hung-dao4_96fa789dd3fc40a3a89bf6285656305d.jpg', 'DAN Trần Hưng Đạo', '461 Trần Hưng Đạo, An Hải Trung, Sơn Trà, Đà Nẵng');
    storeCoffees.add(storeCoffee1);
    var storeCoffee2 = new StoreCoffee(2, 'https://file.hstatic.net/1000075078/file/nvl5_488d3e13fdfb4f59acb7caef8ecd038d.jpg', 'DAN Nguyễn Văn Linh', 'Lô A4 - 2 Nguyễn Văn Linh, Bình Hiên, Hải Châu, Đà Nẵng');
    storeCoffees.add(storeCoffee2);
    var storeCoffee3 = new StoreCoffee(3, 'https://file.hstatic.net/1000075078/file/nui_thanh-01_e95ba3403fbd4af09627ff372152ec5c.jpg', 'DAN Núi Thành', '01 Núi Thành, Phường, Hải Châu, Đà Nẵng');
    storeCoffees.add(storeCoffee3);
    var storeCoffee4 = new StoreCoffee(4, 'https://file.hstatic.net/1000075078/file/dan-trieu-nu-vuong6_3b89f0914d9648eea90b506af2749a53.jpg', 'DAN Triệu Nữ Vương', '9 Triệu Nữ Vương, Hải Châu 2, Hải Châu, Đà Nẵng');
    storeCoffees.add(storeCoffee4);
    var storeCoffee5 = new StoreCoffee(5, 'https://file.hstatic.net/1000075078/file/btproduction__3_of_67__9cee430319024581ab0e26a23ff7db83.jpg', 'DAN Nguyễn Chí Thanh', '80A Nguyễn Chí Thanh, Hải Châu 1, Hải Châu, Đà Nẵng');
    storeCoffees.add(storeCoffee5);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title: Text(widget.title, style: TextStyle(color: Colors.white.withOpacity(0.9)),),
        ),
        body: Container(
          color: Colors.orangeAccent.withOpacity(0.4),
          child: GridView.builder(
            padding: EdgeInsets.only(top: 16, right: 8, left: 8),
            itemCount: storeCoffees.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsCoffeeWidget(storeCoffee: storeCoffees[index])));
                  },
                  child: ItemStoreCoffee(store: storeCoffees[index]));
            },
          ),
        )
    );
  }
}

