import 'package:flutter/material.dart';

class GridViewOrnek extends StatelessWidget {
  const GridViewOrnek({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        //100 tane eleman olsun
        itemCount: 100,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: Container(
              //her bir eleman oluştuğunda bunu döndür
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.purple.shade500,
                    width: 5,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.purple,
                    offset: Offset(20, 10),
                    blurRadius: 20,
                  ),
                ],
                //gradient verirsen colorın kullanımı kalkar
                color: Colors.teal[100 * ((index + 1) % 9)],
                gradient: LinearGradient(colors: [
                  Colors.pinkAccent.shade100,
                  Colors.purple.shade300,
                  Colors.blue.shade400
                ], begin: Alignment.bottomCenter, end: Alignment.bottomCenter),
                image: DecorationImage(
                  image: AssetImage(
                    "assets/image/kullan.png",
                  ),
                  fit: BoxFit.cover,
                  //resmi yukarıdan başlatacak dışarıdan verdiğin aligment bunu eziyor
                  alignment: Alignment.bottomCenter,
                ),
              ),
              margin: EdgeInsets.all(20),
              child: Text(
                "mrb flutter ${index + 1}",
                textAlign: TextAlign.end,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            onTap: () => debugPrint("mrb flutter ${index + 1} tıklanıldı"),
            onDoubleTap: () =>
                debugPrint("mrb flutter ${index + 1} çift tıklanıldı"),
            onLongPress: () =>
                debugPrint("mrb flutter ${index + 1} uzun tıklanıldı"),
            onHorizontalDragStart: (e) =>
                debugPrint("mrb flutter ${index + 1} sürüklendi  $e"),
          );
        });
  }
}
/**
 * return GridView.count(
      //soldan sağa kaç eleman kullanılacak
      crossAxisCount: 3,
      //sonuncu elamana geldiğinde daha çok kaydırmaya çalıştığında çıkan mavi sey
      //false yaparsan aktif true yaparsan aktif olmuyor
      primary: true,
      //elemanları yukarudan aşağıya değil sağdan sola sıraladı
      scrollDirection: Axis.horizontal,
      //her öğenin etrafında 10 piksellik boşluk bırak
      padding: EdgeInsets.all(10),
      //soldan sağa sütunlar arası boşluk
      crossAxisSpacing: 20,
      //aşağıdan yukarı satırlar arası boşluk
      mainAxisSpacing: 40,
      children: [
        Container(
          //childları y ekseninde ortaladı yazıyı kutunun ortasına getirdi
          alignment: Alignment.center,
          color: Colors.orange.shade200,
          child: Text(
            "mrb flutter",
            //texti x ekseninde ortaladı
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          //childları y ekseninde ortaladı yazıyı kutunun ortasına getirdi
          alignment: Alignment.center,
          color: Colors.orange.shade200,
          child: Text(
            "mrb flutter",
            //texti x ekseninde ortaladı
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          //childları y ekseninde ortaladı yazıyı kutunun ortasına getirdi
          alignment: Alignment.center,
          color: Colors.orange.shade200,
          child: Text(
            "mrb flutter",
            //texti x ekseninde ortaladı
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          //childları y ekseninde ortaladı yazıyı kutunun ortasına getirdi
          alignment: Alignment.center,
          color: Colors.orange.shade200,
          child: Text(
            "mrb flutter",
            //texti x ekseninde ortaladı
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          //childları y ekseninde ortaladı yazıyı kutunun ortasına getirdi
          alignment: Alignment.center,
          color: Colors.orange.shade200,
          child: Text(
            "mrb flutter",
            //texti x ekseninde ortaladı
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          //childları y ekseninde ortaladı yazıyı kutunun ortasına getirdi
          alignment: Alignment.center,
          color: Colors.orange.shade200,
          child: Text(
            "mrb flutter",
            //texti x ekseninde ortaladı
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          //childları y ekseninde ortaladı yazıyı kutunun ortasına getirdi
          alignment: Alignment.center,
          color: Colors.orange.shade200,
          child: Text(
            "mrb flutter",
            //texti x ekseninde ortaladı
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          //childları y ekseninde ortaladı yazıyı kutunun ortasına getirdi
          alignment: Alignment.center,
          color: Colors.orange.shade200,
          child: Text(
            "mrb flutter",
            //texti x ekseninde ortaladı
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          //childları y ekseninde ortaladı yazıyı kutunun ortasına getirdi
          alignment: Alignment.center,
          color: Colors.orange.shade200,
          child: Text(
            "mrb flutter",
            //texti x ekseninde ortaladı
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          //childları y ekseninde ortaladı yazıyı kutunun ortasına getirdi
          alignment: Alignment.center,
          color: Colors.orange.shade200,
          child: Text(
            "mrb flutter",
            //texti x ekseninde ortaladı
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          //childları y ekseninde ortaladı yazıyı kutunun ortasına getirdi
          alignment: Alignment.center,
          color: Colors.orange.shade200,
          child: Text(
            "mrb flutter",
            //texti x ekseninde ortaladı
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          //childları y ekseninde ortaladı yazıyı kutunun ortasına getirdi
          alignment: Alignment.center,
          color: Colors.orange.shade200,
          child: Text(
            "mrb flutter",
            //texti x ekseninde ortaladı
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          //childları y ekseninde ortaladı yazıyı kutunun ortasına getirdi
          alignment: Alignment.center,
          color: Colors.orange.shade200,
          child: Text(
            "mrb flutter",
            //texti x ekseninde ortaladı
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          //childları y ekseninde ortaladı yazıyı kutunun ortasına getirdi
          alignment: Alignment.center,
          color: Colors.orange.shade200,
          child: Text(
            "mrb flutter",
            //texti x ekseninde ortaladı
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          //childları y ekseninde ortaladı yazıyı kutunun ortasına getirdi
          alignment: Alignment.center,
          color: Colors.orange.shade200,
          child: Text(
            "mrb flutter",
            //texti x ekseninde ortaladı
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          //childları y ekseninde ortaladı yazıyı kutunun ortasına getirdi
          alignment: Alignment.center,
          color: Colors.orange.shade200,
          child: Text(
            "mrb flutter",
            //texti x ekseninde ortaladı
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
 */

/**
 * return GridView.extent(
      //tek bir elemanın max yüksekliği bir satıra dört beş tane sığdır diyemiyoruz GridView.count gibi
      //yüksekliğe göre sığdır
      maxCrossAxisExtent: 200,
      //sonuncu elamana geldiğinde daha çok kaydırmaya çalıştığında çıkan mavi sey
      //false yaparsan aktif true yaparsan aktif olmuyor
      primary: true,
      //elemanları yukarudan aşağıya değil sağdan sola sıraladı
      scrollDirection: Axis.vertical,
      //her öğenin etrafında 10 piksellik boşluk bırak
      padding: EdgeInsets.all(10),
      //soldan sağa sütunlar arası boşluk
      crossAxisSpacing: 20,
      //aşağıdan yukarı satırlar arası boşluk
      mainAxisSpacing: 40,
      children: [
        Container(
          //childları y ekseninde ortaladı yazıyı kutunun ortasına getirdi
          alignment: Alignment.center,
          color: Colors.orange.shade200,
          child: Text(
            "mrb flutter",
            //texti x ekseninde ortaladı
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          //childları y ekseninde ortaladı yazıyı kutunun ortasına getirdi
          alignment: Alignment.center,
          color: Colors.orange.shade200,
          child: Text(
            "mrb flutter",
            //texti x ekseninde ortaladı
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          //childları y ekseninde ortaladı yazıyı kutunun ortasına getirdi
          alignment: Alignment.center,
          color: Colors.orange.shade200,
          child: Text(
            "mrb flutter",
            //texti x ekseninde ortaladı
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          //childları y ekseninde ortaladı yazıyı kutunun ortasına getirdi
          alignment: Alignment.center,
          color: Colors.orange.shade200,
          child: Text(
            "mrb flutter",
            //texti x ekseninde ortaladı
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          //childları y ekseninde ortaladı yazıyı kutunun ortasına getirdi
          alignment: Alignment.center,
          color: Colors.orange.shade200,
          child: Text(
            "mrb flutter",
            //texti x ekseninde ortaladı
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          //childları y ekseninde ortaladı yazıyı kutunun ortasına getirdi
          alignment: Alignment.center,
          color: Colors.orange.shade200,
          child: Text(
            "mrb flutter",
            //texti x ekseninde ortaladı
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          //childları y ekseninde ortaladı yazıyı kutunun ortasına getirdi
          alignment: Alignment.center,
          color: Colors.orange.shade200,
          child: Text(
            "mrb flutter",
            //texti x ekseninde ortaladı
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          //childları y ekseninde ortaladı yazıyı kutunun ortasına getirdi
          alignment: Alignment.center,
          color: Colors.orange.shade200,
          child: Text(
            "mrb flutter",
            //texti x ekseninde ortaladı
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          //childları y ekseninde ortaladı yazıyı kutunun ortasına getirdi
          alignment: Alignment.center,
          color: Colors.orange.shade200,
          child: Text(
            "mrb flutter",
            //texti x ekseninde ortaladı
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          //childları y ekseninde ortaladı yazıyı kutunun ortasına getirdi
          alignment: Alignment.center,
          color: Colors.orange.shade200,
          child: Text(
            "mrb flutter",
            //texti x ekseninde ortaladı
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          //childları y ekseninde ortaladı yazıyı kutunun ortasına getirdi
          alignment: Alignment.center,
          color: Colors.orange.shade200,
          child: Text(
            "mrb flutter",
            //texti x ekseninde ortaladı
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          //childları y ekseninde ortaladı yazıyı kutunun ortasına getirdi
          alignment: Alignment.center,
          color: Colors.orange.shade200,
          child: Text(
            "mrb flutter",
            //texti x ekseninde ortaladı
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          //childları y ekseninde ortaladı yazıyı kutunun ortasına getirdi
          alignment: Alignment.center,
          color: Colors.orange.shade200,
          child: Text(
            "mrb flutter",
            //texti x ekseninde ortaladı
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          //childları y ekseninde ortaladı yazıyı kutunun ortasına getirdi
          alignment: Alignment.center,
          color: Colors.orange.shade200,
          child: Text(
            "mrb flutter",
            //texti x ekseninde ortaladı
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          //childları y ekseninde ortaladı yazıyı kutunun ortasına getirdi
          alignment: Alignment.center,
          color: Colors.orange.shade200,
          child: Text(
            "mrb flutter",
            //texti x ekseninde ortaladı
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          //childları y ekseninde ortaladı yazıyı kutunun ortasına getirdi
          alignment: Alignment.center,
          color: Colors.orange.shade200,
          child: Text(
            "mrb flutter",
            //texti x ekseninde ortaladı
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
 */