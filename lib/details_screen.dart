import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final detailsTitle = ModalRoute.of(context)?.settings.arguments as Map<String,String>;
    final title = detailsTitle['title'];
    final test = detailsTitle['test'];
    return Scaffold(
      appBar: AppBar(
        title: Text("Details page"),
      ),
      body: Center(child: Text(title!+' va '+test!, style: TextStyle(fontSize: 30),)),
    );
  }
}
