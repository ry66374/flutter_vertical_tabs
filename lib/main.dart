import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vertical_tabs/vertical_tabs.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Title',
      home: Filter(),
    );
  }
}

class Filter extends StatefulWidget {
  Filter({Key key}) : super(key: key);

  @override
  _FilterState createState() {
    return _FilterState();
  }
}

class _FilterState extends State<Filter> {
  var isSelected = false;
  Color isColor; //= Colors.white;
  var mycolor=Colors.white;
  int _selectedIndex = 0;
  bool _hasBeenPressed = false;
  Map<int, bool> selectedFlag = {};

  final List<String> brandName = <String>[
    'Mother Dairy',
    'Verka',
    'Amul',
    'Vita',
    'Nestle',
    'Nandini Milk',
    'Dynamix Dairy',
    'Carline'
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 2,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          title: Text(
            ' Filter',
            style: TextStyle(
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
          actions: <Widget>[
            TextButton(
                child: Text(
                  'Clear All',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                onPressed: () {
                  print('Clear all');
                })
          ]),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: VerticalTabs(
                    tabsWidth: 150,
                    selectedTabBackgroundColor: Colors.white,
                    tabs: <Tab>[
                      Tab(
                        child: Container(
                            height: 40,
                            child: Center(
                                child: Text(
                              'Brand',
                              style: TextStyle(fontSize: 25),
                            ))),
                      ),
                      Tab(
                        child: Container(
                            height: 40,
                            child: Center(
                                child: Text(
                              'Size',
                              style: TextStyle(fontSize: 25),
                            ))),
                      ),
                      Tab(
                        child: Container(
                            height: 40,
                            child: Center(
                                child: Text(
                              'Unit',
                              style: TextStyle(fontSize: 25),
                            ))),
                      ),
                    ],
                    contents: <Widget>[
                      Container(
                        child: ListView.builder(
                          itemCount: brandName.length,

                          itemBuilder: (BuildContext context, int index) {

                            return Padding(
                              padding: const EdgeInsets.only(bottom: 2),
                              child: ListTile(
                                tileColor: Colors.white,
                                selected: _selectedIndex == index,
                                onTap: (){
                                  setState(() {
                                    _selectedIndex = index;
                                  });
                                },
                                title: Center(
                                  child:  new Align(alignment: Alignment.centerLeft, child: new Text('${brandName[index]}',style: TextStyle(fontSize: 20),)),

                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                          child: ListView.builder(
                            itemCount: brandName.length,

                            itemBuilder: (BuildContext context, int index) {

                              return Padding(
                                padding: const EdgeInsets.only(bottom: 2),
                                child: ListTile(
                                  tileColor: isColor,

                                  selected: isSelected,
                                  onTap: (){
                                    setState(() {
                                      _selectedIndex  = index;

                                        if (isSelected) {
                                          isColor = Colors.blue[300];
                                          isSelected = false;
                                        } else {
                                          isColor = Colors.white;
                                          isSelected = true;
                                        }

                                    });
                                  },


                                  title: Center(
                                    child:  new Align(alignment: Alignment.centerLeft, child: new Text('${brandName[index]}',style: TextStyle(fontSize: 20, color: Colors.black),)),

                                  ),
                                ),
                              );
                            },
                          ),
                      ),
                      Container(
                          child: Text('Unit'), padding: EdgeInsets.all(20)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



//ListView(
//   children: [
//     Container(
//       height: 50,
//
//       color: Colors.white,
//       child: Center(
//         child: Row(
//           children: [
//
//             Text('Mother Diary',style: TextStyle(fontSize: 20), ),
//           ],
//         ),
//       ),
//     ),
//     Divider(
//       height: 2,
//     ),
//     Container(
//       height: 50,
//       padding: EdgeInsets.only(left: 50),
//       color: Colors.white,
//       child: Row(
//         children: [
//
//           Center(child: Text('Verka',style: TextStyle(fontSize: 20), )),
//         ],
//       ),
//     ),
//     Divider(
//       height: 2,
//     ),
//     Container(
//       height: 50,
//       padding: EdgeInsets.only(left: 50),
//       color: Colors.white,
//       child: Row(
//         children: [
//
//           Center(child: Text('Amul',style: TextStyle(fontSize: 20), )),
//         ],
//       ),
//     ),
//     Divider(
//       height: 2,
//     ),
//     Container(
//       height: 50,
//       padding: EdgeInsets.only(left: 50),
//       color: Colors.white,
//       child: Row(
//         children: [
//
//           Center(child: Text('Vita',style: TextStyle(fontSize: 20), )),
//         ],
//       ),
//     ),
//     Divider(
//       height: 2,
//     ),
//     Container(
//       height: 50,
//       padding: EdgeInsets.only(left: 50),
//       color: Colors.white,
//       child: Row(
//         children: [
//
//           Center(child: Text('Nestle',style: TextStyle(fontSize: 20), )),
//         ],
//       ),
//     ),
//     Divider(
//       height: 2,
//     ),
//     Container(
//       height: 50,
//       padding: EdgeInsets.only(left: 50),
//       color: Colors.white,
//       child: Row(
//         children: [
//
//           Center(child: Text('Nandini Milk',style: TextStyle(fontSize: 20), )),
//         ],
//       ),
//     ),
//     Divider(
//       height: 2,
//     ),
//     Container(
//       height: 50,
//       padding: EdgeInsets.only(left: 50),
//       color: Colors.white,
//       child: Row(
//         children: [
//
//           Center(child: Text('Dynamix Dairy',style: TextStyle(fontSize: 20), )),
//         ],
//       ),
//     ),
//
//   ],
// ),  L
