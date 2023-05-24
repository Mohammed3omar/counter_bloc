import 'package:counter_bloc/counter_cubit/counter_cubit.dart';
import 'package:counter_bloc/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MaterialApp(
      home:MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        title: 'Counter ',
        theme: ThemeData(

          primarySwatch: Colors.green,
        ),
        home: const MyHomePage(title: 'Counter with bloc'),
      ),
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BlocBuilder<CounterCubit, CounterState>(
        builder: (context, state) {
        if (state is CounterIncremented){ return Center(

          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '${state.counter}',
                style: Theme
                    .of(context)
                    .textTheme
                    .headline4,
              ),
            ],
          ),
        );}
          return Center(

            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '0',
                  style: Theme
                      .of(context)
                      .textTheme
                      .headline4,
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterCubit>().incrementCounter();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
