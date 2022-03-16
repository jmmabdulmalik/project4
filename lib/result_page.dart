import 'package:flutter/material.dart';


class Resultpage extends StatelessWidget {


  Resultpage({required this.resultText,required this.bamiResult,required this.interpation});

  String resultText;
  String bamiResult;
  String interpation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('RESUALT PAGE'),
        backgroundColor: Colors.black38,
      ),
      backgroundColor: Colors.black38,
      body: Padding(
        padding: const EdgeInsets.only (top: 30.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 200.0),
              child: Text('Your Result',style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
              ),),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top:10.0),
                child: Container(
                  height: 550,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.blue,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                      resultText.toUpperCase(),
                      style: TextStyle(
                        fontSize: 30.0,
                      ),
                      ),
                      SizedBox(height:100.0 ,),
                      Text(
                        bamiResult,
                        style: TextStyle(
                          fontSize: 30.0,
                        ),
                      ),
                      SizedBox(height: 100.0,),
                      Text(
                        interpation,
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ],


                  ),
                ),
              ),),
            SizedBox(
              height: 30.0,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color:Colors.red,
              ),
              height: 70.0,
              width: 400,
              child: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Center(child: Text('Rcalculate',style: TextStyle(
                  fontSize: 40.0,
                ),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}