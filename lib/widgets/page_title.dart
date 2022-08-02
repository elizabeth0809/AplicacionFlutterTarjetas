import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false, //ignorara la zona d abajo
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'transaccion clasificada',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'transaccion clasificada ggggg xsgdgdhddhftgghd',
              style: TextStyle(fontSize: 16, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
