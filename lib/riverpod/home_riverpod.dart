import 'package:events_pay_pro/model/city.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:events_pay_pro/model/categories.dart';
import 'package:events_pay_pro/model/category.dart';

import 'package:events_pay_pro/model/events.dart';
import 'package:events_pay_pro/model/event.dart';

import '../model/cities.dart';

class HomeRiverpod extends ChangeNotifier{

  CategoriesModel categoryArray = CategoriesModel(title: "Üst Kategoriler" , categories: [
    CategoryModel(image: 'images/konser-69529.png', name: 'Konser'),
    CategoryModel(image: 'images/tiyatro-69756.png', name: 'Tiyatro'),
    CategoryModel(image: 'images/festival-63840.png', name: 'Festival'),
    CategoryModel(image: 'images/cocuk-aktiviteleri-86301.png', name: 'Çocuk Aktiviteleri'),
    CategoryModel(image: 'images/icon-blog.png', name: 'Blog'),
  ]);

  Events eventsArray = Events(title: "İzmir Etkinlikleri" , events: [
    Event(image: 'images/buyuk-ev-ablukada-akustik-konseri-49150.png', title: 'Büyük Ev Ablukada Akustik Konseri' , location: 'Ahmet Adnan Saygun Sanat Merkezi' , city:'İzmir', date: '22 Şabat Çar - 20:30' , price: 300 , isActive: true ),
    Event(image: 'images/gulsen-konseri-10248.jpg' , title: 'Gülşen Konseri' , location: 'İzmir Arena' , city:'İzmir' , date: '11 Mart Cmt - 21:00' , price: 329 , isActive: true ),
    Event(image: 'images/levent-yuksel-konseri-19924.jpg' , title: 'Levent Yüksel Konseri' , location: 'Ooze Venue' ,city:'İzmir', date: '18 Şubat Cmt - 21:00' , price: 224 , isActive: true ),
    Event(image: 'images/notre-damein-kamburu-muzikali-27328.jpeg' , title: "Notre Dame'ın Kamburu Müzikali", location: 'Bostanlı Suat Taşer Tiyatrosu' ,city:'İzmir' , date: '17 Şubat Cum - 20:30' , price: 200 , isActive: true ),
    
  ]);

  Cities cityArray = Cities(cities:[
    City(city: 'İstanbul',cityPlate:'34'),
    City(city: 'İzmir',cityPlate:'	35'),
    City(city: 'Ankara',cityPlate:'	06'),
    City(city: 'Adana',cityPlate: '01'),
    City(city: 'Adıyaman',cityPlate:'02'),
    City(city: 'Afyon',cityPlate:'03'),
    City(city: 'Ağrı',cityPlate:'	04'),
    City(city: 'Amasya',cityPlate:'	05'),
    City(city: 'Antalya',cityPlate:'	07'),
    City(city: 'Artvin',cityPlate:'	08'),
    City(city: 'Aydın',cityPlate:'	09'),
    City(city: 'Balıkesir',cityPlate:'10'),
    City(city: 'Bilecik',cityPlate:'	11'),
    City(city: 'Bingöl',cityPlate:'	12'),
    City(city: 'Bitlis',cityPlate:'	13'),
    City(city: 'Bolu',cityPlate:'	14'),
    City(city: 'Burdur',cityPlate:'	15'),
    City(city: 'Bursa',cityPlate:'	16'),
    City(city: 'Çanakkale',cityPlate:'17'),
    City(city: 'Çankırı',cityPlate:'	18'),
    City(city: 'Çorum',cityPlate:'	19'),
    City(city: 'Denizli',cityPlate:'	20'),
    City(city: 'Diyarbakır',cityPlate:'21'),
    City(city: 'Edirne',cityPlate:'	22'),
    City(city: 'Elazığ',cityPlate:'	23'),
    City(city: 'Erzincan',cityPlate:'24'),
    City(city: 'Erzurum',cityPlate:'	25'),
    City(city: 'Eskişehir',cityPlate:'26'),
    City(city: 'Gaziantep',cityPlate:'27'),
    City(city: 'Giresun',cityPlate:'	28'),
    City(city: 'Gümüşhane',cityPlate:'29'),
    City(city: 'Hakkari',cityPlate:'	30'),
    City(city: 'Hatay',cityPlate:'	31'),
    City(city: 'Isparta',cityPlate:'	32'),
    City(city: 'İçel',cityPlate:'	33'),
    City(city: 'Kars',cityPlate:'	36'),
    City(city: 'Kastamonu',cityPlate:'37'),
    City(city: 'Kayseri',cityPlate:'	38'),
    City(city: 'Kırklareli',cityPlate:'39'),
    City(city: 'Kırşehir',cityPlate:'40'),
    City(city: 'Kocaeli',cityPlate:'	41'),
    City(city: 'Konya',cityPlate:'	42'),
    City(city: 'Kütahya',cityPlate:'	43'),
    City(city: 'Malatya',cityPlate:'	44'),
    City(city: 'Manisa',cityPlate:'	45'),
    City(city: 'Kahramanmaraş',cityPlate:'46'),
    City(city: 'Mardin',cityPlate:'	47'),
    City(city: 'Muğla',cityPlate:'	48'),
    City(city: 'Muş',cityPlate:'	49'),
    City(city: 'Nevşehir',cityPlate:'50'),
    City(city: 'Niğde',cityPlate:'	51'),
    City(city: 'Ordu',cityPlate:'	52'),
    City(city: 'Rize',cityPlate:'	53'),
    City(city: 'Sakarya	',cityPlate:'54'),
    City(city: 'Samsun',cityPlate:'	55'),
    City(city: 'Siirt',cityPlate:'	56'),
    City(city: 'Sinop',cityPlate:'	57'),
    City(city: 'Sivas',cityPlate:'	58'),
    City(city: 'Tekirdağ',cityPlate:'59'),
    City(city: 'Tokat',cityPlate:'	60'),
    City(city: 'Trabzon',cityPlate:'	61'),
    City(city: 'Tunceli',cityPlate:'	62'),
    City(city: 'Şanlıurfa',cityPlate:'63'),
    City(city: 'Uşak',cityPlate:'	64'),
    City(city: 'Van',cityPlate:'	65'),
    City(city: 'Yozgat',cityPlate:'	66'),
    City(city: 'Zonguldak',cityPlate:'67'),
    City(city: 'Aksaray',cityPlate:'	68'),
    City(city: 'Bayburt',cityPlate:'	69'),
    City(city: 'Karaman',cityPlate:'	70'),
    City(city: 'Kırıkkale',cityPlate:'71'),
    City(city: 'Batman',cityPlate:'	72'),
    City(city: 'Şırnak',cityPlate:'	73'),
    City(city: 'Bartın',cityPlate:'	74'),
    City(city: 'Ardahan	',cityPlate:'75'),
    City(city: 'Iğdır	',cityPlate:'76'),
    City(city: 'Yalova	',cityPlate:'77'),
    City(city: 'Karabük',cityPlate:'	78'),
    City(city: 'Kilis',cityPlate:'	79'),
    City(city: 'Osmaniye',cityPlate:'80'),
    City(city: 'Düzce',cityPlate:'	81'),
  ]);


}


