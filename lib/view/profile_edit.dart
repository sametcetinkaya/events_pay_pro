import 'package:events_pay_pro/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';
import 'package:intl/intl.dart';

import '../riverpod/home_riverpod.dart';

class ProfileEditView extends ConsumerStatefulWidget {
  const ProfileEditView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProfileEditViewState();
}

class _ProfileEditViewState extends ConsumerState<ProfileEditView> {
  final homeriverpod = ChangeNotifierProvider((ref) => HomeRiverpod());
  TextEditingController dateInput = TextEditingController();
  List<String> _cityNameList = [];
  List<bool> _isSelected = [true, false];
  @override
  void initState() {
    dateInput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var read = ref.read(homeriverpod);
    if (read.cityArray.cities.length != _cityNameList.length) {
      read.cityArray.cities.forEach((element) {
        _cityNameList.add(element.city);
      });
    }
    return Scaffold(
      backgroundColor: Constant.body,
      body: SingleChildScrollView(
        reverse: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(left: 15),
              child: const Text(
                "Profilini Düzenle",
                style: TextStyle(
                    color: Constant.text,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              margin: const EdgeInsets.only(left: 15),
              child: const Text(
                "Kişisel bilgilerinizin doğru olduğundan emin olun!",
                style: TextStyle(
                    color: Constant.text,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Constant.white),
              margin: const EdgeInsets.all(15),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "ADINIZ SOYADINIZ",
                      style: TextStyle(
                          color: Constant.text,
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      child: const TextField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.person_2_outlined),
                          suffixIconColor: Constant.gray,
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                        ),
                        style: TextStyle(color: Constant.text),
                      ),
                    ),
                    const Divider(
                      height: 15,
                      thickness: 1,
                      indent: 0,
                      endIndent: 0,
                      color: Constant.gray,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        "E-POSTA ADRESİNİZ",
                        style: TextStyle(
                            color: Constant.text,
                            fontSize: 13,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      child: const TextField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.mail_outline_outlined),
                          suffixIconColor: Constant.gray,
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                        ),
                        style: TextStyle(color: Constant.text),
                      ),
                    ),
                    const Divider(
                      height: 15,
                      thickness: 1,
                      indent: 0,
                      endIndent: 0,
                      color: Constant.gray,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: const [
                        Text("Ülke kodu",
                            style: TextStyle(
                                color: Constant.text,
                                fontSize: 13,
                                fontWeight: FontWeight.w600)),
                        SizedBox(
                          width: 42,
                        ),
                        Text("CEP TELEFON NUMARANIZ",
                            style: TextStyle(
                                color: Constant.text,
                                fontSize: 13,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: DropdownButtonFormField<String>(
                            iconSize: 0,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(0),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              suffixIcon:
                                  Icon(Icons.keyboard_arrow_down_rounded),
                            ),
                            items: <String>['+33', '+44', '+49', '+90']
                                .map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: new Text(value),
                              );
                            }).toList(),
                            onChanged: (_) {},
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          width: MediaQuery.of(context).size.width * 0.55,
                          child: const TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.phone_iphone_rounded),
                              suffixIconColor: Constant.gray,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                            ),
                            style: TextStyle(color: Constant.text),
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      height: 15,
                      thickness: 1,
                      indent: 0,
                      endIndent: 0,
                      color: Constant.gray,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("DOĞUM TARİHİNİZ",
                        style: TextStyle(
                            color: Constant.text,
                            fontSize: 13,
                            fontWeight: FontWeight.w600)),
                    SizedBox(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      child: TextField(
                        decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.date_range),
                          suffixIconColor: Constant.gray,
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                        ),
                        style: const TextStyle(color: Constant.text),
                        controller: dateInput,
                        readOnly: true,
                        onTap: () async {
                          DateTime? newDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2100));
                          if (newDate != null) {
                            String dateFormatted =
                                DateFormat('yyyy-MM-dd').format(newDate);
                            setState(() {
                              dateInput.text = dateFormatted;
                            });
                          }
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Divider(
                      height: 15,
                      thickness: 1,
                      indent: 0,
                      endIndent: 0,
                      color: Constant.gray,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text("Şehir",
                        style: TextStyle(
                            color: Constant.text,
                            fontSize: 13,
                            fontWeight: FontWeight.w600)),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      child: DropdownButtonFormField<String>(
                        iconSize: 0,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(0),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          suffixIcon: Icon(Icons.location_on_rounded),
                          suffixIconColor: Constant.gray,
                        ),
                        items: _cityNameList.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        onChanged: (_) {},
                      ),
                    ),
                    const Divider(
                      height: 15,
                      thickness: 1,
                      indent: 0,
                      endIndent: 0,
                      color: Constant.gray,
                    ),
                    const Text("CİNSİYET",
                        style: TextStyle(
                            color: Constant.text,
                            fontSize: 12,
                            fontWeight: FontWeight.w600)),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Constant.greyLight),
                      child: ToggleButtons(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        fillColor: Constant.dark,
                        selectedColor: Constant.white,
                        renderBorder: false,
                        color: Constant.dark,
                        isSelected: _isSelected,
                        onPressed: (int index) {
                          setState(() {
                            for (int buttonIndex = 0;
                                buttonIndex < _isSelected.length;
                                buttonIndex++) {
                              if (buttonIndex == index) {
                                _isSelected[buttonIndex] = true;
                              } else {
                                _isSelected[buttonIndex] = false;
                              }
                            }
                          });
                        },
                        children: const <Widget>[
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Text('Erkek',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600))),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Text('Kadın',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600)))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    const Divider(
                      height: 15,
                      thickness: 1,
                      indent: 0,
                      endIndent: 0,
                      color: Constant.gray,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shadowColor: Colors.transparent,
                              backgroundColor: Constant.dark,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            child: const Text(
                              'Güncelle',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shadowColor: Colors.transparent,
                              backgroundColor: Constant.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            child: const Text(
                              'Hesabımı Sil',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
