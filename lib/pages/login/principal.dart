import 'package:flutter/material.dart';

class PrincipalPage extends StatefulWidget {
  const PrincipalPage({Key? key}) : super(key: key);

  @override
  _PrincipalPageState createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
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
            style: TextStyle(fontWeight: FontWeight.w200, color: Colors.black),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(vertical: 15),
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text("¿Buscas algún género en especial?",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15)),
            ),
            Container(
              //padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Text(
                "Haz click en la imagen y ve las opciones que tenemos para ti",
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            SizedBox(height: 10),
            _ImageColumn(),
            _ImageColumn2(),
            _ImageColumn3(),
          ],
        ));
  }

  Widget _ImageColumn() {
    return Container(
      // decoration: const BoxDecoration(
      // color: Colors.lightBlue,
      //),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: _onTap,
                child: Image.asset(
                  'assets/images/suspenso2.png',
                  height: 250,
                  width: 250,
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Suspenso',
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: _onTap2,
                child: Image.asset(
                  'assets/images/terror.jpeg',
                  height: 250,
                  width: 250,
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Terror',
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _ImageColumn2() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: _onTap3,
                child: Image.asset(
                  'assets/images/romance.jpeg',
                  height: 250,
                  width: 250,
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Romance',
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: _onTap4,
                child: Image.asset(
                  'assets/images/fantasia.png',
                  height: 250,
                  width: 250,
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Fantasia',
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _ImageColumn3() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: _onTap3,
                child: Image.asset(
                  'assets/images/drama.jpeg',
                  height: 250,
                  width: 250,
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Drama',
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: _onTap4,
                child: Image.asset(
                  'assets/images/juvenil.jpeg',
                  height: 250,
                  width: 250,
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Juvenil',
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _onTap() {
    Navigator.pushNamed(context, '/suspenso');
  }

  void _onTap2() {
    Navigator.pushNamed(context, '/terror');
  }

  void _onTap3() {
    Navigator.pushNamed(context, '/romance');
  }

  void _onTap4() {
    Navigator.pushNamed(context, 'home');
  }
}
