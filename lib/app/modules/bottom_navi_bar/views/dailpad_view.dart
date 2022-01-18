
import 'package:flutter/material.dart';
import 'package:flutter_application_6/app/modules/bottom_navi_bar/controllers/cantact_controller_controller.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  dynamic displaytxt = 10;
  //Button Widget
  Widget calcbutton(String btntxt, Color btncolor, Color txtcolor) {
    return Center(
      child: Container(
        child: ElevatedButton(
          onPressed: () {
            calculation(btntxt);
          },
          child: Text(
            '$btntxt',
            style: TextStyle(
              fontSize: 30,
              color: txtcolor,
            ),
          ),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
            
              borderRadius: new BorderRadius.circular(15.0),
            ),
            primary: btncolor,
            padding: EdgeInsets.all(20),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //Calculator
    return Scaffold(
      backgroundColor: Colors.white,
      
      body: Stack(children: [
         Expanded(
         
            child: GetBuilder< CantactControllerController>(
              builder: (_dx) => ListView.builder(
                  itemCount: _dx.contact.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Row(
                        children: [
                          Column(
                            children: [
                              Text(_dx.contact[index]["name"]),
                              Text(_dx.contact[index]["number"].toString()),
                              
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ),
         Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            // Calculator display
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      '$text',
                    
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                calcbutton('x', Colors.transparent, Colors.black),
                
                
               
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calcbutton('7', Colors.transparent, Colors.blue),
                calcbutton('8', Colors.transparent, Colors.blue),
                calcbutton('9', Colors.transparent, Colors.blue),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calcbutton('4', Colors.transparent, Colors.blue),
                calcbutton('5', Colors.transparent, Colors.blue),
                calcbutton('6', Colors.transparent, Colors.blue),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calcbutton('1', Colors.transparent, Colors.blue),
                calcbutton('2', Colors.transparent, Colors.blue),
                calcbutton('3', Colors.transparent, Colors.blue),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                calcbutton('*', Colors.transparent, Colors.black),
                calcbutton('0', Colors.transparent, Colors.blue),
                calcbutton('#', Colors.transparent, Colors.black),
              ],
            ),
            SizedBox(
              height: 50,
            ),
             Center(
               child: Container(
                 padding: EdgeInsets.all(10),
                 
                   height: 40,
                   width: 100,
                    decoration: BoxDecoration(shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green,
                    
                    ),
                    
                    child: Row(
                      children: [
                        Icon(
                          Icons.call,
                          color: Colors.white,
                          
                        ),
                        SizedBox(width: 20,),
                        Text("Call",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                        ),
                        )
                      ],
                    ),
                  ),
             )
          ],
        ),
      ),
      ],),
    );
  }

  //Calculator logic
  dynamic text = '0';
  double numOne = 0;
  double numTwo = 0;

  dynamic result = '';
  dynamic finalResult = '';
  dynamic opr = '';
  dynamic preOpr = '';
  void calculation(btnText) {
    if (btnText == 'x') {
      text = '0';
      numOne = 0;
      numTwo = 0;
      result = '';
      finalResult = '0';
      opr = '';
      preOpr = '';
    } else if (opr == '=' && btnText == '=') {
      if (preOpr == '+') {
        finalResult = add();
      } else if (preOpr == '-') {
        finalResult = sub();
      } else if (preOpr == 'x') {
        finalResult = mul();
      } else if (preOpr == '/') {
        finalResult = div();
      }
    } else if (btnText == '+' ||
        btnText == '-' ||
        btnText == 'x' ||
        btnText == '/' ||
        btnText == '=') {
      if (numOne == 0) {
        numOne = double.parse(result);
      } else {
        numTwo = double.parse(result);
      }

      if (opr == '+') {
        finalResult = add();
      } else if (opr == '-') {
        finalResult = sub();
      } else if (opr == 'x') {
        finalResult = mul();
      } else if (opr == '/') {
        finalResult = div();
      }
      preOpr = opr;
      opr = btnText;
      result = '';
    } else if (btnText == '%') {
      result = numOne / 100;
      finalResult = doesContainDecimal(result);
    } else if (btnText == '.') {
      if (!result.toString().contains('.')) {
        result = result.toString() + '.';
      }
      finalResult = result;
    } else if (btnText == '+/-') {
      result.toString().startsWith('-')
          ? result = result.toString().substring(1)
          : result = '-' + result.toString();
      finalResult = result;
    } else {
      result = result + btnText;
      finalResult = result;
    }

    setState(() {
      text = finalResult;
    });
  }

  String add() {
    result = (numOne + numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String sub() {
    result = (numOne - numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String mul() {
    result = (numOne * numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String div() {
    result = (numOne / numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String doesContainDecimal(dynamic result) {
    if (result.toString().contains('.')) {
      List<String> splitDecimal = result.toString().split('.');
      if (!(int.parse(splitDecimal[1]) > 0))
        return result = splitDecimal[0].toString();
    }
    return result;
  }
}