import 'package:stmpractice/provider.dart';
import 'package:stmpractice/second.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  Home({super.key});

  List<int> numbers = [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return Consumer<NumberedProvider>(
      child: AppBar(
        title: const Text("Count"),
      ),
      builder: (context, numberproviders, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            numberproviders.add();
          },
          child:  Icon(Icons.add),
        ),
        appBar:child as PreferredSizeWidget,
        body: SizedBox(
          child: Column(
            children: [
              Text(
                numberproviders.numbers.last.toString(),
                style: const TextStyle(fontSize: 25),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: numberproviders.numbers.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Text(
                      numberproviders.numbers[index].toString(),
                      style: const TextStyle(fontSize: 25),
                    );
                  },
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Second()));
                  },
                  child: const Text("SECOND"))
            ],
          ),
        ),
      ),
    );
  }
}
