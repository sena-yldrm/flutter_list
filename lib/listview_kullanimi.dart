import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

//ctrl shift p add dependency
class ListViewKullanimi extends StatelessWidget {
  ListViewKullanimi({super.key});

  final List<Ogrenci> tumOgrenciler = List.generate(
    5000,
    (index) => Ogrenci(
        index + 1, "ogrenci adi ${index + 1}", "ogrenci soyisimi ${index + 1}"),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Öğrenci Listesi"),
        ),
        body: ListViewBuilder());
  }

  // ignore: non_constant_identifier_names
  ListView ListViewBuilder() {
    return ListView.builder(
      itemBuilder: (BuildContext context, index) {
        var oankiOgrenci = tumOgrenciler[index];
        return Card(
          color:
              index % 2 == 0 ? Colors.orange.shade100 : Colors.purple.shade100,
          child: ListTile(
            onTap: () {
              if ((index + 1) % 2 == 0) {
                EasyLoading.showToast("çift sayılar tıklandı",
                    duration: const Duration(seconds: 1),
                    toastPosition: EasyLoadingToastPosition.bottom);
                EasyLoading.instance.backgroundColor = Colors.purple;
                EasyLoading.instance.textColor = Colors.black;
              } else {
                EasyLoading.showToast("tek sayılar tıklandı",
                    duration: const Duration(seconds: 2),
                    toastPosition: EasyLoadingToastPosition.bottom);
                EasyLoading.instance.backgroundColor = Colors.lightBlue;
                EasyLoading.instance.textColor = Colors.white;
                EasyLoading.instance.fontSize = 20;
              }
            },
            onLongPress: () => _alerDialogIslemleri(context, oankiOgrenci),
            title: Text(oankiOgrenci.isim),
            subtitle: Text(oankiOgrenci.soyisim),
            leading: CircleAvatar(
              child: Text(oankiOgrenci.id.toString()),
            ),
          ),
        );
      },
      itemCount: tumOgrenciler.length,
    );
  }

  ListView klasikListView() {
    return ListView(
      children: tumOgrenciler
          .map(
            (Ogrenci ogr) => ListTile(
              title: Text(ogr.isim),
              subtitle: Text(ogr.soyisim),
              leading: CircleAvatar(
                child: Text(ogr.id.toString()),
              ),
            ),
          )
          .toList(),
    );
  }
}

void _alerDialogIslemleri(BuildContext mycontext, Ogrenci secilen) {
  showDialog(
      /* 
    *bu işlem boşluğa tıkladığında show dialogun kapanmasını önlüyor
    *barrierDismissible: false, */
      //ogrenciyi çağırmamiz lazım o yuzden paranteze de ekledik
      context: mycontext,
      builder: (context) {
        //Widget Function(BuildContext) boş da olsa widget döndür
        //çağırırken de içinde context istiyormuş
        return AlertDialog(
          title: Text(secilen.toString()),
          content: SingleChildScrollView(
            //child: Text("sena" * 300),
            child: ListBody(
              children: [
                //listbody yerine column da kullanılabilir listbodynin özellikleri var reverse , mainAxis gibi
                Text("sena1" * 100),
                Text("sena2" * 50),
                Text("sena3" * 50),
              ],
            ),
          ),
          actions: [
            ButtonBar(
              //eğer çok fazla buttonun varsa bozulmadan alt alta yazıyor
              //buttonbarın içine almasaydın da alt alt yazardı ama farklı özellikler koymak istiyorsan button barı kullanabilirsin
              children: [
                TextButton(
                  onPressed: () {
                    /* 
                    *açık olan sayfadan bir geriye gelmesini sağlar
                    *Navigator.pop(context); */
                    //açık olan ekranı kapatır
                    Navigator.of(context).pop();
                  },
                  child: Text("KAPAT"),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("TAMAM"),
                ),
              ],
            ),
            /* DİREKT BÖYLE KULLANABİLİRSİN BUTTON BAR İÇİNE DE KOYABİLİRSİN
            TextButton(
              onPressed: () {},
              child: Text("KAPAT"),
            ),
            TextButton(
              onPressed: () {},
              child: Text("TAMAM"),
            ), */
          ],
        );
      });
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyisim;

  Ogrenci(this.id, this.isim, this.soyisim);

  /* return AlertDialog(
          title: Text(secilen.toString()),
  yazısını nasıl yazacagını bilmiyor bu yüzden to string yani
  *override ederek nasıl yazması gerektiiği bilgisini veriyoruz */
  @override
  String toString() {
    return "adı $isim soyadı $soyisim idsi $id";
  }
}
