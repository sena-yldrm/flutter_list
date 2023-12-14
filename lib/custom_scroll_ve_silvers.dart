import 'package:flutter/material.dart';
import 'dart:math' as matematik;

class CollapsableToolbarOrnek extends StatelessWidget {
  const CollapsableToolbarOrnek({super.key});
//TODO NASIL YAPILIR?
//TODO İlk olarak appbar gibi SliverAppBar tanımla
//TODO sonra sabit veya dinamik olarak liste fonksiyonunu hazırla

//TODO              İKİ ÇEŞİT OLUŞTURABİLİRSİN

//***************************************************************/

//TODO sonra SliverPadding ile sarmalayıp padding verebilirsin

//TODO                       ya da

////TODO SliverGrid ile nasıl oluşturacağının taslağını oluştur
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.purple,
          expandedHeight: 200,
          //en yukarıdaki elemanın gözükmğyor aşağı kaydırdığında geri yukarı çıktığında gözüküyor
          floating: false,

          // floating: true,
          // snap: true,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("sliver app bar"),
            centerTitle: false,
            background: Image.asset(
              "assets/image/kullan.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverList(
            //üyeler gibi
            //TODO Eğer sabit kendi kendi oluşturduğun listeyi kullanacaksan ListDelegate
            delegate: SliverChildListDelegate(
              sabitListeElemanlari(),
            ),
          ),
        ),
        //*Listeyi Paddingle Sarmaladık
        SliverPadding(
          padding: EdgeInsets.all(20),
          sliver: SliverList(
            //TODO Eğer dinamik kendi kendine oluşan liste kullanacaksan BuilderDelegate
            delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
                //*içerik kaç kere tekrarlansın
                childCount: 10),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(15),
          //delegate: üyeleri nasıl oluşturayım
          sliver: SliverFixedExtentList(
            delegate: SliverChildListDelegate(
              sabitListeElemanlari(),
            ),
            itemExtent: 100,
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(15),
          //delegate: üyeleri nasıl oluşturayım
          sliver: SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
                childCount: 10),
            //yüksekliği kaç olsun
            itemExtent: 300,
          ),
        ),
        //*DİNAMİK(builder ile üretilen) ELEMANLARLA BİR SATIRDA KAÇ ELEMAN OLACAĞINI SÖYLEDİĞİMİZ GRİD TÜRÜ
        SliverGrid(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
              childCount: 10),
        ),
        //*SABİT ELEMANLARLA BİR SATIRDA KAÇ ELEMAN OLACAĞINI SÖYLEDİĞİMİZ GRİD TÜRÜ
        SliverGrid(
          delegate: SliverChildListDelegate(
            sabitListeElemanlari(),
          ),
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
        ),
        //*DİNAMİK(builder ile üretilen) ELEMANLARLA BİR SATIRDAKİ BİR ELEMANIN GENİŞLİĞİNİ SÖYLEDİĞİMİZ GRİD TÜRÜ
        SliverGrid(
          gridDelegate:
              //max yüksekliği kaç olsun ona göre satırdaki eleman sayısnı ayarlayacak
              SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100),
          delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
              childCount: 10),
        ),
        SliverGrid.count(
          crossAxisCount: 6,
          children: sabitListeElemanlari(),
        ),
      ],
    );
  }

  List<Widget> sabitListeElemanlari() {
    return [
      Container(
        height: 100,
        child: Text(
          "Sabit Liste Elemanı 1",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.amber,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "Sabit Liste Elemanı 1",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.teal,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "Sabit Liste Elemanı 1",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.blue,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "Sabit Liste Elemanı 1",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.orange,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "Sabit Liste Elemanı 1",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.purple,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "Sabit Liste Elemanı 1",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.cyan,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "Sabit Liste Elemanı 1",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.blue,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "Sabit Liste Elemanı 1",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.orange,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "Sabit Liste Elemanı 1",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.purple,
        alignment: Alignment.center,
      ),
    ];
  }

  Widget _dinamikElemanUretenFonksiyon(BuildContext context, int index) {
    return Container(
      height: 100,
      child: Text(
        "Dinamik Liste Elemanı ${index + 1}",
        style: TextStyle(fontSize: 24),
        textAlign: TextAlign.center,
      ),
      color: rastgeleRenkUretme(),
      alignment: Alignment.center,
    );
  }

  Color rastgeleRenkUretme() {
    return Color.fromARGB(
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255));
  }
}
