import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0xff303436),
        child: LayoutBuilder(
          builder: (_, constraints) {
            return Padding(
              padding: EdgeInsets.only(
                left: constraints.maxWidth * 0.12,
                right: constraints.maxWidth * 0.12,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: constraints.maxHeight * 0.4,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Mofi",
                      style: TextStyle(
                        fontFamily: 'Satisfy',
                        color: Colors.white,
                        fontSize: constraints.maxHeight * 0.129,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Te alertando sobre",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Colors.white,
                        fontSize: constraints.maxHeight * 0.017,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "as movimentações do mercado financeiro",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Colors.white,
                        fontSize: constraints.maxHeight * 0.017,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.06,
                  ),
                  Container(
                    height: constraints.maxHeight * 0.06,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color(0xffE3E3DD),
                      border: Border.all(
                        color: Color(0xff000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(7),
                      ),
                    ),
                    child: SizedBox.expand(
                      child: FlatButton(
                          onPressed: () {},
                          child: Row(
                            children: <Widget>[
                              Spacer(
                                flex: 2,
                              ),
                              Container(
                                padding: EdgeInsets.all(7),
                                child: SizedBox(
                                  child: Image.asset(
                                      "assets/images/google-icon.png"),
                                ),
                              ),
                              Spacer(
                                flex: 2,
                              ),
                              Text(
                                "Entrar com Google",
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Color(0xff26282a),
                                  fontSize: constraints.maxHeight * 0.02,
                                ),
                              ),
                              Spacer(
                                flex: 4,
                              ),
                            ],
                          )),
                    ),
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.03,
                  ),
                  Container(
                    height: constraints.maxHeight * 0.06,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(7),
                      ),
                    ),
                    child: SizedBox.expand(
                      child: FlatButton(
                          onPressed: () {},
                          child: Row(
                            children: <Widget>[
                              Spacer(
                                flex: 4,
                              ),
                              Text(
                                "Criar uma conta",
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Color(0xffFFFFFF),
                                  fontSize: constraints.maxHeight * 0.02,
                                ),
                              ),
                              Spacer(
                                flex: 4,
                              ),
                            ],
                          )),
                    ),
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.03,
                  ),
                  Center(
                    child: Text(
                      "Já tem uma conta? Faça login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: constraints.maxHeight * 0.0157,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
