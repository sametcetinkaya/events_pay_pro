import 'package:events_pay_pro/components/custom_appbar.dart';
import 'package:events_pay_pro/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:grock/grock.dart';

import '../components/drawer.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  GlobalKey<FormState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.body,
      appBar: CustomAppBar(),
      drawer: const DrawerComponent(),
      body: SingleChildScrollView(
        reverse: true,
        child:Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 0.5,),
              padding: const EdgeInsets.only(left: 5,top: 10),
              alignment: Alignment.topLeft,
            height: 78,
            width: double.infinity,
            color: Constant.dark,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, 
              children: const [
                Text("Bubilet Üye Ol", style: TextStyle(fontSize: 19,fontWeight: FontWeight.w500,color: Constant.white),),
                SizedBox(height: 5,),
                Text("Hoş geldiniz, Hızlı bir şekilde üye olabilirsiniz.",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300,color: Constant.white),)
              ],
            ),
          ),
            Container(
              margin: const EdgeInsets.only(top: 70,left: 15,right: 15, bottom: 15),
              padding: const EdgeInsets.all(15),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Constant.white),
              child: Form(
                key: _key,
                autovalidateMode: AutovalidateMode.always,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("E-POSTA ADRESİNİ GİRİNİZ*",
                        style: TextStyle(color: Constant.text, fontSize: 13,fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 15,),
                           SizedBox(
                            height: 40,
                            width: 340,
                            child: TextFormField(  
                              validator: FormFieldValidator().isNotEmpty,
                              decoration: const InputDecoration(
                                suffixIcon: Icon(Icons.mail_outline_rounded, color: Constant.gray,size: 28),
                                hintText: "E-posta Adresini Giriniz",
                                hintStyle: TextStyle(color: Constant.gray,fontSize: 18, fontWeight: FontWeight.w500),
                                contentPadding: EdgeInsets.symmetric(vertical: 8,horizontal: 0),
                                border: OutlineInputBorder(
                                borderSide: BorderSide.none
                                ),
                              ),
                              style: TextStyle(color: Constant.text),
                            ),
                          ),
                          const SizedBox(height: 5,),
                          const Divider(
                          height: 15,
                          thickness: 1,
                          indent: 0,
                          endIndent: 0,
                          color: Constant.gray,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text("ŞİFRENİZ*",style: TextStyle(color: Constant.text, fontSize: 13,fontWeight: FontWeight.bold)),
                         SizedBox(
                            height: 40,
                            width: 340,
                            child: TextFormField(  
                                validator: (value) {
                                return (value?.isNotEmpty ?? false) ? null : 'Bu alan boş bırakılamaz';
                              },
                              obscureText: true,
                              enableSuggestions: false,
                              autocorrect: false,
                              decoration: const InputDecoration(
                                suffixIcon: Icon(Icons.lock_outline_rounded, color: Constant.gray,size: 28),
                                hintText: "******",
                                hintStyle: TextStyle(color: Constant.gray,fontSize: 18, fontWeight: FontWeight.w500),
                                contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 0),
                                border: OutlineInputBorder(
                                borderSide: BorderSide.none
                                ),
                              ),
                              style: TextStyle(color: Constant.text),
                            ),
                          ),
                          const SizedBox(height: 5,),
                          const Divider(
                          height: 15,
                          thickness: 1,
                          indent: 0,
                          endIndent: 0,
                          color: Constant.gray,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text("ADINIZ SOYADINIZ*",style: TextStyle(color: Constant.text, fontSize: 13,fontWeight: FontWeight.bold)),
                        const SizedBox(
                            height: 40,
                            width: 340,
                            child: TextField(  
                              decoration: InputDecoration(
                                suffixIcon: Icon(Icons.person_2_outlined, color: Constant.gray,size: 28),
                                hintText: "Ad ve Soyad Giriniz",
                                hintStyle: TextStyle(color: Constant.gray,fontSize: 18, fontWeight: FontWeight.w500),
                                contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 0),
                                border: OutlineInputBorder(
                                borderSide: BorderSide.none
                                ),
                              ),
                              style: TextStyle(color: Constant.text),
                            ),
                          ),
                          const SizedBox(height: 5,),
                          const Divider(
                          height: 15,
                          thickness: 1,
                          indent: 0,
                          endIndent: 0,
                          color: Constant.gray,
                        ),
                        const SizedBox(height: 15,),
                        Row(
                            children: const [
                              Text("Ülke kodu",style: TextStyle(color: Constant.text, fontSize: 13,fontWeight: FontWeight.bold)),
                              SizedBox(width: 40,),
                              Text("TELEFON NUMARANIZ",style: TextStyle(color: Constant.text, fontSize: 13,fontWeight: FontWeight.bold))
                            ],
                        ),
                        Row(
                          children: [
                          Flexible(child:DropdownButtonFormField<String>(
                            iconSize: 0,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none
                                ),
                                suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),                      
                            ),
                                items: <String>['+33', '+44', '+49', '+90'].map((String value) {
                                return DropdownMenuItem<String>(
                                value: value,
                                child: new Text(value),
                              );
                              }).toList(),
                            onChanged: (_) {},
                                          ),),
                          const SizedBox(
                            height: 40,
                            width: 210,
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: 5,horizontal: 0),
                                suffixIcon: Icon(Icons.phone_iphone_rounded),
                                suffixIconColor: Constant.gray,
                                border: OutlineInputBorder(
                                borderSide: BorderSide.none
                                ),
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
                          height: 15,
                        ),
                        SizedBox(
                          height: 50,
                          width: 346,
                          child: ElevatedButton(                        
                            onPressed: () {
                              if(_key.currentState?.validate()?? false){
                                  print('okey');                            };
                            },
                            style: ElevatedButton.styleFrom(
                              shadowColor: Colors.transparent,
                              backgroundColor: Constant.dark,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            child: const Text('Kayıt Ol', style: TextStyle(fontSize: 18),),
                          ),
                        ),
                    ],
                  ),
              ),
              ),
          ],
        ),
      ),
    );
  }
}

class FormFieldValidator {
  String? isNotEmpty (String? data){
    return (data?.isNotEmpty ?? false) ? null : 'Bu alan boş bırakılamaz';
  }
}
