import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListviewLayoutProblemleri extends StatelessWidget {
  const ListviewLayoutProblemleri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Listview Layout Problems"),
      ),
      body: Container(
        height: 200,
        child: ListView(
          //listeyi dikey yaptık
          scrollDirection: Axis.horizontal,
          reverse: true,
          children: [
            Container(
              width: 200,
              color: Colors.orange.shade200,
            ),
            Container(
              width: 200,
              color: Colors.orange.shade400,
            ),
            Container(
              width: 200,
              color: Colors.orange.shade600,
            ),
            Container(
              width: 200,
              color: Colors.orange.shade800,
            ),
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(width: 4, color: Colors.red),
        ),
      ),
    );
  }

  Column columnicindeliste() {
    return Column(
      children: [
        Text("basladı"),
        Expanded(
          child: ListView(
            //shrinkWrap: true ise listview çocuklarının yüksekliği kadar yer kaplar
            //shrinkWrap: false ise parent yani body kısmındaki container kadar yer kaplar
            //shrinkWrap:true, //listedeki elemanların yüksekliği kadar yer kapladı
            children: [
              Container(
                height: 200,
                color: Colors.orange.shade200,
              ),
              //şuan listview bütün sayfayı kaplıyor parentı kadar yani
              Container(
                height: 200,
                color: Colors.orange.shade400,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade600,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade800,
              ),
            ],
          ),
        ),
        Text("bitti"),
      ],
    );
  }
}
