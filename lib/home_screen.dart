import 'package:flutter/material.dart';
import 'package:flutter_app_routing/details_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

void GoDetailsPage(BuildContext ctx, String title){
   // Navigator.push(ctx, MaterialPageRoute(builder: (_){
   //   return DetailsPage(newsTitle: "lalalalala");
   // })
   // );
  Navigator.pushNamed(ctx, '/details-page',arguments: {"title":title, "test": "test"});
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
      ),
      body: Container(
        child: Center(
          child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text("Go to Details", style: TextStyle(color: Colors.white, fontSize: 20),),
                  color: Colors.blue,
                  onPressed: (){
                    GoDetailsPage(context, 'From first button');
                  }

              ),
              SizedBox(
                width: 15,
              ),
              MaterialButton(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text("Go to Details", style: TextStyle(color: Colors.white,fontSize: 20),),
                  color: Colors.lightBlue,
                  onPressed: (){
                    GoDetailsPage(context, 'From second button');
                  }

              ),
            ],
          ),
        ),
      ),
    );
  }
}
