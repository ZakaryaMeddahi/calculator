import 'package:calculator/model/Operation.dart';
// import 'package:calculator/view/keyboard.dart';
// import 'package:calculator/view/screen.dart';
import 'package:flutter/material.dart';

// class  extends StatelessWidget {
//   Operation oper = Operation("0", "");
//   MainPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String resultString = "0";
  String resultDouble = "0";
  Operation oper = Operation("0", "");
  void _updateResult() {
    setState(() {
      resultString = oper.operation;
      if (oper.error) {
        resultDouble = "Math Error";
        return;
      }
      resultDouble = oper.result.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        padding: EdgeInsets.only(top: 20, bottom: 20, left: 50, right: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: 110,
            ),
            Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // ElevatedButton(
                //     onPressed: () {
                //       print(resultString);
                //       print(oper.operation);
                //       print(oper.result);
                //     },
                //     child: Text("show result")),
                Text(
                  resultString,
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  resultDouble.toString(),
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )),
            Container(
                child: Column(children: [
              const SizedBox(
                height: 60,
              ),
            ])),

            Container(
                child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 85,
                      height: 85,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.blue)),
                        onPressed: () {
                          oper.button = "C";
                          oper.modifyOperation();
                          _updateResult();
                          print(oper.button);
                          print(oper.result);
                        },
                        child: Text(
                          "C",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                    Container(
                      width: 85,
                      height: 85,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.blue)),
                        onPressed: () {
                          oper.button = "del";
                          oper.modifyOperation();
                          _updateResult();
                          print(oper.button);
                          print(oper.result);
                        },
                        child: Text(
                          "del",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                    Container(
                      width: 85,
                      height: 85,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.blue)),
                        onPressed: () {
                          oper.button = "/";
                          oper.modifyOperation();
                          _updateResult();
                          print(oper.button);
                          print(oper.result);
                        },
                        child: Text(
                          "/",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                    Container(
                      width: 85,
                      height: 85,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.blue)),
                        onPressed: () {
                          oper.button = "*";
                          oper.modifyOperation();
                          _updateResult();
                          print(oper.button);
                          print(oper.result);
                        },
                        child: Text(
                          "*",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 85,
                      height: 85,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.blue)),
                        onPressed: () {
                          oper.button = "7";
                          oper.modifyOperation();
                          _updateResult();
                          print(oper.button);
                          print(oper.result);
                        },
                        child: Text(
                          "7",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                    Container(
                      width: 85,
                      height: 85,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.blue)),
                        onPressed: () {
                          oper.button = "8";
                          oper.modifyOperation();
                          _updateResult();
                          print(oper.button);
                          print(oper.result);
                        },
                        child: Text(
                          "8",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                    Container(
                      width: 85,
                      height: 85,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.blue)),
                        onPressed: () {
                          oper.button = "9";
                          oper.modifyOperation();
                          _updateResult();
                          print(oper.button);
                          print(oper.result);
                        },
                        child: Text(
                          "9",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                    Container(
                      width: 85,
                      height: 85,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.blue)),
                        onPressed: () {
                          oper.button = "-";
                          oper.modifyOperation();
                          _updateResult();
                          print(oper.button);
                          print(oper.result);
                        },
                        child: Text(
                          "-",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 85,
                      height: 85,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.blue)),
                        onPressed: () {
                          oper.button = "4";
                          oper.modifyOperation();
                          _updateResult();
                          print(oper.button);
                          print(oper.result);
                        },
                        child: Text(
                          "4",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                    Container(
                      width: 85,
                      height: 85,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.blue)),
                        onPressed: () {
                          oper.button = "5";
                          oper.modifyOperation();
                          _updateResult();
                          print(oper.button);
                          print(oper.result);
                        },
                        child: Text(
                          "5",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                    Container(
                      width: 85,
                      height: 85,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.blue)),
                        onPressed: () {
                          oper.button = "6";
                          oper.modifyOperation();
                          _updateResult();
                          print(oper.button);
                          print(oper.result);
                        },
                        child: Text(
                          "6",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                    Container(
                      width: 85,
                      height: 85,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.blue)),
                        onPressed: () {
                          oper.button = "+";
                          oper.modifyOperation();
                          _updateResult();
                          print(oper.button);
                          print(oper.result);
                        },
                        child: Text(
                          "+",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 85,
                              height: 85,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll(Colors.blue)),
                                onPressed: () {
                                  oper.button = "1";
                                  oper.modifyOperation();
                                  _updateResult();
                                  print(oper.button);
                                  print(oper.result);
                                },
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 85,
                              height: 85,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll(Colors.blue)),
                                onPressed: () {
                                  oper.button = "2";
                                  oper.modifyOperation();
                                  _updateResult();
                                  print(oper.button);
                                  print(oper.result);
                                },
                                child: Text(
                                  "2",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 190,
                              height: 85,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll(Colors.blue)),
                                onPressed: () {
                                  oper.button = "0";
                                  oper.modifyOperation();
                                  _updateResult();
                                  print(oper.button);
                                  print(oper.result);
                                },
                                child: Text(
                                  "0",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 85,
                          height: 85,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.blue)),
                            onPressed: () {
                              oper.button = "3";
                              oper.modifyOperation();
                              _updateResult();
                              print(oper.button);
                              print(oper.result);
                            },
                            child: Text(
                              "3",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 85,
                          height: 85,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.blue)),
                            onPressed: () {
                              oper.button = ".";
                              oper.modifyOperation();
                              _updateResult();
                              print(oper.button);
                              print(oper.result);
                            },
                            child: Text(
                              ".",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 85,
                          height: 180,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.blue)),
                            onPressed: () {
                              oper.button = "=";
                              oper.modifyOperation();
                              _updateResult();
                              print(oper.button);
                              print(oper.result);
                            },
                            child: Text(
                              "=",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            )),
            // Keyboard(
            //   oper: oper,
            // )
          ],
        ),
      )),
    );
    ;
  }
}
