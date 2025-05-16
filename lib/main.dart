import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Player',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFBCAAA4),
      appBar: AppBar(
        backgroundColor: const Color(0xFF80CBC4),
        toolbarHeight: 70,
        leading: IconButton(
          icon:  Icon(
              Icons.arrow_back,
              size: 25,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.menu_outlined,
              size: 40,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 89),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPxX3yfTeEJw290MYNSwKgc213Xuv5bSSLuw&s",
                        ),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.circle,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 40,
                          offset: Offset(-15, -15),
                        ),
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 40,
                          offset: Offset(15, 15),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Tut Elimi",
                    style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
                  ),
                  Text(
                    "Turkish Song",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Slider(
                value: 8,
                min: 0,
                max: 10,
                divisions: 10,
                activeColor: Color(0xFF80CBC4),
                inactiveColor: Colors.grey,
                onChanged: (value) {},
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  CircleIcon(
                    iconData: Icons.fast_rewind,
                    backgroundColor: Color(0xFFBDBDBD),
                  ),
                  CircleIcon(
                    iconData: Icons.pause,
                    backgroundColor: Color(0xFF80CBC4),
                  ),
                  CircleIcon(
                    iconData: Icons.fast_forward,
                    backgroundColor: Color(0xFFBDBDBD),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF80CBC4),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SecondPage()),
                  );
                },
                child: const Text("Next"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CircleIcon extends StatelessWidget {
  final IconData iconData;
  final Color backgroundColor;

  const CircleIcon({
    super.key,
    required this.iconData,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 40,
            offset: Offset(-15, -15),
          ),
          BoxShadow(
            color: Colors.grey,
            blurRadius: 40,
            offset: Offset(15, 15),
          ),
        ],
      ),
      child: Icon(
        iconData,
        size: 75,
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFBCAAA4),
      appBar: AppBar(
        backgroundColor: Color(0xFF80CBC4),
        toolbarHeight: 70,
      ),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: Column(
            children: [
              //Row 1
              Container(
                padding: EdgeInsets.only(top: 18),
                decoration: BoxDecoration(
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                        color: Color(0xFFBDBDBD),
                        shape: BoxShape.circle ,
                      ),
                      child: Icon(
                         Icons.save,
                       size: 35,
                      ),
                    ),
                    Container(
                      height: 170,
                      width: 170,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle ,
                        image: const DecorationImage(
                          image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPxX3yfTeEJw290MYNSwKgc213Xuv5bSSLuw&s",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                        color: Color(0xFFBDBDBD),
                        shape: BoxShape.circle ,
                      ),
                      child: Icon(
                        Icons.more_horiz,
                        size: 37,
                      ),
                    ),
                  ],
                ),
              ),
              /////////////////////////////////////
              SizedBox(height: 30,),
              //Row 2 ///
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(18),
                            child: Column(
                              children: [
                                Text("Holex" ,style: TextStyle(fontSize: 20),),
                                Text("flans" ,style: TextStyle(fontSize: 15),),
                              ],
                            ),
                          ) ,

                          Container(

                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Color(0xFFBDBDBD).withOpacity(0.65),
                              shape: BoxShape.circle ,
                            ),
                            child: Icon(
                              Icons.more_horiz,
                              size: 28,
                            ),
                          ),
                        ],
                      //),
                    ),
                  ////
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(18),
                        child: Column(
                          children: [
                            Text("Holex" ,style: TextStyle(fontSize: 20),),
                            Text("flans" ,style: TextStyle(fontSize: 15),),
                          ],
                        ),
                      ) ,

                      Container(

                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Color(0xFFBDBDBD).withOpacity(0.65),
                          shape: BoxShape.circle ,
                        ),
                        child: Icon(
                          Icons.more_horiz,
                          size: 28,
                        ),
                      ),
                    ],
                    //),
                  ),
                  /////
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.13,
                    decoration: BoxDecoration(
                      color: Color(0xFFBDBDBD).withOpacity(0.65),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(18),
                        child: Column(
                          children: [
                            Text("Holex" ,style: TextStyle(fontSize: 20),),
                            Text("flans" ,style: TextStyle(fontSize: 15),),
                          ],
                        ),
                      ) ,

                      Container(

                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Color(0xFFBDBDBD).withOpacity(0.65),
                          shape: BoxShape.circle ,
                        ),
                        child: Icon(
                          Icons.more_horiz,
                          size: 28,
                        ),
                      ),
                    ],
                    //),
                  ),
                  ),

                  ////////
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(18),
                        child: Column(
                          children: [
                            Text("Holex" ,style: TextStyle(fontSize: 20),),
                            Text("flans" ,style: TextStyle(fontSize: 15),),
                          ],
                        ),
                      ) ,

                      Container(

                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Color(0xFFBDBDBD).withOpacity(0.65),
                          shape: BoxShape.circle ,
                        ),
                        child: Icon(
                          Icons.more_horiz,
                          size: 28,
                        ),
                      ),
                    ],
                    //),
                  ),


                ],
              ),

              //////////////////////////////////////
              SizedBox(height: 20,),
              /////////////////////////////////////
              //Row 3
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:  [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Color(0xFFBDBDBD),
                      shape: BoxShape.circle ,
                    ),
                    child: Icon(
                      Icons.fast_rewind,
                      size: 55,
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Color(0xFF80CBC4),
                      shape: BoxShape.circle ,
                    ),
                    child: Icon(
                      Icons.pause,
                      size: 55,
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Color(0xFFBDBDBD),
                      shape: BoxShape.circle ,
                    ),
                    child: Icon(
                      Icons.fast_forward,
                      size: 55,
                    ),
                  ),
                ],
              ),

            ],
          ) ,
        ),
      ),
    );
  }
}


