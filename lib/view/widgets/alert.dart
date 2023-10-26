import 'package:flutter/material.dart';
class ShowMessage extends StatelessWidget {
  const ShowMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
       content: const SingleChildScrollView(
        child: ListBody(
          children: [
            SizedBox(height: 30,),
            Text('Name and Phone Number are Required!',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 15 ) ,),
            SizedBox(height: 10,),

          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
             Navigator.of(context).pop();
          },
          child: const Text('ok',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20 )),
        )
      ],
    );
  }
}


