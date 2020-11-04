import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(title: Text('Responsividade em Flutter!'));
    var size = MediaQuery.of(context).size;

    return Scaffold(
      //appBar: appBar,
      body: SafeArea(
        child: Container(
          width: size.width,
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: LayoutBuilder(
                  builder: (_, constraints) {
                    return Container(
                      height: constraints.maxHeight,
                      width: constraints.maxWidth / 1.3,
                      color: Colors.indigo[300],
                      child: FittedBox(
                        child: Center(
                          child: Text(
                              'Max height ${constraints.maxHeight}\nMax width ${constraints.maxWidth}'),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: LayoutBuilder(
                  builder: (_, constraints) {
                    return Container(
                      height: constraints.maxHeight,
                      width: constraints.maxWidth / 1.3,
                      padding: EdgeInsets.all(10),
                      color: Colors.indigo[300],
                      child: FittedBox(
                        child: Center(
                          child: Text(
                              'Padding 10\nMax height ${constraints.maxHeight}\nMax width ${constraints.maxWidth}'),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: LayoutBuilder(
                  builder: (_, constraints) {
                    return Container(
                      height: constraints.maxHeight / 2,
                      width: constraints.maxWidth / 1.3,
                      padding: EdgeInsets.all(50),
                      color: Colors.blue[300],
                      child: FittedBox(
                        child: Center(
                          child: Text(
                              'Padding 50\nMax height ${constraints.maxHeight}\nMax width ${constraints.maxWidth}'),
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
