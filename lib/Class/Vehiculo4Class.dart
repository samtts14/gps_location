import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sms/sms.dart';

class Vehiculo4 extends StatefulWidget {
 
  @override
  _Vehiculo4State createState() => _Vehiculo4State();
}

class _Vehiculo4State extends State<Vehiculo4> {

//************************************************************** */
  SmsSender sender = new SmsSender();
  final tel = TextEditingController();
  String celular1 = "";
  String numeroGuardado = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _cargarPref();
  }

    _cargarPref()async{
      SharedPreferences prefs = await SharedPreferences.getInstance();
      setState(() {
        celular1 = prefs.getString("celular4");
        numeroGuardado = celular1;
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFF546E7A)),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: GridView(
            //####################-----GRIDVIEW-----#####################
            children: [
              //-----caja de texto para numero arriba del grid
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    keyboardType: TextInputType.number,
                   // initialValue: celular1,
                    controller: tel,
                    decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color:  Colors.white),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        labelText: 'Número de GPS'),
                        textAlign: TextAlign.center,
                    //onSubmitted: (value) {},
                  ),
                ],
              ),//aqui

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  RichText(text: TextSpan(text: numeroGuardado))
                ],
              ),
               
              //------------------BOTONES--------------
              InkWell(
                onTap: () {
                  //----------------ONTAP ENCENDER---------------------
                  celular1 = tel.text;
                  sender.sendSms(new SmsMessage(numeroGuardado, 'resume123456'));

                  showDialog(
                      context: context,
                      builder: (context) {
                        Future.delayed(Duration(seconds: 3), () {
                          Navigator.of(context).pop(true);
                        });
                        return AlertDialog(
                          title: Text('Mensaje enviado con exito'),
                          backgroundColor: Colors.green,
                        );
                      });
                },
                child: Container(
                  // Botones del grid view
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.orange,
                      width: 1
                    ),
                     boxShadow: [
                      BoxShadow(
                        color: Colors.amber[200],
                        blurRadius: 10.0,
                      )
                    ],
                    color: Colors.grey[850],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        LineAwesomeIcons.power_off,
                        size: 60,
                        color: Colors.green,
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
                  celular1 = tel.text;
                  sender.sendSms(new SmsMessage(numeroGuardado, 'stop123456'));
                  showDialog(
                      context: context,
                      builder: (context) {
                        Future.delayed(Duration(seconds: 3), () {
                          Navigator.of(context).pop(true);
                        });
                        return AlertDialog(
                          title: Text('Mensaje enviado con exito'),
                          backgroundColor: Colors.green,
                        );
                      });
                },
                child: Container(
                  // Botones del grid view
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.orange,
                      width: 1
                    ),
                     boxShadow: [
                      BoxShadow(
                        color: Colors.amber[200],
                        blurRadius: 10.0,
                      )
                    ],
                    color: Colors.grey[850],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        LineAwesomeIcons.power_off,
                        size: 60,
                        color: Colors.red,
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
                  celular1 = tel.text;
                  sender.sendSms(new SmsMessage(numeroGuardado, 'arm123456'));
                  showDialog(
                      context: context,
                      builder: (context) {
                        Future.delayed(Duration(seconds: 3), () {
                          Navigator.of(context).pop(true);
                        });
                        return AlertDialog(
                          title: Text('Mensaje enviado con exito'),
                          backgroundColor: Colors.green,
                        );
                      });
                },
                child: Container(
                  // Botones del grid view
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.orange,
                      width: 1
                    ),
                     boxShadow: [
                      BoxShadow(
                        color: Colors.amber[200],
                        blurRadius: 10.0,
                      )
                    ],
                    color: Colors.grey[850],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        LineAwesomeIcons.bell,
                        size: 60,
                        color: Colors.green,
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
                  celular1 = tel.text;
                  sender.sendSms(new SmsMessage(numeroGuardado, 'disarm123456'));
                  showDialog(//***************Dialogo de alerta */
                      context: context,
                      builder: (context) {
                        Future.delayed(Duration(seconds: 3), () {
                          Navigator.of(context).pop(true);
                        });
                        return AlertDialog(
                          title: Text('Mensaje enviado con exito'),
                          backgroundColor: Colors.green,
                        );
                      });
                },
                child: Container(
                  // Botones del grid view
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.orange,
                      width: 1
                    ),
                     boxShadow: [
                      BoxShadow(
                        color: Colors.amber[200],
                        blurRadius: 10.0,
                      )
                    ],
                    color: Colors.grey[850],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        LineAwesomeIcons.bell_slash,
                        size: 60,
                        color: Colors.red,
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
                  celular1 = tel.text;
                  sender.sendSms(new SmsMessage(numeroGuardado, 'fix060m001n123456'));
                  showDialog(//***************Dialogo de alerta */
                      context: context,
                      builder: (context) {
                        Future.delayed(Duration(seconds: 3), () {
                          Navigator.of(context).pop(true);
                        });
                        return AlertDialog(
                          title: Text('Mensaje enviado con exito'),
                          backgroundColor: Colors.green,
                        );
                      });
                },
                child: Container(
                  // Botones del grid view
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.orange,
                      width: 0.5
                    ),
                     boxShadow: [
                      BoxShadow(
                        color: Colors.amber[200],
                        blurRadius: 10.0,
                      )
                    ],
                    color: Colors.grey[850],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        LineAwesomeIcons.map_marked,
                        size: 60,
                        color: Colors.yellowAccent[700],
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
                  celular1 = tel.text;
                  sender.sendSms(new SmsMessage(numeroGuardado, 'check123456'));
                  showDialog(//***************Dialogo de alerta */
                      context: context,
                      builder: (context) {
                        Future.delayed(Duration(seconds: 3), () {
                          Navigator.of(context).pop(true);
                        });
                        return AlertDialog(
                         title: Text('Mensaje enviado con exito'),
                          backgroundColor: Colors.green,
                        );
                      });
                },
                child: Container(
                  // Botones del grid view
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.orange,
                      width: 1
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.amber[200],
                        blurRadius: 10.0,
                      )
                    ],
                    color: Colors.grey[850],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        LineAwesomeIcons.info,
                        size: 60,
                        color: Colors.lightBlue[400],
                      ),
                      Text(
                        "Información",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ],
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 3/2,
              crossAxisSpacing: 20,
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              //crossAxisSpacing: 10,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: ()async{//Boton Guardar
        SharedPreferences prefs = await SharedPreferences.getInstance();
        setState(() {
          celular1 = tel.text;
          prefs.setString("celular4", tel.text);
        });
      },
      child: Icon(LineAwesomeIcons.save),
      backgroundColor: Colors.grey[900],
    ),
    )
    
    );
  }
}