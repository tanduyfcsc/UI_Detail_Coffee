import 'package:details_coffee/storeCoffee.dart';
import 'package:flutter/material.dart';

import 'detailScreen.dart';

class DetailsCoffeeWidget extends StatelessWidget{
  final StoreCoffee storeCoffee;

  DetailsCoffeeWidget({
    required this.storeCoffee
});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            '${storeCoffee.image}',
            height: 400,
            fit: BoxFit.fill,
          ),
          FractionallySizedBox(
            widthFactor: 1.0,
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                      color: Colors.black26,
                    )),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'THE COFFEE HOUSE',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black54),
                  ),
                  Text('${storeCoffee.name}',
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text('Giờ mở cửa: 07:00 - 22:00',
                      style: TextStyle(color: Colors.black87))
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 2, right: 2),
            child: Row(
              children: [
                Stack(alignment: Alignment.center, children: [
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.near_me_outlined))
                ]),
                Expanded(
                    child: Text('${storeCoffee.location}',
                        style: TextStyle(
                          fontSize: 16,
                        ))),
                // Divider(height: 10, thickness: 5, indent: 40, endIndent: 20, color: Colors.black,),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 2, right: 2),
            child: Row(
              children: [
                Stack(alignment: Alignment.center, children: [
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_border),
                  )
                ]),
                Container(
                    padding: EdgeInsets.only(left: 4),
                    child: Expanded(
                        child: Text('Thêm vào danh sách yêu thích ',
                            style: TextStyle(
                              fontSize: 16,
                            ))))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 2, right: 2),
            child: Row(
              children: [
                Stack(alignment: Alignment.center, children: [
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.call))
                ]),
                Expanded(
                    child: Text('Liên hệ',
                        style: TextStyle(
                          fontSize: 16,
                        ))),
              ],
            ),
          ),
          GestureDetector(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen()));},
            child: Container(
              padding: EdgeInsets.only(top: 16),
              child: Stack(alignment: Alignment.center, children: [
                Center(
                  child: Container(
                    width: 350,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Đặt sản phẩm',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                    Text(
                      'Tự đến lấy tại cửa hàng',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )
              ]),
            ),
          )
        ],
      ),
    );
  }

}