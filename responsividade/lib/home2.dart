import 'package:flutter/material.dart';

class Home2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(title: Text('Responsividade em Flutter!'));
    var size = MediaQuery.of(context).size;

    return Scaffold(
      //appBar: appBar,
      body: SafeArea(
        child: Container(
          height: size.height,
          child: Column(
            children: <Widget>[
              Flexible(
                flex: 1,
                child: LayoutBuilder(
                  builder: (_, constraints) {
                    return Container(
                      height: constraints.maxHeight,
                      width: constraints.maxWidth,
                      color: Colors.amber,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Container(
                          color: Colors.white,
                          child: Text('hello world'),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Flexible(
                flex: 2,
                child: LayoutBuilder(
                  builder: (_, constraints) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      height: constraints.maxHeight,
                      width: constraints.maxWidth,
                      color: Colors.blue,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Container(
                          color: Colors.white,
                          child: Text('hello world'),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Flexible(
                flex: 3,
                child: LayoutBuilder(
                  builder: (_, constraints) {
                    return Container(
                      padding: EdgeInsets.all(50),
                      height: constraints.maxHeight,
                      width: constraints.maxWidth,
                      color: Colors.green,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Container(
                          color: Colors.white,
                          child: Text('hello world'),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
