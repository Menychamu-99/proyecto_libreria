import 'package:flutter/material.dart';

class Customlabel extends StatelessWidget {
  final String texto;
  final String texto1;
  final Color color;
  final String route;
  const Customlabel({
    Key? key,
    required this.texto,
    required this.texto1,
    required this.color,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            texto1,
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 8),
          GestureDetector(
            child: Text(
              texto,
              style: TextStyle(
                  color: Colors.green[500],
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, route);
            },
          ),
        ],
      ),
    );
  }
}
