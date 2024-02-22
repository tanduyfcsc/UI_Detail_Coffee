import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context ) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Đây là màn hình chi tiết', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
        crossAxisAlignment:  CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.only(top: 16, bottom: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'THE COFFEE HOUSE',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black54),
                ),
                Text('DAN Núi Thành',
                    style:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text('Giờ mở cửa: 07:00 - 22:00',
                    style: TextStyle(color: Colors.black87))
              ],
          ),
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(
              color: Colors.black26,
            ))),
          ),
          Container(
            padding: EdgeInsets.only(top: 20, bottom: 10, left: 2, right: 2),
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
                    child: Text('1 Nút Thành, Quận Hải Châu, Đà Nẵng, Việt Nam',
                        style: TextStyle(
                          fontSize: 16,
                        ))),
                // Divider(height: 10, thickness: 5, indent: 40, endIndent: 20, color: Colors.black,),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20, bottom: 10, left: 2, right: 2),
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
            padding: EdgeInsets.only(top: 20, bottom: 10, left: 2, right: 2),
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
        ],
      ),
    );
  }

}