import 'package:stmpractice/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NumberedProvider>(
      builder: (context, numberproviders, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            numberproviders.add();
          },
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(),
        body: SizedBox(
          child: Column(
            children: [
              Text(
                numberproviders.numbers.last.toString(),
                style: const TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  // shrinkWrap: true,
                  scrollDirection: Axis.horizontal,

                  itemCount: numberproviders.numbers.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Text(
                      numberproviders.numbers[index].toString(),
                      style: const TextStyle(fontSize: 25),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
