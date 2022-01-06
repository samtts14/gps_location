import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:sms/sms.dart';

class Mensajeria extends StatelessWidget {
  SmsSender sender = new SmsSender();
  String celular = "8293474922";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: GridView(
            //####################-----GRIDVIEW-----#####################
            children: [
              //------------------BOTONES--------------
              InkWell(
                onTap: () {
                  //----------------ONTAP ENCENDER---------------------
                  sender.sendSms(new SmsMessage(celular, 'resume123456'));
                },
                child: Container(
                  // Botones del grid view
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        LineAwesomeIcons.power_off,
                        size: 80,
                        color: Colors.white,
                      ),
                      Text(
                        "Encender",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  //----------------ONTAP APAGAR---------------------
                  sender.sendSms(new SmsMessage(celular, 'stop123456'));
                },
                child: Container(
                  // Botones del grid view
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.redAccent,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        LineAwesomeIcons.power_off,
                        size: 80,
                        color: Colors.white,
                      ),
                      Text(
                        "Apagar",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  //----------------ONTAP ARM---------------------
                  sender.sendSms(new SmsMessage(celular, 'arm123456'));
                },
                child: Container(
                  // Botones del grid view
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        LineAwesomeIcons.bell,
                        size: 80,
                        color: Colors.white,
                      ),
                      Text(
                        "Activar alarma",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  //----------------ONTAP DISARM---------------------
                  sender.sendSms(new SmsMessage(celular, 'disarm123456'));
                },
                child: Container(
                  // Botones del grid view
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.redAccent,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        LineAwesomeIcons.bell_slash,
                        size: 80,
                        color: Colors.white,
                      ),
                      Text(
                        "Desactivar alarma",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  //----------------ONTAP TRACK---------------------
                  sender.sendSms(new SmsMessage(celular, 'stop123456'));
                },
                child: Container(
                  // Botones del grid view
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        LineAwesomeIcons.map_marked,
                        size: 80,
                        color: Colors.white,
                      ),
                      Text(
                        "Localizar",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  //----------------ONTAP---------------------
                  sender.sendSms(new SmsMessage(celular, 'stop123456'));
                },
                child: Container(
                  // Botones del grid view
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        LineAwesomeIcons.car,
                        size: 35,
                        color: Colors.purple,
                      ),
                      Text(
                        "Apagar",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ],
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
          ),
        ),
      ),
      /*Envio de mensaje
      body: Center(
        child: ElevatedButton(
          child: Text("Apagar Auto"),
          onPressed: () {
            sender.sendSms(new SmsMessage(celular, 'stop123456'));
          },
        ),
      ),*/
    ));
  }
}
