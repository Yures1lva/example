import 'package:exampleflutter/perfilPage.dart';
import 'package:flutter/material.dart';
import 'package:exampleflutter/constants.dart';

class ConfigPage extends StatefulWidget {
  @override
  _ConfigPageState createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgrounColor,
      appBar: buildAppBar(
        context,
        "Configurações",
        Icon(
          Icons.settings,
          color: iconColor,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            container1(
              "Difinições do App", //nome do container
            ),
            //container2("Privacidade"),
            container3("Suporte"),
            // styleContainer("mia jeba"),
            // styleContainer("suporte"),
            Divider(
              height: 40,
              color: Colors.transparent,
            )
          ],
        ),
      ),
    );
  }

  Container container1(
    String name,
  ) {
    var selctL;
    var selctT;
    List<String> _language = <String>["Português", "Inglês", "Espanhol"];
    List<String> _tema = <String>["Escuro", "Claro", "Padrão do Sistema"];
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              left: 10,
              top: 20,
              bottom: 5,
            ),
            child: Text(
              name,
              style: TextStyle(
                color: primaryColor,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            //height: 400,
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
                // borderRadius: BorderRadius.only(
                //   bottomLeft: Radius.circular(bordas),
                //   bottomRight: Radius.circular(bordas),
                // ),
                borderRadius: BorderRadius.circular(bordas),
                color: Colors.white),
            child: Column(
              //ainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Divider(
                  height: 9,
                  color: Colors.transparent,
                ),
                rowStyle(
                  "Perfil",
                  () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PerfilPage()));
                  },
                ),
                Divider(
                  //height: 10,
                  thickness: 2,
                  color: backgrounColor,
                ),
                rowStyle(
                  "Notificações",
                  () {
                    bool isSwitched1 = true;
                    bool isSwitched = false;
                    showModalBottomSheet(
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        //side: BorderSide(color: primaryColor),
                      ),
                      context: context,
                      builder: (context) => SingleChildScrollView(
                        child: Container(
                          // height: MediaQuery.of(context).size.height * 0.7,
                          width: double.maxFinite,
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: Column(
                            children: <Widget>[
                              Container(
                                alignment: Alignment.topCenter,
                                height: 5,
                                width: 80,
                                margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                              Container(
                                alignment: Alignment.center,
                                //padding: EdgeInsets.only(left: 20),
                                height: 50,
                                width: double.maxFinite,
                                child: Text(
                                  "Notificações",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: primaryColor,
                                  ),
                                ),
                              ),
                              rowPop(isSwitched, "Notificações de promoções"),
                              rowPop(isSwitched,
                                  "Notificações de baixa de preço dos favoritos"),
                              rowPop(isSwitched, "Notificações de pedidos"),
                              rowPop(isSwitched1,
                                  "Desativar todas as notificações"),
                              // Divider(
                              //   height: 1,
                              //   thickness: 2,
                              //   color: backgrounColor,
                              // ),
                            ],
                          ),
                        ),
                      ),
                    );
                    //   Navigator.push(context,
                    //       MaterialPageRoute(builder: (context) => PerfilPage()));
                  },
                ),
                Divider(
                  //height: 10,
                  thickness: 2,
                  color: backgrounColor,
                ),
                rowStyle(
                  "Tema",
                  () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        //side: BorderSide(color: primaryColor),
                      ),
                      context: context,
                      builder: (context) => SingleChildScrollView(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: double.maxFinite,
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: Column(
                            children: <Widget>[
                              Container(
                                alignment: Alignment.topCenter,
                                height: 5,
                                width: 80,
                                margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                              Container(
                                alignment: Alignment.center,
                                //padding: EdgeInsets.only(left: 20),
                                height: 50,
                                width: double.maxFinite,
                                child: Text(
                                  "Tema",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: primaryColor,
                                  ),
                                ),
                              ),
                              Divider(
                                height: 10,
                                thickness: 2,
                                color: backgrounColor,
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    bottom: 5, top: 5, left: 10, right: 10),
                                padding: EdgeInsets.only(left: 10, right: 10),
                                height: 50,
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                  color: backgrounColor,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(bordas),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "Selecione o tema",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: primaryColor,
                                        fontSize: 15,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    DropdownButton(
                                      items: _tema
                                          .map((value) => DropdownMenuItem(
                                                child: Text(
                                                  value,
                                                  style: TextStyle(
                                                    color: primaryColor,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                                value: value,
                                              ))
                                          .toList(),
                                      onChanged: (selectedTema) {
                                        setState(() {
                                          selctL = selectedTema;
                                        });
                                      },
                                      value: selctT,
                                      isExpanded: false,
                                      isDense: false,
                                      hint: Text(
                                        "clique para selecionar",
                                        style: TextStyle(
                                          color: primaryColor,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                    //   Navigator.push(context,
                    //       MaterialPageRoute(builder: (context) => PerfilPage()));
                  },
                ),
                Divider(
                  //height: 10,
                  thickness: 2,
                  color: backgrounColor,
                ),
                rowStyle(
                  "Proteção do app",
                  () {
                    bool isSwitched = true;
                    showModalBottomSheet(
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        //side: BorderSide(color: primaryColor),
                      ),
                      context: context,
                      builder: (context) => SingleChildScrollView(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: double.maxFinite,
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: Column(
                            children: <Widget>[
                              Container(
                                alignment: Alignment.topCenter,
                                height: 5,
                                width: 80,
                                margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                              Container(
                                alignment: Alignment.center,
                                //padding: EdgeInsets.only(left: 20),
                                height: 50,
                                width: double.maxFinite,
                                child: Text(
                                  "Proteção do App",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: primaryColor,
                                  ),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 10),
                                  //padding: EdgeInsets.only(right: 20, left: 20),
                                  child: rowPop(isSwitched, "Proteção do app")),
                              // Divider(
                              //   height: 10,
                              //   thickness: 2,
                              //   color: backgrounColor,
                              // ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
                Divider(
                  //height: 10,
                  thickness: 2,
                  color: backgrounColor,
                ),
                rowStyle(
                  "Idioma",
                  () {
                    // bool isSwitched = true;
                    showModalBottomSheet(
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        //side: BorderSide(color: primaryColor),
                      ),
                      context: context,
                      builder: (context) => Container(
                        height: MediaQuery.of(context).size.height * 0.2,
                        child: Column(
                          children: <Widget>[
                            Container(
                              alignment: Alignment.topCenter,
                              height: 5,
                              width: 80,
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                            Container(
                              alignment: Alignment.center,
                              //padding: EdgeInsets.only(left: 20),
                              height: 50,
                              width: double.maxFinite,
                              child: Text(
                                "Idioma",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: primaryColor,
                                ),
                              ),
                            ),
                            Divider(
                              //height: 10,
                              thickness: 2,
                              color: backgrounColor,
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  bottom: 5, top: 5, left: 10, right: 10),
                              padding: EdgeInsets.only(left: 10, right: 10),
                              height: 50,
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                color: backgrounColor,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(bordas),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "Selecionar idioma",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: primaryColor,
                                      fontSize: 15,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  DropdownButton(
                                    items: _language
                                        .map((value) => DropdownMenuItem(
                                              child: Text(
                                                value,
                                                style: TextStyle(
                                                  color: primaryColor,
                                                  fontSize: 15,
                                                ),
                                              ),
                                              value: value,
                                            ))
                                        .toList(),
                                    onChanged: (selectedLanguage) {
                                      setState(() {
                                        selctL = selectedLanguage;
                                      });
                                    },
                                    value: selctL,
                                    isExpanded: false,
                                    isDense: false,
                                    hint: Text(
                                      "clique para selecionar",
                                      style: TextStyle(
                                        color: primaryColor,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                Divider(
                  //height: 10,
                  thickness: 2,
                  color: backgrounColor,
                ),
                rowStyle(
                  "Políica do app",
                  () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        //side: BorderSide(color: primaryColor),
                      ),
                      context: context,
                      builder: (context) => SingleChildScrollView(
                        child: Container(
                          //height: MediaQuery.of(context).size.height * 0.2,
                          width: double.maxFinite,
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: Column(
                            children: <Widget>[
                              Container(
                                alignment: Alignment.topCenter,
                                height: 5,
                                width: 80,
                                margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                              Container(
                                alignment: Alignment.center,
                                //padding: EdgeInsets.only(left: 20),
                                height: 50,
                                width: double.maxFinite,
                                child: Text(
                                  "Politíca do app",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: primaryColor,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10, bottom: 10),
                                padding: EdgeInsets.only(right: 20, left: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "bixo eu comi a mãe do alex certeza lek hgjbknlmjkhvjbkn ghhvjbjnkjkhjghfgchvjbknlçmkljkhvjgchvjkbljkhjkghjgchxfchvjbklnbjkvhjhgchxfghcvjjbklnknbkjhvjchgxgfchvjkblnnjkbhvjgchgxgffcvhjbknljbjhvjcgxgfchvjbklnbjhvjgchxgfchvjbklnjbhvjgchxgfhcvjbknljkbhvjgchfxghcvjbkbjhvjgchxfhcvjkbjhvjgchxgffchvjbkjbhvjghcfxgdfxgchvjhghc   cgvhbnhlgkjhxcjvbknl   cvbnkjf",
                                      style: TextStyle(
                                          color: primaryColor,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
                Divider(
                  height: 9,
                  color: Colors.transparent,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container rowPop(bool isSwitched, String nom) {
    return Container(
      child: Column(
        children: <Widget>[
          Divider(
            height: 1,
            thickness: 2,
            color: backgrounColor,
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  nom,
                  style: TextStyle(
                    fontSize: 18,
                    color: primaryColor,
                  ),
                ),
                Container(
                  child: Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                        print(isSwitched);
                      });
                    },
                    //activeTrackColor: secondaryColor,

                    activeColor: primaryColor,
                    activeTrackColor: backgrounColor,
                    inactiveTrackColor: backgrounColor,
                    inactiveThumbColor: primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container container3(
    String name,
  ) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              left: 10,
              top: 20,
              bottom: 5,
            ),
            child: Text(
              name,
              style: TextStyle(
                color: primaryColor,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            //height: 400,
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
                // borderRadius: BorderRadius.only(
                //   bottomLeft: Radius.circular(bordas),
                //   bottomRight: Radius.circular(bordas),
                // ),
                borderRadius: BorderRadius.circular(bordas),
                color: Colors.white),
            child: Column(
              //ainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Divider(
                  height: 9,
                  color: Colors.transparent,
                ),
                rowStyle(
                  "Central de ajuda",
                  () {
                    bool isSwitched = true;
                    showModalBottomSheet(
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        //side: BorderSide(color: primaryColor),
                      ),
                      context: context,
                      builder: (context) => SingleChildScrollView(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: double.maxFinite,
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: Column(
                            children: <Widget>[
                              Container(
                                alignment: Alignment.topCenter,
                                height: 5,
                                width: 80,
                                margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                              Container(
                                alignment: Alignment.center,
                                //padding: EdgeInsets.only(left: 20),
                                height: 50,
                                width: double.maxFinite,
                                child: Text(
                                  "Central de ajuda",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: primaryColor,
                                  ),
                                ),
                              ),
                              Container(
                                child: Column(children: [
                                  Divider(
                                    height: 1,
                                    thickness: 2,
                                    color: backgrounColor,
                                  ),
                                  rowIcon(
                                    "Email",
                                    Icon(
                                      Icons.email_outlined,
                                      color: primaryColor,
                                    ),
                                  ),
                                  Divider(
                                    height: 1,
                                    thickness: 2,
                                    color: backgrounColor,
                                  ),
                                  rowIcon(
                                    "Chate",
                                    Icon(
                                      Icons.chat_bubble_outline,
                                      color: primaryColor,
                                    ),
                                  ),
                                ]),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
                Divider(
                  //height: 10,
                  thickness: 2,
                  color: backgrounColor,
                ),
                rowStyle(
                  "Entre em contato",
                  () {
                    bool isSwitched = true;
                    showModalBottomSheet(
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        //side: BorderSide(color: primaryColor),
                      ),
                      context: context,
                      builder: (context) => SingleChildScrollView(
                        child: Container(
                          // height: MediaQuery.of(context).size.height * 0.2,
                          width: double.maxFinite,
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: Column(
                            children: <Widget>[
                              Container(
                                alignment: Alignment.topCenter,
                                height: 5,
                                width: 80,
                                margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                              Container(
                                alignment: Alignment.center,
                                //padding: EdgeInsets.only(left: 20),
                                height: 50,
                                width: double.maxFinite,
                                child: Text(
                                  "Entre em contato",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: primaryColor,
                                  ),
                                ),
                              ),
                              Container(
                                child: Column(children: [
                                  Divider(
                                    height: 1,
                                    thickness: 2,
                                    color: backgrounColor,
                                  ),
                                  rowIcon(
                                    "Email",
                                    Icon(
                                      Icons.email_outlined,
                                      color: primaryColor,
                                    ),
                                  ),
                                  Divider(
                                    height: 1,
                                    thickness: 2,
                                    color: backgrounColor,
                                  ),
                                  rowIcon(
                                    "Site",
                                    Icon(
                                      Icons.public_outlined,
                                      color: primaryColor,
                                    ),
                                  ),
                                  Divider(
                                    height: 1,
                                    thickness: 2,
                                    color: backgrounColor,
                                  ),
                                  rowIcon(
                                    "Instagram",
                                    Icon(
                                      Icons.alternate_email_outlined,
                                      color: primaryColor,
                                    ),
                                  ),
                                  Divider(
                                    height: 1,
                                    thickness: 2,
                                    color: backgrounColor,
                                  ),
                                  rowIcon(
                                    "Telefone da empresa",
                                    Icon(
                                      Icons.phone_outlined,
                                      color: primaryColor,
                                    ),
                                  ),
                                ]),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
                Divider(
                  //height: 10,
                  thickness: 2,
                  color: backgrounColor,
                ),
                rowStyle(
                  "Sobre",
                  () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        //side: BorderSide(color: primaryColor),
                      ),
                      context: context,
                      builder: (context) => SingleChildScrollView(
                        child: Container(
                          //height: MediaQuery.of(context).size.height * 0.2,
                          width: double.maxFinite,
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: Column(
                            children: <Widget>[
                              Container(
                                alignment: Alignment.topCenter,
                                height: 5,
                                width: 80,
                                margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                              Container(
                                alignment: Alignment.center,
                                //padding: EdgeInsets.only(left: 20),
                                height: 50,
                                width: double.maxFinite,
                                child: Text(
                                  "Sobre",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: primaryColor,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10, bottom: 10),
                                padding: EdgeInsets.only(right: 20, left: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Somos SNST uma Startup formada por jovens estudantes do curso de Eng. da Computação da Universidade Federal do Sul Suldeste do Pará UNIFESSPA. a Startup é de soluções em TI focada  em Apps Sites e programas desTOperson bla blla tyugihojpoiouiugfh ghbjknlm, cyyvbuhjnkm vyubinjmk Somos SNST uma Startup formada por jovens estudantes do curso de Eng. da Computação da Universidade Federal do Sul Suldeste do Pará UNIFESSPA. a Startup é de soluções em TI focada  em Apps Sites e programas desTOperson bla blla tyugihojpoiouiugfh ghbjknlm, cyyvbuhjnkm vyubinjmkSomos SNST uma Startup formada por jovens estudantes do curso de Eng. da Computação da Universidade Federal do Sul Suldeste do Pará UNIFESSPA. a Startup é de soluções em TI focada  em Apps Sites e programas desTOperson bla blla tyugihojpoiouiugfh ghbjknlm, cyyvbuhjnkm vyubinjmkSomos SNST uma Startup formada por jovens estudantes do curso de Eng. da Computação da Universidade Federal do Sul Suldeste do Pará UNIFESSPA. a Startup é de soluções em TI focada  em Apps Sites e programas desTOperson bla blla tyugihojpoiouiugfh ghbjknlm, cyyvbuhjnkm vyubinjmkSomos SNST uma Startup formada por jovens estudantes do curso de Eng. da Computação da Universidade Federal do Sul Suldeste do Pará UNIFESSPA. a Startup é de soluções em TI focada  em Apps Sites e programas desTOperson bla blla tyugihojpoiouiugfh ghbjknlm, cyyvbuhjnkm vyubinjmk",
                                      style: TextStyle(
                                          color: primaryColor,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
                Divider(
                  //height: 10,
                  thickness: 2,
                  color: backgrounColor,
                ),
                rowStyle("Excluir conta", () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      //side: BorderSide(color: primaryColor),
                    ),
                    context: context,
                    builder: (context) => SingleChildScrollView(
                      child: Container(
                        //height: MediaQuery.of(context).size.height * 0.2,
                        width: double.maxFinite,
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: Column(
                          children: <Widget>[
                            Container(
                              alignment: Alignment.topCenter,
                              height: 5,
                              width: 80,
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                            Container(
                              alignment: Alignment.center,
                              //padding: EdgeInsets.only(left: 20),
                              height: 50,
                              width: double.maxFinite,
                              child: Text(
                                "Quer realmente excluir sua conta?",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: primaryColor,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10, bottom: 10),
                              padding: EdgeInsets.only(right: 20, left: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(bottom: 5, top: 5),
                                    height: 50,
                                    alignment: Alignment.centerLeft,
                                    decoration: BoxDecoration(
                                      color: backgrounColor,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(bordas),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        VerticalDivider(
                                          width: 2,
                                          color: Colors.transparent,
                                        ),
                                        InkWell(
                                          child: Text(
                                            "Sim",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: primaryColor,
                                              fontSize: 15,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        VerticalDivider(
                                          thickness: 2,
                                        ),
                                        InkWell(
                                          child: Text(
                                            "Não",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: primaryColor,
                                              fontSize: 15,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        VerticalDivider(
                                          width: 2,
                                          color: Colors.transparent,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
                Divider(
                  height: 9,
                  color: Colors.transparent,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container rowIcon(String name, Icon icon) {
    return Container(
        margin: EdgeInsets.only(top: 10, bottom: 10),
        padding: EdgeInsets.only(right: 20, left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              name,
              style: TextStyle(
                fontSize: 18,
                color: primaryColor,
              ),
            ),
            icon
          ],
        ));
  }

  Container rowStyle(String nome1, Function navigator) {
    return Container(
      height: 40,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell(
            onTap: navigator,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  nome1,
                  style: TextStyle(
                    fontSize: 20,
                    color: primaryColor,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: primaryColor,
                  size: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
