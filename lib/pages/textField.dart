import 'package:flutter/material.dart';

class TextFieldExm extends StatefulWidget {
  const TextFieldExm({Key? key}) : super(key: key);

  @override
  State<TextFieldExm> createState() => _TextFieldExmState();
}

class _TextFieldExmState extends State<TextFieldExm> {

  String text = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                onChanged: (value){
                  setState(() {
                    text = value;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'type something',
                  label: const Text('Name'),
                  hintStyle: TextStyle(
                    color: Colors.green.withOpacity(0.5)
                  )
                ),
              ),
            ),
            const SizedBox(height: 30,),
            Container(
              height: 50,
              color: Colors.black38,
              alignment: Alignment.center,
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.redAccent,
                  fontSize: 40,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
