import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:assi6/quizhome.dart';

class ResultScreen extends StatefulWidget {
  var GetMarks;
  var TotalMarks;
  ResultScreen(this.GetMarks, this.TotalMarks);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {

  var percentage;
  String? SelectedImage;

  List<String> Images=[
    'Images/sad.jpeg',
    'Images/good.jpeg',
    'Images/happy.jpeg',
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    percentage=(widget.GetMarks/widget.TotalMarks)*100;
    if(percentage<=50){
      SelectedImage=Images[0];
    }
    else if(percentage<=80){
      SelectedImage=Images[1];
    }
    else{
      SelectedImage=Images[2];
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.greenAccent,
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your percentage is $percentage%',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  Text(
                    'You got '+widget.GetMarks.toString()+' marks out of '+widget.TotalMarks.toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  SizedBox(height: 20,),
                  Image(image: AssetImage(SelectedImage.toString()), height: 200),
                  SizedBox(height: 10),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green
                    ),
                    onPressed: () {
                      setState(() {
                        Navigator.pushReplacement(
                            context, MaterialPageRoute(builder:
                            (context)=> Home()));
                      });
                    },
                    child: Text(
                      'Try Again',
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
                        SystemNavigator.pop();
                      });
                    },
                    child: Text(
                      'Exist',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
