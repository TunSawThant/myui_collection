import 'package:flutter/material.dart';

class AnotherUi extends StatefulWidget {
  @override
  _AnotherUIState createState() => _AnotherUIState();
}

class _AnotherUIState extends State<AnotherUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[500],
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.green[500],
        padding: EdgeInsets.only(left: 8.0,right: 8.0,top: 10.0,bottom: 25.0),
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20.0,),
              Center(
                child: Container(
                  padding: EdgeInsets.only(top:20.0,bottom: 20.0),
                  child: Stack(
                    children: <Widget>[
                      CircleAvatar(
                        radius:30.0,
                        backgroundColor: Colors.deepOrange,
                        child: Icon(Icons.payment),
                      ),
                      Positioned(
                          child: Icon(Icons.local_florist),
                        bottom: 0,
                        right: 0,
                      )
                    ],
                  ),
                ),
              ),
              RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.black,fontSize: 16.0),
                    children: [
                      TextSpan(text: 'Sent Successfully to'),
                      TextSpan(text: ' U Thant ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0))
                    ]
                  )
              ),
              Container(
                padding: EdgeInsets.only(top: 20.0,right: 20.0),
                  child: Text('\$100.00',style: TextStyle(color: Colors.green,fontSize: 30,fontWeight: FontWeight.bold),)
              ),
              Container(
                padding: EdgeInsets.only(left: 80.0,bottom: 20.5,top: 10.0),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius:30.0,
                      child: Icon(Icons.perm_identity),
                      backgroundColor: Colors.deepOrange,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: RichText(text: TextSpan(
                        style: TextStyle(color: Colors.black,fontSize: 16.0),
                        children: [
                          TextSpan(text: 'John Crawfood\n',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0)),
                          TextSpan(text: 'johncraw@gmail.com')
                        ]
                      )),
                    )
                  ],
                ),
              ),
              Divider(thickness: 2.0,),
              Container(
                padding: EdgeInsets.only(top:25.0,bottom: 45.0),
                child: RichText(text: TextSpan(
                  style: TextStyle(color: Colors.black,fontSize: 16),
                  children: [
                    TextSpan(text: 'Transition done on '),
                    TextSpan(text: '12 January 2018',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    TextSpan(text: '\nYour reference number is 03492390')
                  ]
                )),
              ),
              Container(
                child: Center(
                  child: Text('Continue'),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                      colors: [
                        Colors.amberAccent,
                        Colors.orangeAccent,
                        Colors.greenAccent,
                        Colors.green
                  ]
                  )
                ),
                width: 200.0,
                height: 30.0,
              )
            ],
          ),
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius:BorderRadius.circular(20.0),
            side: BorderSide(
              color: Colors.deepOrange,
              style: BorderStyle.solid,
              width: 3.0
            )
          ),
        ),
      ),
    );
  }
}
