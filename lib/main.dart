import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project4/result_page.dart';

import 'calculate_brain.dart';


void main() {
  runApp(
    MaterialApp(
      home: personal(),
        theme: ThemeData.dark(),
    ),
  );
}
   enum gender{
              male,
             female,
}
class personal extends StatefulWidget {
  const personal({Key? key}) : super(key: key);

  @override
  _personalState createState() => _personalState();
}

class _personalState extends State<personal>

  int slidernumber=50;
  int weight=20;
  int age=63;
  int height=180;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculate'),
        backgroundColor: Colors.black,
      ),

      body: Column(
          children: [
                   Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: Row(
                  children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Container(
                          width: 150,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.black26),
                          child: InkWell(
                            onTap: (){

                            },
                            child: Center(child: Text('Male')),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Container(
                          width: 150,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.black26,
                          ),
                          child: InkWell(
                            onTap: (){},
                            child: Center(child: Text('Female')),
                          ),
                        ),
                      ),
                  ],
                ),
                   ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                            color: Colors.black26),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Height',style: TextStyle(fontSize: 25.0),),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text('$height',style:TextStyle(
                         fontSize: 60.0,
                       ),),
                       Container(
                           margin: EdgeInsets.only(top: 20.0),
                           child: Text('cm')),
                     ],
                   ),
                    Center(
                      child: Slider(
                         value: height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          activeColor: Colors.redAccent,
                          inactiveColor: Colors.blue.shade100,
                          onChanged: (double newValue) {
                                    setState(() {
                                  height = newValue.round();
                                    },);
                                }
                      ),
                    ),
                  ],
                  ),
                )
                ),
              ),
             Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      width: 180,
                      height: 150,
                      decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.black26,),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('WEIGHT'),
                          Text('$weight',style: TextStyle(
                            color: Colors.white60,
                          ),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(onPressed: (){
                              setState(() {
                                weight++;
                              });
                            }, child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black38,
                                ),
                                height: 50,
                                width: 50,
                                child:Center(
                                  child: Text('+',style: TextStyle(
                                    fontSize: 30.0,
                                  ),),
                                ),
                              ),
                            ),),
                            InkWell(onTap: (){
                              setState(() {
                                if(weight>1){
                                  weight--;
                                }else{

                                }
                              });
                            }, child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black38,
                                  ),
                                  child:Center(
                                    child: Text('-',style: TextStyle(
                                      fontSize: 40.0,
                                      color: Colors.blue,
                                    ),),
                                  )
                              ),
                            ))
                          ],
                        )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      width: 180,
                      height: 150,
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                              color: Colors.black26, ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(child: Text('AGE')),
                          Text('$age'),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black,
                                  ),
                                  child:InkWell(
                                    onTap: (){
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    child: Center(child: Text('+',style: TextStyle(
                                      color: Colors.blueAccent,
                                      fontSize: 30.0,
                                    ),)),
                                  ) ,
                                  width: 50,
                                  height: 50,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black,
                                  ),
                                  child:InkWell(
                                    onTap: (){
                                      setState(() {
                                       if(age>1){
                                         age--;
                                       }else{}
                                      });
                                    },
                                    child: Center(child: Text('-',style: TextStyle(
                                      color: Colors.blueAccent,
                                      fontSize: 40.0,
                                    ),)),
                                  ) ,
                                  width: 50,
                                  height: 50,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            SizedBox(height: 32.5,),
            Container(
              width: 500,
              height: 70,
              color: Colors.red,
              child: InkWell(
                onTap: (){
                  setState(() {
                    CalculatorBrain calc =
                    CalculatorBrain(height: height, weight: weight);

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) => Resultpage(
                      bamiResult: calc.calculateBMI(),
                      resultText: calc.getResult(),
                      interpation : calc.getInterpretation(),
                    ),
                    ),);
                  });
                },
                child:  Container(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Center(child: Text('Calculate',
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize:40.0,
                    ),
                    ),),
                  ),
                ),
              ),
          ],
        ),
    );
  }

}

