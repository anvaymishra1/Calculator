import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  var sign = 'a', sum = 0.0;
  var num1 = 0.0, num2 = 0.0;
  var a = " ";
  void equal() {
    setState(() {
      var temp ='';
      var temp2='';
      int j = 0;
      int i = 0;
      if (j == 0) {
        for (i=0; i < a.length; i++) {
          if (a[i] == '*' || a[i] == '/' || a[i] == '-' || a[i] == '+') {
            sign = a[i];
            j++;
            break;
          } else
            temp+=a[i];
        }
       num1=double.parse(temp);    
      }
      for (j=i+1; j < a.length; j++) {
        temp2=temp2+a[j];
      }
      num2=double.parse(temp2);
      if (sign == '+')
        sum = num1 + num2;
      else if (sign == '-')
        sum = num1 - num2;
      else if (sign == '*')
        sum = num1 * num2;
      else if (sign == '/')
        sum = num1 / num2;
      a=sum.toString();
    });
  }

  void add() {
    setState(() {
      a += '+';
    });
  }

  void div() {
    setState(() {
      a += '/';
    });
  }

  void mult() {
    setState(() {
      a += '*';
    });
  }

  void sub() {
    setState(() {
      a += '-';
    });
  }

  void ass1() {
    setState(() {
      a = a + '1';
    });
  }

  void ass2() {
    setState(() {
      a = a + '2';
    });
  }

  void ass3() {
    setState(() {
      a = a + '3';
    });
  }

  void ass4() {
    setState(() {
      a = a + '4';
    });
  }

  void ass5() {
    setState(() {
      a = a + '5';
    });
  }

  void ass6() {
    setState(() {
      a = a + '6';
    });
  }

  void ass7() {
    setState(() {
      a = a + '7';
    });
  }

  void ass8() {
    setState(() {
      a = a + '8';
    });
  }

  void ass9() {
    setState(() {
      a = a + '9';
    });
  }

  void ass0() {
    setState(() {
      a = a + '0';
    });
  }

  void clear() {
    setState(() {
      var temp = '';
      for (int i = 1; i < a.length; i++) {
        temp = temp + a[i - 1];
      }
      a = temp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
          child: new Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          new Text(
            "$a",
            style: new TextStyle(
                fontSize: 50.0,
                color: Colors.grey,
                fontWeight: FontWeight.bold),
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text(
                      '7',
                      style: new TextStyle(fontSize: 35.0),
                    ),
                    onPressed: ass7,
                    color: Colors.black,
                    height: 125.0,
                    minWidth: 130.0,
                  ),
                  new MaterialButton(
                    child: new Text(
                      '8',
                      style: new TextStyle(fontSize: 35.0),
                    ),
                    onPressed: ass8,
                    color: Colors.black,
                    height: 125.0,
                  ),
                  new MaterialButton(
                    child: new Text(
                      '9',
                      style: new TextStyle(fontSize: 35.0),
                    ),
                    onPressed: ass9,
                    color: Colors.black,
                    height: 125.0,
                  ),
                  new MaterialButton(
                    child: new Text(
                      '/',
                      style: new TextStyle(fontSize: 35.0),
                    ),
                    onPressed: div,
                    height: 125.0,
                    color: Colors.black26,
                  )
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text(
                      '4',
                      style: new TextStyle(fontSize: 35.0),
                    ),
                    onPressed: ass4,
                    color: Colors.black,
                    height: 125.0,
                    minWidth: 130.0,
                  ),
                  new MaterialButton(
                    child: new Text(
                      '5',
                      style: new TextStyle(fontSize: 35.0),
                    ),
                    onPressed: ass5,
                    color: Colors.black,
                    height: 125.0,
                  ),
                  new MaterialButton(
                    child: new Text(
                      '6',
                      style: new TextStyle(fontSize: 35.0),
                    ),
                    onPressed: ass6,
                    color: Colors.black,
                    height: 125.0,
                  ),
                  new MaterialButton(
                    child: new Text(
                      '*',
                      style: new TextStyle(fontSize: 35.0),
                    ),
                    onPressed: mult,
                    height: 125.0,
                    color: Colors.black26,
                  )
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text(
                      '1',
                      style: new TextStyle(fontSize: 35.0),
                    ),
                    onPressed: ass1,
                    color: Colors.black,
                    height: 125.0,
                    minWidth: 130.0,
                  ),
                  new MaterialButton(
                    child: new Text(
                      '2',
                      style: new TextStyle(fontSize: 35.0),
                    ),
                    onPressed: ass2,
                    color: Colors.black,
                    height: 125.0,
                  ),
                  new MaterialButton(
                    child: new Text(
                      '3',
                      style: new TextStyle(fontSize: 35.0),
                    ),
                    onPressed: ass3,
                    color: Colors.black,
                    height: 125.0,
                  ),
                  new MaterialButton(
                    child: new Text(
                      '-',
                      style: new TextStyle(fontSize: 35.0),
                    ),
                    onPressed: sub,
                    height: 125.0,
                    color: Colors.black26,
                  )
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text(
                      '0',
                      style: new TextStyle(fontSize: 35.0),
                    ),
                    onPressed: ass0,
                    color: Colors.black,
                    height: 125.0,
                    minWidth: 130.0,
                  ),
                  new MaterialButton(
                    onPressed: clear,
                    child: IconButton(
                      icon: new Icon(Icons.backspace),
                      onPressed: clear,
                    ),
                    color: Colors.black,
                    height: 125.0,
                  ),
                  new MaterialButton(
                    child: new Text(
                      '=',
                      style: new TextStyle(fontSize: 35.0),
                    ),
                    color: Colors.red,
                    onPressed: equal,
                    height: 125.0,
                  ),
                  new MaterialButton(
                    child: new Text(
                      '+',
                      style: new TextStyle(fontSize: 35.0),
                    ),
                    onPressed: add,
                    height: 125.0,
                    color: Colors.black26,
                  )
                ],
              )
            ],
          ),
        ],
      )),
    );
  }
}
