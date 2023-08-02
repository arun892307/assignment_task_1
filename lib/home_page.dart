
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  var _current_index=0;


  // Variables for API 1
  Map datamap={};
  List<dynamic>datalist=[];

  // Variables for API 2

  Map datamap_2={};
  List<dynamic> datalist_2=[];

  @override
  void initState() {
    // TODO: implement initState
    call_api_1();
    call_api_2();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(

          foregroundColor: Colors.white,
          automaticallyImplyLeading: false,
          elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              color:const Color.fromRGBO(196, 196, 196,1) ,
              iconSize: size.height*1,
              icon: const ImageIcon(
                AssetImage("assets/icons/unnamed (3).png"),
                size: 45,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
          backgroundColor: const Color.fromRGBO(238,243,253,0.5),
        //automaticallyImplyLeading: false,
          actions: <Widget> [
            IconButton(onPressed: (){},
                icon: const ImageIcon(
                  AssetImage("assets/icons/unnamed (1).png"),
                  color:Color.fromRGBO(196, 196, 196,1),
                  size: 50,
                )),
            Padding(
              padding: const EdgeInsets.only(right:12),
              child: IconButton(onPressed: (){},
                  icon: const ImageIcon(
                    AssetImage("assets/icons/unnamed.png"),
                    color:Color.fromRGBO(196, 196, 196,1),
                    size: 50,
                  )),
            )

          ]
      ),
      backgroundColor: const Color.fromRGBO(255, 255, 255,1),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical ,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: size.height*0.35,
              width: size.width*1,
              color: const Color.fromRGBO(238,243,253,0.5),
              child: Column(
                children: [
                  SizedBox(
                    height: size.height*0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: AutoSizeText(
                              "Hello, Priya!",
                              style: GoogleFonts.lora(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24,
                                  fontStyle: FontStyle.normal
                              )
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: AutoSizeText(
                              "What do you wanna learn today?",
                              style: GoogleFonts.lora(
                                  color: const Color.fromRGBO(109, 116, 122,1),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17,
                                  fontStyle: FontStyle.normal
                              )
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height*0.053,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: size.height*0.075,
                        width: size.width*0.47,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromRGBO(89, 139, 237,1),
                                width: 1,
                                style: BorderStyle.solid
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10.0))
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: size.width*0.024,
                            ),
                            IconButton(
                                onPressed: (){},
                                color: Colors.blueAccent,
                                iconSize: size.height*0.032,
                                icon: const ImageIcon(
                                  AssetImage("assets/icons/img.png"),
                                )),
                            SizedBox(
                              width: size.width*0.02,
                            ),
                            AutoSizeText(
                                "Programs",
                                style: GoogleFonts.inter(
                                    color: Colors.blueAccent,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal
                                )
                            )

                          ],
                        ),
                      ),
                      Container(
                          height: size.height*0.075,
                          width: size.width*0.47,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color.fromRGBO(89, 139, 237,1),
                                  width: 1,
                                  style: BorderStyle.solid
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10.0))
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: size.width*0.024,
                              ),
                              IconButton(
                                  onPressed: (){},
                                  color: Colors.blueAccent,
                                  iconSize: size.height*0.032,
                                  icon: Icon(Icons.help)),
                              SizedBox(
                                width: size.width*0.024,
                              ),
                              AutoSizeText(
                                  "Get Help",
                                  style: GoogleFonts.inter(
                                      color: Colors.blueAccent,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      fontStyle: FontStyle.normal
                                  )
                              )

                            ],
                          )
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height*0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          height: size.height*0.075,
                          width: size.width*0.47,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color.fromRGBO(89, 139, 237,1),
                                  width: 1,
                                  style: BorderStyle.solid
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10.0))
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: size.width*0.024,
                              ),
                              IconButton(
                                  onPressed: (){},
                                  color: Colors.blueAccent,
                                  iconSize: size.height*0.032,
                                  icon: const ImageIcon(
                                    AssetImage("assets/icons/unnamed (2).png"),
                                  )),
                              SizedBox(
                                width: size.width*0.024,
                              ),
                              AutoSizeText(
                                  "Learn",
                                  style: GoogleFonts.inter(
                                      color: Colors.blueAccent,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      fontStyle: FontStyle.normal
                                  )
                              )

                            ],
                          )
                      ),
                      Container(
                          height: size.height*0.075,
                          width: size.width*0.47,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color.fromRGBO(89, 139, 237,1),
                                  width: 1,
                                  style: BorderStyle.solid
                              ),
                              borderRadius: const BorderRadius.all(Radius.circular(10.0))
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: size.width*0.024,
                              ),
                          IconButton(
                              onPressed: (){},
                              color: Colors.blueAccent,
                              iconSize: size.height*0.032,
                              icon: const ImageIcon(
                                AssetImage("assets/images/img_2.jpg"),
                              )),
                              SizedBox(
                                width: size.width*0.024,
                              ),
                              AutoSizeText(
                                  "DD Tracker",
                                  style: GoogleFonts.inter(
                                      color: Colors.blueAccent,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      fontStyle: FontStyle.normal
                                  )
                              )

                            ],
                          )
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height*0.02,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height*0.016,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: AutoSizeText(
                    "Programs for you",
                    style: GoogleFonts.lora(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                SizedBox(
                  width: size.width*0.2,
                ),
                AutoSizeText(
                  "View all",
                  style: GoogleFonts.inter(
                      color: const Color.fromRGBO(109, 116, 122,1),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                IconButton(onPressed: (){},
                    icon: const Icon(Icons.arrow_forward),color: const Color.fromRGBO(109, 116, 122,1),iconSize: 20,)

              ],
            ),
            SizedBox(
              height: size.height*0.016,
            ),
            SizedBox(
              height: size.height*0.45,
              width: size.width*0.98,
              child: ListView.builder(
                  padding: const EdgeInsets.only(top: 8,left: 5,bottom: 3),
                  scrollDirection: Axis.horizontal,
                  itemCount: datalist.length,
                  itemBuilder: (context, index) =>
                      Padding(
                        padding: const EdgeInsets.only(left: 1,right: 15),
                        child: Container(
                          width: size.width*0.75,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 1,
                                color: const Color.fromRGBO(14, 68, 62, 0.08)),
                              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromRGBO(14, 68, 62, 0.08),
                                    blurRadius: 1
                                )
                              ]
                          ),
                          child:  Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: size.width*0.78,
                                  height: size.height*0.22,
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(221, 227, 194,1),
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(8.0),topLeft: Radius.circular(8.0),bottomLeft: Radius.zero,bottomRight: Radius.zero),
                                      image: DecorationImage(image: AssetImage("assets/images/img.png"),fit: BoxFit.contain)
                                  ),
                                ),
                                SizedBox(
                                  height: size.height*0.02,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:[
                                    SizedBox(
                                      height: size.height*0.01,
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 17),
                                        child: AutoSizeText(
                                            datalist[index]["category"].toString(),
                                            style: GoogleFonts.inter(
                                                color: Colors.blueAccent,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 14,
                                                fontStyle: FontStyle.normal
                                            )
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.03,
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 17),
                                        child: AutoSizeText(
                                            datalist[index]["name"],
                                            style: GoogleFonts.inter(
                                                color: Colors.black87,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 17,
                                                fontStyle: FontStyle.normal
                                            )
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.007,
                                    ),

                                    SizedBox(
                                      height: size.height*0.035,
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 17),
                                        child: AutoSizeText(
                                            "${datalist[index]["lesson"]} lessons",
                                            style: GoogleFonts.inter(
                                                color: const Color.fromRGBO(109, 116, 122,1),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                                fontStyle: FontStyle.normal
                                            )
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
              ),
            ),
            SizedBox(
             height: size.height*0.032,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: AutoSizeText(
                    "Events and experiences",
                    style: GoogleFonts.lora(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                SizedBox(
                  width: size.width*0.06,
                ),
                AutoSizeText(
                  "View all",
                  style: GoogleFonts.inter(
                      color: const Color.fromRGBO(109, 116, 122,1),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                IconButton(onPressed: (){},
                  icon: const Icon(Icons.arrow_forward),color: const Color.fromRGBO(109, 116, 122,1),iconSize: 20,)

              ],
            ),
            SizedBox(
              height: size.height*0.016,
            ),
            SizedBox(
              height: size.height*0.48,
              width: size.width*0.98,
              child: ListView.builder(
                  padding: const EdgeInsets.only(top: 8,left: 5,bottom: 3),
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) =>
                      Padding(
                        padding: const EdgeInsets.only(left: 1,right: 15),
                        child: Container(
                          width: size.width*0.75,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: const Color.fromRGBO(14, 68, 62, 0.08)),
                              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromRGBO(14, 68, 62, 0.08),
                                    blurRadius: 1
                                )
                              ]
                          ),
                          child:  Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: size.width*0.78,
                                  height: size.height*0.22,
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(221, 227, 194,1),
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(8.0),topLeft: Radius.circular(8.0),bottomLeft: Radius.zero,bottomRight: Radius.zero),
                                      image: DecorationImage(image: AssetImage("assets/images/img_1.png"),fit: BoxFit.fill)
                                  ),
                                ),
                                SizedBox(
                                  height: size.height*0.02,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:[
                                    SizedBox(
                                      height: size.height*0.01,
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 17),
                                        child: AutoSizeText(
                                            "BABYCARE",
                                            style: GoogleFonts.inter(
                                                color: Colors.blueAccent,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 14,
                                                fontStyle: FontStyle.normal
                                            )
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 17),
                                        child: AutoSizeText(
                                            "Understanding of human",
                                            style: GoogleFonts.inter(
                                                color: Colors.black87,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 17,
                                                fontStyle: FontStyle.normal
                                            )
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.007,
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 17),
                                        child: AutoSizeText(
                                            "behaviour",
                                            style: GoogleFonts.inter(
                                                color: Colors.black87,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 17,
                                                fontStyle: FontStyle.normal
                                            )
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),

                                    Row(
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 17),
                                            child: AutoSizeText(
                                                "13 Fed, Sunday",
                                                style: GoogleFonts.inter(
                                                    color: const Color.fromRGBO(109, 116, 122,1),
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14,
                                                    fontStyle: FontStyle.normal
                                                )
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: size.width*0.099,
                                        ),
                                        SizedBox(
                                          height: size.height*0.035,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),side: const BorderSide(color: Colors.blue,width: 1)),
                                            ),
                                              onPressed: (){},
                                              child: const Text("Book",
                                              style: TextStyle(
                                                color: Colors.blue
                                              ),)),
                                        )

                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
              ),
            ),
            SizedBox(
              height: size.height*0.028,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 13),
                  child: AutoSizeText(
                    "Lessons for you",
                    style: GoogleFonts.lora(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                SizedBox(
                  width: size.width*0.2,
                ),
                AutoSizeText(
                  "View all",
                  style: GoogleFonts.inter(
                      color: const Color.fromRGBO(109, 116, 122,1),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                IconButton(onPressed: (){},
                  icon: const Icon(Icons.arrow_forward),color: const Color.fromRGBO(109, 116, 122,1),iconSize: 20,)

              ],
            ),
            SizedBox(
              height: size.height*0.02,
            ),
            SizedBox(
              height: size.height*0.45,
              width: size.width*0.98,
              child: ListView.builder(
                  padding: const EdgeInsets.only(top: 8,left: 5,bottom: 3),
                  scrollDirection: Axis.horizontal,
                  itemCount: datalist_2.length,
                  itemBuilder: (context, index) =>
                      Padding(
                        padding: const EdgeInsets.only(left: 1,right: 15),
                        child: Container(
                          width: size.width*0.75,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: const Color.fromRGBO(14, 68, 62, 0.08)),
                              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromRGBO(14, 68, 62, 0.08),
                                    blurRadius: 1
                                )
                              ]
                          ),
                          child:  Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: size.width*0.78,
                                  height: size.height*0.22,
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(221, 227, 194,1),
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(8.0),topLeft: Radius.circular(8.0),bottomLeft: Radius.zero,bottomRight: Radius.zero),
                                      image: DecorationImage(image: AssetImage("assets/images/img_1.png"),fit: BoxFit.fill)
                                  ),
                                ),
                                SizedBox(
                                  height: size.height*0.02,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:[
                                    SizedBox(
                                      height: size.height*0.01,
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 17),
                                        child: AutoSizeText(
                                            datalist_2[index]["category"].toString(),
                                            style: GoogleFonts.inter(
                                                color: Colors.blueAccent,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 15,
                                                fontStyle: FontStyle.normal
                                            )
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.02,
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 17),
                                        child: AutoSizeText(
                                            datalist_2[index]["name"].toString(),
                                            style: GoogleFonts.inter(
                                                color: Colors.black87,
                                                fontWeight: FontWeight.w700,
                                                fontSize: size.height*0.015,
                                                fontStyle: FontStyle.normal
                                            )
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height*0.007,
                                    ),

                                    SizedBox(
                                      height: size.height*0.015,
                                    ),
                                    Row(
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 17),
                                            child: AutoSizeText(
                                                "${datalist_2[index]["duration"].toString()} min",
                                                style: GoogleFonts.inter(
                                                    color: const Color.fromRGBO(109, 116, 122,1),
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14,
                                                    fontStyle: FontStyle.normal
                                                )
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: size.width*0.4,
                                        ),

                                        datalist_2[index]["locked"].toString()=="false"?
                                        IconButton(onPressed: (){},

                                          icon: const Icon(Icons.lock_outline),iconSize: 32,color: const Color.fromRGBO(109, 116, 122,1),)
                                         :
                                        IconButton(onPressed: (){},

                                          icon: const Icon(Icons.lock_open),iconSize: 32,color: const Color.fromRGBO(109, 116, 122,1),)
                                      ],
                                    )


                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
              ),
            ),
            SizedBox(
              height: size.height*0.05,
            ),




          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        iconSize: 30,
        currentIndex: _current_index,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled,),
            label: "Home",
            backgroundColor: Colors.blue
          ),
          BottomNavigationBarItem(
              icon:ImageIcon(
                AssetImage("assets/icons/unnamed (2).png"),
                size: 30,
              ),
              label: "Learn",
              backgroundColor: Colors.blue
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/img_2.png"),
                size: 30,
              ),
              label: "Hub",
              backgroundColor: Colors.blue
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline),
              label: "Chat",
              backgroundColor: Colors.blue
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.circle_outlined,),
              label: "Profile",
              backgroundColor: Colors.blue
          )
        ],
        onTap: (index){
          setState(() {
            _current_index=index;
          });
        },
      )

    );
  }

 Future call_api_1() async {
    http.Response response;
    response=await http.get(Uri.parse("https://632017e19f82827dcf24a655.mockapi.io/api/programs"));
    if(response.statusCode==200)
    {
      setState(() {
        datamap=jsonDecode(response.body);
        datalist=datamap["items"];
      });
    }
    else{
      print("Error");
    }
  }
  Future call_api_2() async {
    http.Response response;
    response=await http.get(Uri.parse("https://632017e19f82827dcf24a655.mockapi.io/api/lessons"));
    if(response.statusCode==200)
    {
      setState(() {
        datamap_2=jsonDecode(response.body);
        datalist_2=datamap_2["items"];
      });
    }
    else{
      print("Error");
    }
  }

}
