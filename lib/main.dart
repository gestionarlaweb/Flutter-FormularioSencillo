import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Quitar el banner
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true, // Para Android
          title: Text(
            'Formulario sencillo de una sola página',
            style: GoogleFonts.pacifico(),
          ),
        ),
        backgroundColor: Color(0xffF2F2F2),
        // Importante meter el logo en un Container dentro de un SafeArea
        // sin el SafeArea podríamos tener problemas de visualización con el AppBar
        body: SafeArea(
          child: Column(
            children: [
              _Logo(),
              Divider(
                  height: 10,
                  thickness: 2, // Ancho
                  color: Colors.black26,
                  indent: 20,
                  endIndent: 20),
              _TextFieldEmail(),
              _TextFieldPassword(),
              _Buton(),
              _Labels()
            ],
          ),
        ),
      ),
    );
  }
}

class _Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: <Widget>[
            // Image(
            //   image: AssetImage('assets/images/login.png'),
            // ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/login.png'),
              radius: 60.0,
            ),
            // Para la separación entre Imagen y Texto le meto un SizeBox
            SizedBox(height: 20),
            Text(
              'Login',
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}

class _TextFieldEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          children: <Widget>[
            Container(
              // Configuración para el TextField
              // Este padding es importsnte para poder respetar los pargenes de la caja TextField
              padding: EdgeInsets.only(top: 5, left: 5, bottom: 5, right: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        offset: Offset(0, 5),
                        // Difuminado
                        blurRadius: 5)
                  ]),
              // Colocar el TextField con sus caracteristicas
              child: TextField(
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.mail_outline),
                    focusedBorder:
                        InputBorder.none, // Para quitarle la linea de abajo
                    border: InputBorder
                        .none, // Para quitarle la línea cuando no está seleccionado
                    hintText: 'email'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _TextFieldPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          children: <Widget>[
            Container(
              // Configuración para el TextField
              // Este padding es importsnte para poder respetar los pargenes de la caja TextField
              padding: EdgeInsets.only(top: 5, left: 5, bottom: 5, right: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        offset: Offset(0, 5),
                        // Difuminado
                        blurRadius: 5)
                  ]),
              // Colocar el TextField con sus caracteristicas
              child: TextField(
                autocorrect: false,
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_open),
                    focusedBorder:
                        InputBorder.none, // Para quitarle la linea de abajo
                    border: InputBorder
                        .none, // Para quitarle la línea cuando no está seleccionado
                    hintText: 'password'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _Buton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: <Widget>[
            RaisedButton(
              elevation: 2,
              highlightElevation: 5,
              color: Colors.blue,
              shape: StadiumBorder(), // Redondear el boton
              onPressed: () {},
              child: Container(
                width: 300, // Ancho total
                height: 50,
                // Configuración dentro del boton
                child: Center(
                  child: Text('Aceptar',
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _Labels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // Separación en la parte de arriba
        margin: EdgeInsets.only(top: 40),
        child: Column(
          children: <Widget>[
            Text('Terminos y condiciones de uso',
                style: TextStyle(fontWeight: FontWeight.w200))
          ],
        ),
      ),
    );
  }
}
