import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:events_pay_pro/model/categories.dart';
import 'package:events_pay_pro/model/category.dart';

import 'package:events_pay_pro/model/events.dart';
import 'package:events_pay_pro/model/event.dart';

class HomeRiverpod extends ChangeNotifier{

  CategoriesModel categoryArray = CategoriesModel(title: "Üst Kategoriler" , categories: [
    CategoryModel(image: 'images/konser-69529.png', name: 'Konser'),
    CategoryModel(image: 'images/tiyatro-69756.png', name: 'Tiyatro'),
    CategoryModel(image: 'images/festival-63840.png', name: 'Festival'),
    CategoryModel(image: 'images/cocuk-aktiviteleri-86301.png', name: 'Çocuk Aktiviteleri'),
    CategoryModel(image: 'images/icon-blog.png', name: 'Blog'),
  ]);

  Events eventsArray = Events(title: "İzmir Etkinlikleri" , events: [
    Event(image: 'images/buyuk-ev-ablukada-akustik-konseri-49150.png', title: 'Büyük Ev Ablukada Akustik Konseri' , location: 'Ahmet Adnan Saygun Sanat Merkezi' , date: '22 Şabat Çar - 20:30' , price: 300 , isActive: true , description: "Stand up gösterisini kapalı gişe oynayan Ahlat Ağacı, Ölümlü Dünya, Bayi Toplantısı filmlerindeki başarılı performansının ardından,  ‘Doğu’ dizisinin ilk sezonunun çekimlerini tamamlayan komedyen sevenleriyle buluşmaya hazırlanıyor. Türkiye, Avrupa ve Amerika’da ve dünyanın farklı şehirlerinde gerçekleştirdiği tek kişilik gösterisinde kendi yaşamından ve bu topraklarda güldürü niteliği taşıyan her olaydan beslenen Doğu Demirkol, bu sezon da seyircisi ile buluşmaya hazırlanıyor."),
    Event(image: 'images/gulsen-konseri-10248.jpg', title: 'Gülşen Konseri', location: 'İzmir Arena' , date: '11 Mart Cmt - 21:00' , price: 329 , isActive: true ,description: "Stand up gösterisini kapalı gişe oynayan Ahlat Ağacı, Ölümlü Dünya, Bayi Toplantısı filmlerindeki başarılı performansının ardından,  ‘Doğu’ dizisinin ilk sezonunun çekimlerini tamamlayan komedyen sevenleriyle buluşmaya hazırlanıyor. Türkiye, Avrupa ve Amerika’da ve dünyanın farklı şehirlerinde gerçekleştirdiği tek kişilik gösterisinde kendi yaşamından ve bu topraklarda güldürü niteliği taşıyan her olaydan beslenen Doğu Demirkol, bu sezon da seyircisi ile buluşmaya hazırlanıyor."),
    Event(image: 'images/levent-yuksel-konseri-19924.jpg', title: 'Levent Yüksel Konseri', location: 'Ooze Venue' , date: '18 Şubat Cmt - 21:00' , price: 224 , isActive: true ,description: "Stand up gösterisini kapalı gişe oynayan Ahlat Ağacı, Ölümlü Dünya, Bayi Toplantısı filmlerindeki başarılı performansının ardından,  ‘Doğu’ dizisinin ilk sezonunun çekimlerini tamamlayan komedyen sevenleriyle buluşmaya hazırlanıyor. Türkiye, Avrupa ve Amerika’da ve dünyanın farklı şehirlerinde gerçekleştirdiği tek kişilik gösterisinde kendi yaşamından ve bu topraklarda güldürü niteliği taşıyan her olaydan beslenen Doğu Demirkol, bu sezon da seyircisi ile buluşmaya hazırlanıyor."),
    Event(image: 'images/notre-damein-kamburu-muzikali-27328.jpeg', title: "Notre Dame'ın Kamburu Müzikali", location: 'Bostanlı Suat Taşer Tiyatrosu' , date: '17 Şubat Cum - 20:30' , price: 200 , isActive: true ,description: "Stand up gösterisini kapalı gişe oynayan Ahlat Ağacı, Ölümlü Dünya, Bayi Toplantısı filmlerindeki başarılı performansının ardından,  ‘Doğu’ dizisinin ilk sezonunun çekimlerini tamamlayan komedyen sevenleriyle buluşmaya hazırlanıyor. Türkiye, Avrupa ve Amerika’da ve dünyanın farklı şehirlerinde gerçekleştirdiği tek kişilik gösterisinde kendi yaşamından ve bu topraklarda güldürü niteliği taşıyan her olaydan beslenen Doğu Demirkol, bu sezon da seyircisi ile buluşmaya hazırlanıyor."),
    
  ]);


}


