import 'package:flutter/material.dart';

final String rol = "İŞÇİ";
final String ad = "Yiğit Gümüşmekikli";
final int telno = 5312564646;
final String eposta = "yigtgumus@gmail.com";
final String sirket = "ESBEY Corp.";

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 1,
      ),
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: OutlinedButton(

                    onPressed: () {},


                    child: Text(
                      "Profili Düzenle",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color:Colors.blue),
                    )),
              ),
              Text(
                ("$rol"),
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.red),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 4,
                          color: Colors.red,
                        ),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0, 10)),
                        ],
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  enabled: false,
                  contentPadding: EdgeInsets.only(bottom: 3),
                  labelText: "Ad Soyad",
                  labelStyle: TextStyle(color: Colors.red),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "$ad",
                  hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  enabled: false,
                  contentPadding: EdgeInsets.only(bottom: 3),
                  labelText: "Numara",
                  labelStyle: TextStyle(color: Colors.red),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "$telno",
                  hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  enabled: false,
                  contentPadding: EdgeInsets.only(bottom: 3),
                  labelText: "E-Posta",
                  labelStyle: TextStyle(color: Colors.red),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "$eposta",
                  hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  enabled: false,
                  contentPadding: EdgeInsets.only(bottom: 3),
                  labelText: "Şirket",
                  labelStyle: TextStyle(color: Colors.red),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "$sirket",
                  hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}