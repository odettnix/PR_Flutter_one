import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubit/brightness_cubit.dart';
import 'package:flutter_application_1/cubit/click_cubit.dart';
import 'package:flutter_application_1/cubit/list_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => ClickCubit()),
          BlocProvider(create: (context) => BrightnessCubit()),
          BlocProvider(create: (context) => ListCubit()),
        ],
        child: BlocBuilder<BrightnessCubit, BrightnessState>(
            builder: (context, state) {
          if (state is clickBrightnessLight) {
            return MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(brightness: state.brightnessLight),
              home: MyHomePage(),
              debugShowCheckedModeBanner: false,
            );
          }
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: MyHomePage(),
            debugShowCheckedModeBanner: false,
          );
        }));
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  String res = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocBuilder<ClickCubit, ClickState>(
              builder: (context, state) {
                if (state is cliskError) {
                  return Text(
                    state.message,
                    style: Theme.of(context).textTheme.headline4,
                  );
                }
                if (state is Click) {
                  res = state.count.toString();
                  return Text(
                    res,
                    style: Theme.of(context).textTheme.headline4,
                  );
                }
                return Container();
              },
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        context
                            .read<ClickCubit>()
                            .onClickPlus(Theme.of(context).brightness);
                        context
                            .read<ListCubit>()
                            .onClickResult(Theme.of(context).brightness, res);
                      },
                      icon: const Icon(Icons.add),
                    ),
                    IconButton(
                      onPressed: () {
                        context.read<ClickCubit>().onClickMinus();
                        context
                            .read<ListCubit>()
                            .onClickResult(Theme.of(context).brightness, res);
                      },
                      icon: const Icon(Icons.remove),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    context
                        .read<BrightnessCubit>()
                        .onClickLight(Theme.of(context).brightness);
                  },
                  icon: const Icon(Icons.auto_awesome),
                ),
              ],
            ),
            BlocBuilder<ListCubit, ListState>(
              builder: (context, state) {
                if (state is clickRes) {
                  return SizedBox(
                    height: 800,
                    width: 400,
                    child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: state.result,
                        )),
                  );
                } else if (state is clickClear) {
                  return state.result;
                }
                return Container();
              },
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<ListCubit>().onClickClear(),
        tooltip: 'clear list',
        backgroundColor: Colors.blueGrey,
        child: const Icon(Icons.clear),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
