import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List joke = [
    'A child asked his father, "How were people born?" So his father said, "Adam and Eve made babies, then their babies became adults and made babies, and so on." The child then went to his mother, asked her the same question and she told him, "We were monkeys then we evolved to become like we are now." The child ran back to his father and said, "You lied to me!" His father replied, "No, your mom was talking about her side of the family."',
    'Teacher: "Kids,what does the chicken give you?" Student: "Meat!" Teacher: "Very good! Now what does the pig give you?" Student: "Bacon!" Teacher: "Great! And what does the fat cow give you?" Student: "Homework!"',
    'The teacher asked Jimmy, "Why is your cat at school today Jimmy?" Jimmy replied crying, "Because I heard my daddy tell my mommy,I am going to eat that pussy once Jimmy leaves for school today!',
    'A housewife, an accountant and a lawyer were asked "How much is 2+2?" The housewife replies: "Four!". The accountant says: "I think it\'s either 3 or 4. Let me run those figures through my spreadsheet one more time." The lawyer pulls the drapes, dims the lights and asks in a hushed voice, "How much do you want it to be?"',
    'That\'s all the jokes for today! Come back another day!'
  ];

  String infor='This appis created as part of Hlsolutions program. The materials contained on this website are provided for general information only and do not constitute any form of advice. HLS assumes no responsibility for the accuracy of any particular statement and accepts no liability for any loss or damage which may arise from reliance on the infor-mation contained on this site. ';


  int _counter = 0;

  void _incrementCounter() {
    if (_counter < 4)
      setState(() {
        _counter++;
      });
    else
      setState(() {
        _counter = 4;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   //title: Text(widget.title),
      // ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(child: Image.asset('lib/asset/logo.png')),
                  Expanded(child: Image.asset('lib/asset/banner.png'))
                ],
              ),
              Container(
                height: 150,
                width: 700,
                color: Colors.greenAccent,
                child: Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.all(32),
                        child: Text(
                          'A joke a day keeps a doctor away',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 26, 26, 26)),
                          textAlign: TextAlign.center,
                        )),
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Text(
                          'If you joke wrong way. Your teeth have to pay. (serious)'),
                    )
                  ],
                ),
              ),
              Container(
                height: 310,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    '${joke[_counter]}',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(width: 50,),
                  ElevatedButton(onPressed: _incrementCounter, child: Text('This is funny!')),
                  SizedBox(width: 20,),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.greenAccent),
                    ),onPressed: _incrementCounter, child: Text('This is not funny!')),
                ],
              ),
              SizedBox(height: 50,),
              Container(
                height: 1,
                margin: EdgeInsets.only(left: 5, right: 35),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  border: Border(
                    top: BorderSide(color: Color.fromARGB(90, 0, 0, 0), width: 1))),
              ),
              SizedBox(height: 50,),
              Container(
                height: 210,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    '${infor}',
                    style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 46, 46, 46)),
                  ),
                ),
              ),
              Container(
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Copyright 2021 HLS',
                    style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 46, 46, 46)),
                  ),
                ),
              ),
              
              SizedBox(height: 50,),
            ],
          ),
        ),
      ),
    );
  }
}
