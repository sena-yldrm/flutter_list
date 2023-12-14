import 'package:flutter/material.dart';

class CardveListtileKullanimi extends StatelessWidget {
  const CardveListtileKullanimi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Card ve List tile")),
      body: Center(
        child: ListView(
          //farkı children beklediği için başka elemanlar da koyabilirsin
          //reverse: true,listedeki elemanları tersten sıralayabilirsin
          children: [
            Column(
              children: [
                teklisteelamani(),
                teklisteelamani(),
                teklisteelamani(),
                teklisteelamani(),
                teklisteelamani(),
                teklisteelamani(),
                teklisteelamani(),
                teklisteelamani(),
                teklisteelamani(),
                teklisteelamani(),
                teklisteelamani(),
                teklisteelamani(),
              ],
            ),
            const Text("sena"),
            ElevatedButton(onPressed: () {}, child: const Text("buton"))
          ],
        ),
      ),
    );
  }

  SingleChildScrollView SingleChildKullan() {
    return SingleChildScrollView(
      //bunun içine almadığımızda ekrana sığmıyor
      child: Column(
        children: [
          teklisteelamani(),
          teklisteelamani(),
          teklisteelamani(),
          teklisteelamani(),
          teklisteelamani(),
          teklisteelamani(),
          teklisteelamani(),
          teklisteelamani(),
          teklisteelamani(),
          teklisteelamani(),
          teklisteelamani(),
          teklisteelamani(),
        ],
      ),
    );
  }

  Column teklisteelamani() {
    return Column(
      children: [
        Card(
          color: Colors.blue.shade100,
          //gölge ayarlama elevation ile gölgeyi arttır
          shadowColor: Colors.purpleAccent,
          elevation: 10,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: const ListTile(
            //leading: Icon(Icons.add), //sol icon
            leading:
                CircleAvatar(child: Icon(Icons.add)), //iconu daire içine aldı
            title: Text("Üst Başlık"),
            subtitle: Text("Alt Başlık"),
            trailing: Icon(Icons.add_chart_rounded), //sağ icon
          ),
          /* child: Text(
              "sena",
              style: TextStyle(fontSize: 64, color: Colors.purple),
            ), */
        ),
        const Divider(
          //bölücü
          color: Colors.blue,
          thickness: 1,
          height: 10, //en yukarıdaki elemanla olan boşluğu
          indent: 10, //soldan boşluk
          endIndent: 40, //sağdan boşluk
        )
      ],
    );
  }
}
