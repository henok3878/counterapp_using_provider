

import 'package:counter_provider/core/viewmodels/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var counter = Provider.of<Counter>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("CounterAppDemo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Consumer<Counter>(
              builder: (context,counter,child){
                return Text(counter.value.toString(),
                  style: Theme.of(context).textTheme.headline4,
                );
              }),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
          onPressed: () { counter.decrementCounter(); },
            child: Icon(Icons.remove),
        ), SizedBox(width: 8,)
          ,
          FloatingActionButton(
            onPressed: () { counter.incrementCounter(); },
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
