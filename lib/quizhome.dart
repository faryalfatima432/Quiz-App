import 'package:flutter/material.dart';
import 'package:assi6/result.dart';
import 'questioncollection.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();

}

class _HomeState extends State<Home> {

  List<Icon> icons_list=[];
  QuestionBank QA = QuestionBank();
  int marks = 0;
  int TotalMarks = 0;

  void QuestionChecking (bool UserSelectedAnswer){
    if(QA.GetAnswer()==UserSelectedAnswer)
    {
      marks = marks+5;
      icons_list.add(Icon(Icons.check,size: 50,color: Colors.green,),);
    }
    else{
      icons_list.add(Icon(Icons.close,size: 50,color: Colors.red,),);
    }
  }

  void QuizStatusCheck(bool UserSelectedAnswer){
    if(QA.QuizStatus()==true){
      QuestionChecking(UserSelectedAnswer);
      TotalMarks = icons_list.length*5;
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context)=>ResultScreen(marks, TotalMarks)));
    }
    else{
      QuestionChecking(UserSelectedAnswer);
      QA.NextQuestion();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.lightBlueAccent,
          appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            title:
            Text(
              '$marks',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(11.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    QA.GetQuestion(),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green
                    ),
                    onPressed: () {
                      setState(() {
                        QuizStatusCheck(true);
                      });
                    },
                    child: Text(
                      'TRUE',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red
                    ),
                    onPressed: () {
                      setState(() {
                        QuizStatusCheck(false);
                      });
                    },
                    child: Text(
                      'FALSE',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: icons_list
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
