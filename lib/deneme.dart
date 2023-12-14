import 'package:flutter/material.dart';

class DenemeList extends StatelessWidget {
  DenemeList({super.key});
  //liste urettim
  final List<Sena> OgrenciListesi = List.generate(
    200,
    (index) => Sena("ad:${index + 1}", index, "soyad:${index + 1}"),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Deneme Ogrenci Listesi"),
      ),
      body: ListView.builder(
          itemBuilder: (BuildContext context, index) {
            return Card(
              child: ListTile(
                title: Text(OgrenciListesi[index].ad),
                subtitle: Text(OgrenciListesi[index].soyad),
                leading: CircleAvatar(
                  child: Text(
                    OgrenciListesi[index + 1].id.toString(),
                  ),
                ),
              ),
            );
          },
          itemCount: OgrenciListesi.length),
    );
  }
}
/* ListTile(
    title: Text(OgrenciListesi[Index].ad),
    subtitle: Text(OgrenciListesi[Index].soyad),
   ),    */

//Listede parametre olarak alabilmem için class oluşturdum
class Sena {
  int id;
  String ad, soyad;
  Sena(this.ad, this.id, this.soyad);
}
