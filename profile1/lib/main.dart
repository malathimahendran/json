import 'package:flutter/material.dart';
import 'package:select_form_field/select_form_field.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Column(
      children: <Widget>[
        Container(
            child: Stack(
          children: [
            ClipPath(
              child: Container(color: Colors.blue.withOpacity(0.8)),
              clipper: getClipper(),
            ),
            Positioned(
              width: 350.0,
              top: MediaQuery.of(context).size.height / 5,
              child: Column(
                children: <Widget>[
                  Container(
                      width: 150.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          // image: DecorationImage(
                          //     // image: NetworkImage(
                          //     //     'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'),
                          //     fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(Radius.circular(75.0)),
                          boxShadow: [
                            BoxShadow(blurRadius: 7.0, color: Colors.blue)
                          ])),
                ],
              ),
            )

            // Column(
            //   children: [
            //     ListView(
            //       children: [],
            //     )
            //   ],
            // ),
            // Container(
            //     height: 30.0,
            //     width: 95.0,
            //     child: Material(
            //       borderRadius: BorderRadius.circular(20.0),
            //       shadowColor: Colors.redAccent,
            //       color: Colors.red,
            //       elevation: 7.0,
            //       child: GestureDetector(
            //         onTap: () {},
            //         child: Center(
            //           child: Text(
            //             'Log out',
            //             style: TextStyle(
            //                 color: Colors.white, fontFamily: 'Montserrat'),
            //           ),
            //         ),
            //       ),
            //     ))
          ],
        )),

        Column(
          children: [
            Container(
              child: ListView(
                children: [
                  SizedBox(height: 90.0),
                  TextFormField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.person, color: Colors.black),
                          hintText: "First_name",
                          hintStyle: TextStyle(color: Colors.black))),
                  SizedBox(height: 20.0),
                  TextFormField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.person, color: Colors.black),
                          hintText: "Last_name",
                          hintStyle: TextStyle(color: Colors.black))),
                  SizedBox(height: 20.0),
                  TextFormField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.date_range_rounded,
                              color: Colors.black),
                          hintText: "Date of Birth",
                          hintStyle: TextStyle(color: Colors.black))),
                  SizedBox(height: 20.0),
                  SelectFormField(
                    icon: Icon(Icons.people, color: Colors.black),
                    labelText: 'Gender',
                    changeIcon: true,
                    dialogTitle: 'Pick a item',
                    dialogCancelBtn: 'CANCEL',
                    enableSearch: true,
                    dialogSearchHint: 'Search item',
                    // items: _items,
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.star_border, color: Colors.black),
                          hintText: "Religion",
                          hintStyle: TextStyle(color: Colors.black))),
                  SizedBox(height: 20.0),
                  TextFormField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.person, color: Colors.black),
                          hintText: "Surname",
                          hintStyle: TextStyle(color: Colors.black))),
                  SizedBox(height: 20.0),
                  TextFormField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.person, color: Colors.black),
                          hintText: "Surname",
                          hintStyle: TextStyle(color: Colors.black))),
                  SizedBox(height: 20.0),
                  SelectFormField(
                    icon: Icon(Icons.people, color: Colors.black),
                    labelText: 'Bloodgroup',
                    changeIcon: true,
                    dialogTitle: 'Pick a item',
                    dialogCancelBtn: 'CANCEL',
                    enableSearch: true,
                    dialogSearchHint: 'Search item',
                    // items: _items,
                  ),
                  TextFormField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.star_border, color: Colors.black),
                          hintText: "Religion",
                          hintStyle: TextStyle(color: Colors.black))),
                  SizedBox(height: 20.0),
                  TextFormField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.person, color: Colors.black),
                          hintText: "Surname",
                          hintStyle: TextStyle(color: Colors.black))),
                  SizedBox(height: 20.0),
                  TextFormField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.person, color: Colors.black),
                          hintText: "Surname",
                          hintStyle: TextStyle(color: Colors.black))),
                ],
              ),
            )
          ],
        ),

        // Container(
        //   child: ListView(
        //     children: [
        //       SizedBox(height: 390.0),
        //       TextFormField(
        //           decoration: InputDecoration(
        //               icon: Icon(Icons.person, color: Colors.black),
        //               hintText: "First_name",
        //               hintStyle: TextStyle(color: Colors.black))),
        //       SizedBox(height: 20.0),
        //       TextFormField(
        //           decoration: InputDecoration(
        //               icon: Icon(Icons.person, color: Colors.black),
        //               hintText: "Last_name",
        //               hintStyle: TextStyle(color: Colors.black))),
        //       SizedBox(height: 20.0),
        //       TextFormField(
        //           decoration: InputDecoration(
        //               icon: Icon(Icons.date_range_rounded, color: Colors.black),
        //               hintText: "Date of Birth",
        //               hintStyle: TextStyle(color: Colors.black))),
        //       SizedBox(height: 20.0),
        //       SelectFormField(
        //         icon: Icon(Icons.people, color: Colors.black),
        //         labelText: 'Gender',
        //         changeIcon: true,
        //         dialogTitle: 'Pick a item',
        //         dialogCancelBtn: 'CANCEL',
        //         enableSearch: true,
        //         dialogSearchHint: 'Search item',
        //         // items: _items,
        //       ),
        //       SizedBox(height: 20.0),
        //       TextFormField(
        //           decoration: InputDecoration(
        //               icon: Icon(Icons.star_border, color: Colors.black),
        //               hintText: "Religion",
        //               hintStyle: TextStyle(color: Colors.black))),
        //       SizedBox(height: 20.0),
        //       TextFormField(
        //           decoration: InputDecoration(
        //               icon: Icon(Icons.person, color: Colors.black),
        //               hintText: "Surname",
        //               hintStyle: TextStyle(color: Colors.black))),
        //       SizedBox(height: 20.0),
        //       TextFormField(
        //           decoration: InputDecoration(
        //               icon: Icon(Icons.person, color: Colors.black),
        //               hintText: "Surname",
        //               hintStyle: TextStyle(color: Colors.black))),
        //       SizedBox(height: 20.0),
        //       SelectFormField(
        //         icon: Icon(Icons.people, color: Colors.black),
        //         labelText: 'Bloodgroup',
        //         changeIcon: true,
        //         dialogTitle: 'Pick a item',
        //         dialogCancelBtn: 'CANCEL',
        //         enableSearch: true,
        //         dialogSearchHint: 'Search item',
        //         // items: _items,
        //       ),
        //       SizedBox(height: 20.0),
        //       TextFormField(
        //           decoration: InputDecoration(
        //               icon: Icon(Icons.star_border, color: Colors.black),
        //               hintText: "Religion",
        //               hintStyle: TextStyle(color: Colors.black))),
        //       SizedBox(height: 20.0),
        //       TextFormField(
        //           decoration: InputDecoration(
        //               icon: Icon(Icons.person, color: Colors.black),
        //               hintText: "name",
        //               hintStyle: TextStyle(color: Colors.black))),
        //       SizedBox(height: 20.0),
        //       TextFormField(
        //           decoration: InputDecoration(
        //               icon: Icon(Icons.person, color: Colors.black),
        //               hintText: "name",
        //               hintStyle: TextStyle(color: Colors.black))),
        //     ],
        //   ),
        // )
      ],
    ));
  }
}

class getClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0.0, size.height / 1.9);
    path.lineTo(size.width + 125, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
