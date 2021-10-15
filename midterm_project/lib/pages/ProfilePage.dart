// @dart=2.9
import 'package:flutter/material.dart';
import 'package:shape_of_view/shape_of_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Container(
                height: height,
              ),
              ShapeOfView(
                shape: ArcShape(
                  direction: ArcDirection.Outside,
                  height: 15,
                  position: ArcPosition.Bottom,
                ),
                child: Container(
                  height: height*0.32,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/img/profiledevs.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 230,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    height: height*0.2,
                    width: width*0.3,
                    child: CircleAvatar(
                      backgroundColor: Colors.blueAccent,
                      backgroundImage: AssetImage('assets/img/kazuhaimpact.jpg'),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: height*0.48,
                  ),
                  Center(
                    child: Text(
                      'ABOUT US',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 35,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  
                  Column(
                    children: [
                      Divider(
                        height: 0.9,
                      ),
                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 1,
                        itemBuilder: (context, index){
                          return ItemCard1(
                            height: height,
                            width: width,
                          );
                        },
                      ),
                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 1,
                        itemBuilder: (context, index){
                          return ItemCard2(
                            height: height,
                            width: width,
                          );
                        },
                      ),
                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 1,
                        itemBuilder: (context, index){
                          return ItemCard3(
                            height: height,
                            width: width,
                          );
                        },
                      ),
                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 1,
                        itemBuilder: (context, index){
                          return ItemCard4(
                            height: height,
                            width: width,
                          );
                        },
                      ),
                      Divider(
                        height: 1.0,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'BACK TO DASHBOARD',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class ItemCard1 extends StatefulWidget {
  final double height;
  final double width;

  const ItemCard1({Key key, this.height, this.width}) : super(key: key);
  @override
  _ItemCard1State createState() => _ItemCard1State();
}

class _ItemCard1State extends State<ItemCard1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(15),
        elevation: 8,
        child: Container(
          height: widget.height*0.26,
          width: widget.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
        ),
          child: Column(
          children: [
            Container(
              height: widget.height*0.08,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage('assets/img/dev.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Text(
                  'Krea Marie O. Alangcas',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Divider(),
                Text(
                  'Age: 21' '\nCourse and Year: BSIT - 3' '\nProgramming Expertise: HTML & PHP',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ],
        ),
       ),
      ),
    );
  }
}


class ItemCard2 extends StatefulWidget {
  final double height;
  final double width;

  const ItemCard2({Key key, this.height, this.width}) : super(key: key);
  @override
  _ItemCard2State createState() => _ItemCard2State();
}

class _ItemCard2State extends State<ItemCard2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(15),
        elevation: 8,
        child: Container(
          height: widget.height*0.26,
          width: widget.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
        ),
          child: Column(
          children: [
            Container(
              height: widget.height*0.08,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage('assets/img/dev.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Text(
                  'Pete Andre C. Cadelina',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Divider(),
                Text(
                  'Age: 21' '\nCourse and Year: BSCS - 3' '\nProgramming Expertise: C & HTML',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ],
        ),
       ),
      ),
    );
  }
}

class ItemCard3 extends StatefulWidget {
  final double height;
  final double width;

  const ItemCard3({Key key, this.height, this.width}) : super(key: key);
  @override
  _ItemCard3State createState() => _ItemCard3State();
}

class _ItemCard3State extends State<ItemCard3> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(15),
        elevation: 8,
        child: Container(
          height: widget.height*0.26,
          width: widget.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
        ),
          child: Column(
          children: [
            Container(
              height: widget.height*0.08,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage('assets/img/dev.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Text(
                  'Kashmel Galil M. Go',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Divider(),
                Text(
                  'Age: 20' '\nCourse and Year: BSCS - 3' '\nProgramming Expertise: C, Java, Laravel',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ],
        ),
       ),
      ),
    );
  }
}


class ItemCard4 extends StatefulWidget {
  final double height;
  final double width;

  const ItemCard4({Key key, this.height, this.width}) : super(key: key);
  @override
  _ItemCard4State createState() => _ItemCard4State();
}

class _ItemCard4State extends State<ItemCard4> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(15),
        elevation: 8,
        child: Container(
          height: widget.height*0.26,
          width: widget.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
        ),
          child: Column(
          children: [
            Container(
              height: widget.height*0.08,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage('assets/img/dev.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Text(
                  'Michelle Marie C. Mamites',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Divider(),
                Text(
                  'Age: 21' '\nCourse and Year: BSIT - 3' '\nProgramming Expertise: HTML, PHP, CSS',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ],
        ),
       ),
      ),
    );
  }
}