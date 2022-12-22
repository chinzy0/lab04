import 'package:flutter/material.dart';

class firtpage extends StatefulWidget {
  const firtpage({super.key});

  @override
  State<firtpage> createState() => _firtpageState();
}

class _firtpageState extends State<firtpage> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController _text1 = TextEditingController();
  final TextEditingController _text2 = TextEditingController();
  final TextEditingController _text3 = TextEditingController();
  String? groupchoice;
  bool _value = false;
  bool _value1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Input page")),
      body: Form(
        child: ListView(
          children: [
            Text("TextFormField #1"),
            TextFormField(
              controller: _text1,
              keyboardType: TextInputType.text,
              onChanged: (value) {
                setState(() {});
              },
            ),
            Text("show input : ${_text1.text}"),
            TextFormField(
                keyboardType: TextInputType.phone,
                obscureText: true,
                controller: _text2,
                onChanged: (value) {
                  setState(() {});
                },
                decoration: const InputDecoration(
                  hintText: 'Password',
                  labelText: 'TextFormField #2',
                )),
            Text("show input : ${_text2.text}"),
            TextFormField(
                keyboardType: TextInputType.phone,
                controller: _text3,
                onChanged: (value) {
                  setState(() {});
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.mail,
                    ),
                  ),
                  hintText: 'TextFormField #3',
                  labelText: 'TextFormField #3',
                )),
            Text("show input : ${_text3.text}"),
            Text("radio list title #1"),
            RadioListTile(
                title: Text('11111'),
                value: 'A',
                groupValue: groupchoice,
                onChanged: (value) {
                  setState(() {
                    groupchoice = value;
                  });
                }),
            RadioListTile(
                title: Text('22222'),
                value: 'B',
                groupValue: groupchoice,
                onChanged: (value) {
                  setState(() {
                    groupchoice = value;
                  });
                }),
            RadioListTile(
                title: Text('33333'),
                value: 'c',
                groupValue: groupchoice,
                onChanged: (value) {
                  setState(() {
                    groupchoice = value;
                  });
                }),
            Text('ShowInput : ${groupchoice}'),
            CheckboxListTile(
                title: Text('Apple'),
                value: _value,
                onChanged: ((value) {
                  setState(() {
                    _value = value!;
                  });
                })),
            Text('ShowInput : ${_value}'),
            CheckboxListTile(
                title: Text('Banana'),
                value: _value1,
                onChanged: ((value) {
                  setState(() {
                    _value1 = value!;
                  });
                })),
            Text('ShowInput : ${_value1}'),
          ],
        ),
      ),
    );
  }
}
