import 'package:day_7_with_flutter/data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<IconData> _icons = [
// The underscore declares a variable as private in dart.

  FontAwesomeIcons.burger,
  FontAwesomeIcons.hospital,
  FontAwesomeIcons.bagShopping,
];
  var colors = [
    Colors.orange,
    Colors.green,
    Colors.blue,
    
  ];
  var backcolors = [
    Color.fromARGB(126, 255, 224, 178),
    Color.fromARGB(124, 200, 230, 201),
    Color.fromARGB(114, 187, 222, 251),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromARGB(9, 0, 0, 0),
          child: Column(
            children: [
              Container(
                height: 250,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 33, 108, 239),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                      ),
                    ),
                    Positioned(
                      child: Container(
                        margin: EdgeInsets.only(top: 40, left: 10, right: 10),
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 24,
                              backgroundImage: AssetImage("images/man.png"),
                            ),
                            Container(
                              width: 90,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset(
                                    "images/search.png",
                                    width: 28,
                                    color: Colors.white,
                                  ),
                                  Image.asset(
                                    "images/bell.png",
                                    width: 28,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -2,
                      left: 30,
                      child: Container(
                        padding: EdgeInsets.all(15),
                        width: 340,
                        height: 135,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 60,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Available Balance",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Color.fromARGB(80, 0, 0, 0),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 2),
                                        child: Text(
                                          "\$16,645",
                                          style: TextStyle(
                                            fontSize: 28,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 24,
                                  backgroundImage: AssetImage("images/usa.png"),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "See More",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: .4,
                                        fontSize: 16,
                                        color: Color.fromARGB(80, 0, 0, 0),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 7),
                                      child: Container(
                                        padding: EdgeInsets.all(3),
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                157, 187, 222, 251),
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: Icon(
                                          FontAwesomeIcons.angleRight,
                                          size: 14,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "US Dollar",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: .4,
                                        fontSize: 16,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 7),
                                      child: Icon(
                                        FontAwesomeIcons.caretDown,
                                        size: 14,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 70,
                child: ListView.builder(
                  itemCount: userList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    if (index == 0) {
                      return Container(
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 33, 108, 239),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Image.asset(
                                  "images/search.png",
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20, right: 20),
                              height: 40,
                              child: VerticalDivider(
                                thickness: 2,
                                color: Colors.grey,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage(userList[index].img),
                                ),
                                Text(
                                  userList[index].name,
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ],
                        ),
                      );
                    }
                    return Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(userList[index].img),
                          ),
                          Text(
                            userList[index].name,
                            style: TextStyle(fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.all(15),
                width: 340,
                height: 135,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 45,
                          width: 65,
                          decoration: BoxDecoration(
                              color: Colors.blue[100],
                              borderRadius: BorderRadius.circular(22)),
                          child: Icon(
                            FontAwesomeIcons.plus,
                            color: Colors.blue[900],
                            size: 20,
                          ),
                        ),
                        Text(
                          "Add money",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 45,
                          width: 65,
                          decoration: BoxDecoration(
                              color: Colors.orange[100],
                              borderRadius: BorderRadius.circular(22)),
                          child: Icon(
                            Icons.wallet,
                            color: Colors.orange[900],
                            size: 20,
                          ),
                        ),
                        Text(
                          "Send money",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 45,
                          width: 65,
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(22)),
                          child: Icon(
                            Icons.menu_open_sharp,
                            color: Colors.grey[700],
                            size: 20,
                          ),
                        ),
                        Text(
                          "More",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              ListTile(
                leading: Text(
                  "Transactions",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: Text(
                  "See all",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              Container(
                width: 340,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18)
                ),
                child: ListView.builder(
                  itemCount: transList.length,
                  shrinkWrap: true,
                  
                  itemBuilder: (BuildContext context, int index) {
                    
                      return Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: ListTile(
                          leading: Container(
                            padding: EdgeInsets.all(15),
                            
                            decoration: BoxDecoration(
                              color: backcolors[index],
                              borderRadius: BorderRadius.circular(30)
                            ),
                            child: Icon(_icons[index],color: colors[index],size: 20,),
                          ),
                          title: Text(transList[index].name,style: TextStyle(fontWeight: FontWeight.w500),),
                          subtitle: Text(transList[index].description),
                          trailing: Text(transList[index].price,style: TextStyle(fontWeight: FontWeight.w500)),
                        ),
                      );
                    
                    
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
//FontAwesomeIcons
