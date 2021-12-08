import 'package:flutter/material.dart';
import 'package:libreria/db/usuario_database.dart';
import 'package:libreria/models/usuario.dart';
import 'package:libreria/pages/login/widgets/botones.dart';
import 'package:libreria/pages/login/widgets/label.dart';
import 'package:libreria/pages/login/widgets/textfield.dart';

class RegistroPage extends StatelessWidget {
  const RegistroPage({Key? key}) : super(key: key);

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
                  'Crea tu cuenta en Bodega de libros',
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
  final nomCtrl = TextEditingController();
  final apeCtrl = TextEditingController();
  late String nombreUser;
  late String apellidoUser;
  late String emailUser;
  late String passwordUser;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          CustomInput(
            icono: Icons.person,
            placeHolder: 'Nombre',
            keyboardType: TextInputType.name,
            textController: nomCtrl,
          ),
          CustomInput(
            icono: Icons.person,
            placeHolder: 'Apellido',
            keyboardType: TextInputType.name,
            textController: apeCtrl,
          ),
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
          CustomInput(
            icono: Icons.lock_outline,
            placeHolder: 'Repite tu contraseña',
            keyboardType: TextInputType.text,
            textController: passCtrl,
            isPassword: true,
          ),
          SizedBox(height: 8),
          Text('______________________ Ó ______________________'),
          Customlabel(
            texto1: '',
            texto: 'Registrate con Google',
            color: Colors.black,
            route: 'register',
          ),
          SizedBox(height: 8),
          CustomButton(
              texto: 'Registrarme',
              onPressed: () {
                addUser();
                Navigator.pushReplacementNamed(context, 'principal');
              }),
        ],
      ),
    );
  }

  @override
  void dispose() {
    UsersDatabase.instance.close();
    super.dispose();
  }

  Future addUser() async {
    final user = Usuario(
        nombre: nombreUser,
        apellido: apellidoUser,
        email: emailUser,
        password: passwordUser);

    await UsersDatabase.instance.insertUser(user);
  }
}
