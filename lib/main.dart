import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newpr/Screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'cubit/brightness_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {


    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => BrightnessCubit()..init()),
        ],
        child:
            BlocBuilder<BrightnessCubit, Brightness>(builder: (context, state) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(brightness: state),
            home: const MyHomePage(title: 'Flutter Demo Home Page'),
            debugShowCheckedModeBanner: false,
          );
        }));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  SharedPreferences? sharedPreferences;

  Future<void> initShared() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  @override
  void initState() {
    super.initState();
    initShared().then((value) {
      setState(() {
        _counter = sharedPreferences!.getInt('counter') ?? 0;
      });
    });
  }

  void _incrementCounter() async {
    setState(() {
      _counter++;
    });

    await sharedPreferences!.setInt('counter', _counter);
  }

  @override
  Widget build(BuildContext context) {
    if (false) {
      return Screen(count: _counter);
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Тыкни',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      context
                          .read<BrightnessCubit>()
                          .onClickLight(Theme.of(context).brightness);
                    },
                    icon: const Icon(Icons.auto_awesome),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Screen(count: _counter),
                          ),
                        );
                      },
                      icon: const Icon(Icons.send)),
                ],
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      );
    }
  }
}
