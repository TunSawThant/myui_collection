import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:widget_state/ui/another_ui.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget_State,12.1.2020'),
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.home), onPressed: (){}),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.menu), onPressed: (){})
        ],
        elevation: 0.0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: Container(
            height: 90.0,
            padding: EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Your Wallet',style: TextStyle(color: Colors.white,fontSize: 18.0),),
                Row(
                  children: <Widget>[
                    Text('\$17,750.50',style: TextStyle(color: Colors.white,fontSize: 18.0),),
                    Padding(padding: EdgeInsets.only(left: 20.0)),
                    Container(
                      height: 40.0,width: 80.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.deepOrange
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.keyboard_arrow_up,color: Colors.white,),
                          Text('15%',style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 100.0,
                    color: Colors.blue,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0,right: 10.0),
                    child: Container(
                      height: 200,
                      child: Card(
                        color: Colors.white,
                        elevation: 2.0,
                        child: Padding(
                          padding: const EdgeInsets.only(left:8.0,right: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  /*CircleAvatar(
                                    backgroundColor: Colors.greenAccent,
                                    radius: 30.0,
                                  ),*/
                                  Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.deepOrange,
                                        border: Border.all(style: BorderStyle.solid,color: Colors.green,width: 3.0)
                                      ),
                                    width: 80.0,
                                    height: 60.0,
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text('80%',style: TextStyle(fontSize: 20.0,color: Colors.white),),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10.0,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('Good Fanicial',style: TextStyle(color: Colors.black,fontSize: 20),),
                                      Text('Your Fanicial condition is good',),
                                    ],
                                  )
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(top: 10.0)),
                              Divider(height: 2.0,thickness: 2.0,),
                              InkWell(
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('View Statics'),
                                      Icon(Icons.arrow_forward_ios)
                                    ],
                                  ),
                                ),
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AnotherUi()));
                                },
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10.0,left: 10.0,bottom: 10.5),
              child: Text('Detail Information',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20.0),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildContainer(Colors.amberAccent,Colors.deepOrange,Icons.school,'Save Money','\$80.50'),
                _buildContainer(Colors.greenAccent.shade50,Colors.green,Icons.payment,'Pay Item','\$150.15')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildContainer(Colors.black45,Colors.pink,Icons.school,'Top Up','\$60.32'),
                _buildContainer(Colors.black45,Colors.purple,Icons.screen_lock_rotation,'Request Money','\$90.20')
              ],
            ),


          ],
        ),
      ),
    );
  }

  Container _buildContainer(Color color,Color _iconColor,IconData _iconData,String title,String price) {
    return Container(
                height: 150,
                width: 150,
                child: AspectRatio(
                  aspectRatio:1.0 ,
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Center(
                          child: CircleAvatar(
                            backgroundColor:color,
                            radius: 35.0,
                            child: Icon(_iconData,color: _iconColor,),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(title),
                        ),
                        Text(price,style: TextStyle(color: Colors.black,fontSize: 20),)

                      ],
                    ),
                  ),
                ),
              );
  }
}
