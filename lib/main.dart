// ignore_for_file: depend_on_referenced_packages
import 'package:teste_entity/app/repository/advice.repositoryimpl.dart';
import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';
import 'package:teste_entity/app/usecase/advice.usecase.dart';
import 'package:teste_entity/app/entity/advice.entity.dart';
import 'package:translator/translator.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const MyHomePage(title: 'Conselhos 😊')
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
  
  final gt = GoogleTranslator();
  String adv = "";

  void _newAdvice() async {
    Loader.show(context, progressIndicator: const CircularProgressIndicator(color: Color.fromRGBO(186, 104, 200, 1),));
    AdviceEntity? advice = await AdviceUseCase(AdviceRepositoryImpl()).getAdvice();
    try{
      await gt.translate(advice.advice!, from: 'en', to: 'pt').then((value) => setState(() => adv = value.toString()));
      Loader.hide();
    }finally{
      Loader.hide();
    }
  }

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            adv,
            textAlign: TextAlign.center,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _newAdvice,
        tooltip: 'advice',
        label: const Text('😁 Conselho'),
      ),
    );
  }
}
