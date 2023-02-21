import 'package:events_pay_pro/components/custom_appbar.dart';
import 'package:events_pay_pro/constant/constant.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Constant.body,
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Constant.white),
                margin: const EdgeInsets.all(15),
                child: Center(
                  child: Column(
                    children: [
                     const Text(
                        "Giriş Yap",
                        style: TextStyle(color: Constant.text, fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height:7 ),
                      const Text("Telefon numaranızı girin ve devam edin",
                        style: TextStyle(color: Constant.text,fontSize: 15, fontWeight: FontWeight.w400),),
                      const SizedBox(height: 42,),
                      Row(
                        children: const [
                         Text("Ülke kodu",
                        style: TextStyle(color: Constant.text, fontSize: 13, fontWeight: FontWeight.w500)
                      ),
                      SizedBox(
                        width: 72,
                      ),
                      Text("TELEFON NUMARANIZ",
                        style: TextStyle(color: Constant.text,fontSize: 13, fontWeight: FontWeight.w500)),
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
                      const SizedBox(height: 5,),
                      SizedBox(
                        height: 50,
                        width: 346,
                        child: ElevatedButton(                        
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.transparent,
                            backgroundColor: Constant.dark,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          child: const Text('Devam', style: TextStyle(fontSize: 18),),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("veya",style: TextStyle(color: Constant.gray, fontSize: 14, fontWeight: FontWeight.w500),),
                      const SizedBox(
                        height: 15,
                      ),
                       SizedBox(
                        height: 50,
                        width: 346,
                        child: ElevatedButton.icon(
                          icon: const Icon(Icons.mail_outline_outlined, color: Constant.gray),
                          label: const Text("E-posta ile devam et", style: TextStyle(color: Constant.text, fontWeight: FontWeight.w600, fontSize: 16),),                        
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.transparent,
                            backgroundColor: Constant.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                              side: const BorderSide(width: 2, color: Constant.gray),
                              
                            ),
                          ),
                        ),
                      ),                
                    ],
                  ),                ),
              ),
                Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Constant.white),
                margin: const EdgeInsets.only(left: 15, right: 15),
                child: Center(
                  child: Column(
                    children: [
                        const Text("Bu bilet hesabınız yok mu?",
                        style: TextStyle(color: Constant.gray,fontSize: 18, fontWeight: FontWeight.w400),),
                        const Text("Buradan tıklayarak oluşturun!",
                        style: TextStyle(color: Constant.gray,fontSize: 15, fontWeight: FontWeight.w400),),
                        const SizedBox(height: 10,),
                        const Text("Eğlenceyi kaçırma indirimli biletler seni bekliyor",
                        style: TextStyle(color: Constant.dark,fontSize: 18, fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                        const SizedBox(height: 25,),
                        SizedBox(
                        height: 50,
                        width: 346,
                        child: ElevatedButton(                        
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.transparent,
                            backgroundColor: Constant.dark,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          child: const Text('Hemen Üye Ol', style: TextStyle(fontSize: 18),),
                        ),
                      ),
                    ],
                  ),),)
            ],
        ),
      ),
    );
  }
}
