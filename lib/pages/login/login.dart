import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:libreria/db/usuario_database.dart';
import 'package:libreria/models/usuario.dart';
import 'package:libreria/pages/login/widgets/botones.dart';
import 'package:libreria/pages/login/widgets/label.dart';
import 'package:libreria/pages/login/widgets/textfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              color: Colors.black,
              onPressed: () => print('menu'),
            );
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.black,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.local_grocery_store_rounded),
            color: Colors.black,
            onPressed: () {},
          ),
        ],
        centerTitle: true,
        title: Text(
          'Bodega de Libros',
          style: TextStyle(fontWeight: FontWeight.w200),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Container(
            //toda la pantalla
            height: MediaQuery.of(context).size.height,

            child: Column(
              children: [
                SizedBox(height: 30),
                Text(
                  'Iniciar Sesión',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30),
                _Form(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  _Form({Key? key}) : super(key: key);

  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          CustomInput(
            icono: Icons.mail_outline,
            placeHolder: 'Email',
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),
          CustomInput(
            icono: Icons.lock_outline,
            placeHolder: 'Contraseña',
            keyboardType: TextInputType.text,
            textController: passCtrl,
            isPassword: true,
          ),
          SizedBox(height: 8),
          Customlabel(
            texto1: '¿Has olvidado tu contraseña?',
            texto: 'Recupérala',
            color: Colors.black,
            route: 'register',
          ),
          SizedBox(height: 30),
          //ElevatedButton(onPressed: () {}, child: Text('Iniciar')),
          CustomButton(
              texto: 'Iniciar Sesión',
              onPressed: () {
                // print(emailCtrl.text);
                // print(passCtrl.text);
                Navigator.pushReplacementNamed(context, 'principal');
              }),
          SizedBox(height: 30),
          Text(
            '¿Eres nuevo?, ¡Registrate!',
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          CustomButton(
              texto: 'Registrarme',
              onPressed: () {
                Navigator.pushReplacementNamed(context, 'register');
              }),
        ],
      ),
    );
  }
}
