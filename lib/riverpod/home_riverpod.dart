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
    Event(image: 'images/konser-69529.png', title: 'Büyük Ev Ablukada Akustik Konseri' , location: 'Ahmet Adnan Saygun Sanat Merkezi' , date: '22 Şabat Çar - 20:30' , price: 300 , isActive: true ),
    Event(image: 'images/tiyatro-69756.png', title: 'Gülşen Konseri', location: 'İzmir Arena' , date: '11 Mart Cmt - 21:00' , price: 329 , isActive: true ),
    Event(image: 'images/tiyatro-69756.png', title: 'Levent Yüksel Konseri', location: 'Ooze Venue' , date: '18 Şubat Cmt - 21:00' , price: 224 , isActive: true ),
    Event(image: 'images/tiyatro-69756.png', title: "Notre Dame'ın Kamburu Müzikali", location: 'Bostanlı Suat Taşer Tiyatrosu' , date: '17 Şubat Cum - 20:30' , price: 200 , isActive: true ),
    
  ]);


}


