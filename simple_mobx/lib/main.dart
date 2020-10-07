import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:simple_mobx/controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter MobX Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter MobX Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = Controller();

  _textField({String labelText, onChanged, String Function() errorText}) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
        errorText: errorText == null ? null : errorText(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulário com MobX"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Observer(builder: (_) {
              return _textField(
                  labelText: "Nome",
                  onChanged: controller.client.changeName,
                  errorText: controller.validateName);
            }),
            SizedBox(height: 20),
            Observer(builder: (_) {
              return _textField(
                  labelText: "Email",
                  onChanged: controller.client.changeEmail,
                  errorText: controller.validateEmail);
            }),
            SizedBox(height: 20),
            Observer(builder: (_) {
              return _textField(
                  labelText: "CPF", onChanged: controller.client.changeCpf);
            }),
            SizedBox(height: 50),
            Observer(builder: (_) {
              return RaisedButton(
                  onPressed: controller.isValid ? () {} : null,
                  child: Text("Salvar"));
            })
          ],
        ),
      ),
    );
  }
}
