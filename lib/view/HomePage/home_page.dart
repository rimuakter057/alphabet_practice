import 'package:alphabet/controller/alphabet_controller.dart';
import 'package:alphabet/controller/text_controller.dart';
import 'package:alphabet/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final AlphabetController alphabetController = Get.put(AlphabetController());
  final TextController textController = Get.put(TextController());
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                "Alphabet here",
                style: MyTextStyle.alphabet,
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: GridView.builder(
                    itemCount: alphabetController.alphabetList.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            mainAxisSpacing: 5,
                            crossAxisSpacing: 5),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          textController
                              .speak(alphabetController.alphabetList[index]);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black,
                                )
                              ]),
                          child: Center(
                              child: Text(
                            alphabetController.alphabetList[index],
                            style: MyTextStyle.alphabet,
                          )),
                        ),
                      );
                    }),
              ),
            ],
          )),
    );
  }
}
