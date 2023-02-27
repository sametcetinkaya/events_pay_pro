// ignore: file_names
import 'dart:developer';

import 'package:events_pay_pro/model/event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grock/grock.dart';

import '../components/custom_appbar.dart';
import '../constant/constant.dart';

class EventDetail extends StatelessWidget {
  const EventDetail({super.key, required this.eventData});
  final Event eventData;
  @override
  Widget build(BuildContext context) {
    bool isShowContent = false;

    return Scaffold(
      backgroundColor: Constant.body,
      appBar: CustomAppBar(),
      body: Container(
          color: Constant.body,
          padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      child: Image.asset(eventData.image),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Constant.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          )),
                      padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: Text(
                              eventData.title,
                              style: const TextStyle(
                                  color: Constant.dark,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset('images/etiket.svg'),
                                    Container(
                                      margin: const EdgeInsets.only(left: 10),
                                      child: const Text(
                                        'Konser',
                                        style: TextStyle(
                                            color: Constant.secondText,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(width: 10),
                                Row(
                                  children: [
                                    SvgPicture.asset('images/etiket.svg'),
                                    Container(
                                      margin: const EdgeInsets.only(left: 10),
                                      child: const Text(
                                        'Dayanışma Etkinlikleri',
                                        style: TextStyle(
                                            color: Constant.secondText,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Stack(
                            fit: StackFit.loose,
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 20),
                                padding:
                                    const EdgeInsets.fromLTRB(20, 10, 20, 20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Constant.body,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(top: 5),
                                      child: const Text('Etkinlik Detayı',
                                          style: TextStyle(
                                              color: Constant.dark,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Container(
                                        height: 100,
                                        margin: const EdgeInsets.only(top: 10),
                                        child: SingleChildScrollView(
                                          child: Text(
                                            eventData.description,
                                            style: const TextStyle(
                                                wordSpacing: 2,
                                                color: Constant.text,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                              Positioned(
                                  left: 30,
                                  top: 160,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: !isShowContent
                                            ? Constant.dark
                                            : Constant.green,
                                      ),
                                      onPressed: () {
                                        isShowContent = !isShowContent;
                                      },
                                      child: const Text(
                                        'Devamı',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ))),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 25),
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text('Biletler'),
                                      Container(
                                        margin: const EdgeInsets.only(left: 5),
                                        decoration: BoxDecoration(
                                            color: Constant.dark,
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        padding: const EdgeInsets.fromLTRB(
                                            10, 5, 10, 5),
                                        child: const Text(
                                          '1',
                                          style:
                                              TextStyle(color: Constant.white),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text('Sanatçılar'),
                                      Container(
                                        margin: const EdgeInsets.only(left: 5),
                                        decoration: BoxDecoration(
                                            color: Constant.dark,
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        padding: const EdgeInsets.fromLTRB(
                                            8, 5, 8, 5),
                                        child: const Text(
                                          '0',
                                          style:
                                              TextStyle(color: Constant.white),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text('Kurallar'),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Constant.white),
                      margin: const EdgeInsets.only(top: 10),
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Bilet Satın Al',
                                style: TextStyle(
                                    color: Constant.dark,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              Text(
                                'Tarih seçiniz',
                                style: TextStyle(
                                    color: Constant.dark,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 10, 0, 30),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Constant.greyLight,
                                    width: 1,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 7,
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            eventData.date,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            eventData.location,
                                            style: const TextStyle(
                                                fontSize: 12,
                                                color: Constant.text),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Text(
                                            '*Dayanışma Etkinliği*',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Constant.text),
                                          ),
                                          Stack(
                                            children: [
                                              Positioned(
                                                  top: 0,
                                                  left: 18,
                                                  child: SvgPicture.asset(
                                                    'images/close.svg',
                                                    height: 20,
                                                    // ignore: deprecated_member_use
                                                    color: Colors.grey,
                                                  )),
                                              Row(
                                                children: [
                                                  Container(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(0, 6, 6, 0),
                                                    child: SvgPicture.asset(
                                                        'images/chair.svg'),
                                                  ),
                                                  Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                            left: 7),
                                                    child: const Text(
                                                      'Koltuk seçiniz',
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Constant.text,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ]),
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            '${eventData.price} TL',
                                            style: const TextStyle(
                                                color: Constant.dark,
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      ElevatedButton.icon(
                                          style: ButtonStyle(
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  bottomRight:
                                                      Radius.circular(20),
                                                  topRight: Radius.circular(20),
                                                  bottomLeft:
                                                      Radius.circular(20)),
                                            )),
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Constant.dark),
                                          ),
                                          onPressed: () {},
                                          // ignore: deprecated_member_use
                                          icon: SvgPicture.asset(
                                            'images/basket.svg',
                                            color: Constant.white,
                                          ),
                                          label: Text(
                                            'Satın Al'.toUpperCase(),
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Constant.white,
                                                fontSize: 14),
                                          )),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Constant.white),
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Sanatçılar',
                        style: TextStyle(
                            color: Constant.dark,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(eventData.image,
                                    width: 90, height: 70, fit: BoxFit.fill),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                margin: const EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      eventData.title,
                                      style: const TextStyle(
                                          color: Constant.dark, fontSize: 15),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 10),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin:
                                                const EdgeInsets.only(right: 6),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: Constant.dark,
                                            ),
                                            width: 20,
                                            height: 20,
                                            child: const Center(
                                              child: Text(
                                                '1',
                                                style: TextStyle(
                                                    color: Constant.white),
                                              ),
                                            ),
                                          ),
                                          const Text(
                                            'Etkinlik',
                                            style: TextStyle(
                                                color: Constant.dark,
                                                fontSize: 14),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Constant.white),
                  margin: const EdgeInsets.only(top: 10, bottom: 20),
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            'Etkinlik Hakkında Bilmeniz Gerekenler',
                            style: TextStyle(
                                color: Constant.dark,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Constant.dark,
                            ),
                            constraints: const BoxConstraints(
                                minHeight: 10, maxHeight: double.infinity),
                            width: 10,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          // ignore: prefer_const_constructors
                          Expanded(
                            flex: 1,
                            child: const Text(
                              'Müsabaka biletleri numarasız düzende satışa açılmıştır.',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Constant.text),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Constant.dark,
                            ),
                            constraints: const BoxConstraints(
                                minHeight: 10, maxHeight: double.infinity),
                            width: 10,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          // ignore: prefer_const_constructors
                          Expanded(
                            flex: 1,
                            child: const Text(
                              'Müsabaka günü kare kodunuzu gişeye göstererek basılı biletinizi almanız gerekmektedir.',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Constant.text),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Constant.dark,
                            ),
                            constraints: const BoxConstraints(
                                minHeight: 10, maxHeight: double.infinity),
                            width: 10,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          // ignore: prefer_const_constructors
                          Expanded(
                            flex: 1,
                            child: const Text(
                              'Salon kapıları maçtan 1 saat önce açılacaktır.',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Constant.text),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Constant.dark,
                            ),
                            constraints: const BoxConstraints(
                                minHeight: 10, maxHeight: double.infinity),
                            width: 10,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          // ignore: prefer_const_constructors
                          Expanded(
                            flex: 1,
                            child: const Text(
                              'Müsabakada 18 yaş sınırı yoktur. Tüm yaş grupları bilete tabiidir.',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Constant.text),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Constant.dark,
                            ),
                            constraints: const BoxConstraints(
                                minHeight: 10, maxHeight: double.infinity),
                            width: 10,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          // ignore: prefer_const_constructors
                          Expanded(
                            flex: 1,
                            child: const Text(
                              'Müsabakanın oynanacağı salon Aliağa izban istasyonuna 10 dk yürüme mesafesindedir.',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Constant.text),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Constant.white),
                  margin: const EdgeInsets.only(),
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        eventData.location,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset('images/location2.svg'),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text('İstanbul - Levent'),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  const EdgeInsets.symmetric(horizontal: 30)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20)),
                              )),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Constant.dark),
                            ),
                            onPressed: () {},
                            child: Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: const [
                                Icon(Icons.location_on),
                                SizedBox(width: 5),
                                Text(
                                  'Konumu',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          ElevatedButton(
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    const EdgeInsets.symmetric(horizontal: 20)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(20)),
                                )),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Constant.dark),
                              ),
                              onPressed: () {},
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    'images/location2.svg',
                                    color: Constant.white,
                                  ),
                                  const SizedBox(width: 5),
                                  const Text(
                                    'Mekan İncele',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
