import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final String? titulo;
  final Color? colorOldNew;

  TitleWidget({this.titulo, this.colorOldNew});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Text(
        titulo!,
        style: TextStyle(
          color: colorOldNew,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
