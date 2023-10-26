import 'package:flutter/material.dart';

class HeaderView2 extends StatelessWidget {
  const HeaderView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlueAccent,
      height: 20,
      child: const Padding(
          padding: EdgeInsets.all(8),
          child: Row(
            children: [
              Expanded(
                  flex: 5,
                  child: Text(
                    'Contacts',
                    style: TextStyle(
                        //color: Colors.red,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  )),
            ],
          )),
    );
  }
}
