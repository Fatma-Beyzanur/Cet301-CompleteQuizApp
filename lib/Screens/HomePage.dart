import 'package:cetquiz_app/Screens/QuizPage.dart';
import 'package:cetquiz_app/Screens/QuizPage_1.dart';
import 'package:flutter/material.dart';

void gotoQuizPage(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => QuizPage()),
  );
}
void gotoQuizPage_1(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => QuizPage_1()),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,

        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/b.png',
              fit: BoxFit.contain,
              height: 25,
            ),

            Container(
                padding: const EdgeInsets.all(8.0), child: Text('Cet QuizApp Fatma Beyzanur Özel',
              style: TextStyle(fontFamily: 'b',color:Colors.white,fontSize: 15,),
            )
            ),],),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(15),
            child: Center(
              child: Text(
                ' Hoşgeldin, başarıya ulaşmak için zordan daha zor olana doğru soruları çözmeye başlayın lütfen.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'a',
                  fontWeight: FontWeight.bold,
                ),
              ),

            ),
            color: Colors.green,
          ),
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: RaisedButton(
              color: Colors.green,
              onPressed: () {
                gotoQuizPage(context);
              },
              child: Text('KOLAY',style: TextStyle(fontSize: 30.0, color:Colors.white,fontFamily: 'a',),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: RaisedButton(
              color: Colors.green,
              onPressed: () {
                gotoQuizPage(context);
              },
              child: Text('ORTA',style: TextStyle(fontSize: 30.0, color:Colors.white,fontFamily: 'a',),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: RaisedButton(
              color: Colors.green,
              onPressed: () {
                gotoQuizPage_1(context);
              },
              child: Text('ZOR', style: TextStyle(fontSize: 30.0, color:Colors.white,fontFamily: 'a',),
              ),),
          ),
        ],

      ),
      // backgroundColor: Color.fromRGBO(237, 237, 237,1.0),
    );
  }
}