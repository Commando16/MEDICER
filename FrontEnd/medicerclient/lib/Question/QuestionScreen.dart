// package or library import
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicerclient/Util/ColorUtil.dart';

// screen import

// model import
// import 'package:medicerclient/Question/QuestionScreenModel.dart';

// controller import
import 'package:medicerclient/Question/QuestionScreenController.dart';

// util import

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final questionScreenController = Get.put(QuestionScreenController());
    questionScreenController.isQuestionLoading.value = true;
    questionScreenController.getAllQuestions();

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: ColorUtil.primaryTeal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // top bar
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    onPressed: () {
                      debugPrint("back button pressed");
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: ColorUtil.primaryWhite,
                      size: 24.0,
                    ),
                  ),
                ),
              ),
              // top bar ends
              //
              // question list container
              Expanded(
                flex: 10,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: BoxDecoration(
                    color: ColorUtil.primaryWhite,
                    borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(20.0),
                      topRight: const Radius.circular(20.0),
                    ),
                  ),
                  child: Obx(
                    () => (questionScreenController.isQuestionLoading.value ==
                            true)
                        ? Center(
                            child: CircularProgressIndicator(
                              value: null,
                            ),
                          )
                        : ListView.builder(
                            itemCount: questionScreenController
                                .getAllQuestionApiModelData
                                .value!
                                .questions!
                                .length,
                            itemBuilder: (context, index) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //Spacer
                                  SizedBox(height: 20.0),
                                  // Spacer ends
                                  //
                                  // question text
                                  Text(
                                    (index + 1).toString() +
                                        ". " +
                                        questionScreenController
                                            .getAllQuestionApiModelData
                                            .value!
                                            .questions![index]
                                            .questionText!,
                                    style: TextStyle(
                                      color: ColorUtil.secondaryGrey,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  // question text ends
                                  //
                                  // options
                                  ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: questionScreenController
                                        .getAllQuestionApiModelData
                                        .value!
                                        .questions![index]
                                        .option!
                                        .length,
                                    itemBuilder: (context, optionIndex) {
                                      return ListTile(
                                        title: Text(
                                          questionScreenController
                                              .getAllQuestionApiModelData
                                              .value!
                                              .questions![index]
                                              .option![optionIndex]
                                              .optiontext!,
                                          style: TextStyle(
                                            color: ColorUtil.secondaryGrey,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        leading: Icon(Icons.circle_outlined),
                                      );
                                    },
                                  ),
                                  /*
                                  Column(
                                    children: questionScreenController
                                        .getAllQuestionApiModelData
                                        .value!
                                        .questions![index]
                                        .option!
                                        .map(
                                          (e) => ListTile(
                                            title: Text(
                                              e.optiontext!,
                                              style: TextStyle(
                                                color: ColorUtil.secondaryGrey,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            leading:
                                                Icon(Icons.circle_outlined),
                                          ),
                                        )
                                        .toList(),
                                  ),
                                  // options ends
                                  */
                                ],
                              );
                            },
                          ),
                  ),
                ),
              ),
              // question list container ends
            ],
          ),
        ),
      ),
    );
  }
}

/*
class Question extends StatefulWidget {
  const Question({Key? key}) : super(key: key);

  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // question text
          Text(
            "Here is some question",
            style: TextStyle(
              color: ColorUtil.secondaryGrey,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          // question text ends
          //
          //Options
          ListTile(
            title: const Text(
              'Lafayette',
              style: TextStyle(
                color: ColorUtil.secondaryGrey,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            leading: Radio(
              value: 0,
              groupValue: _current,
              onChanged: (int? value) {
                print(value);
                setState(() {
                  _current = 0;
                });
              },
            ),
          ),
          ListTile(
            title: const Text(
              'Lafayette',
              style: TextStyle(
                color: ColorUtil.secondaryGrey,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            leading: Radio(
              value: 1,
              groupValue: _current,
              onChanged: (int? value) {
                print(value);
                setState(() {
                  _current = 1;
                });
              },
            ),
          ),
          ListTile(
            title: const Text(
              'Lafayette',
              style: TextStyle(
                color: ColorUtil.secondaryGrey,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            leading: Radio(
              value: 2,
              groupValue: _current,
              onChanged: (int? value) {
                print(value);
                setState(() {
                  _current = 2;
                });
              },
            ),
          ),
          //Options ends
        ],
      ),
    );
  }
}
*/

class Question extends StatelessWidget {
  const Question({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _current = 0.obs;
    return Container(
      child: Obx(
        () => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // question text
            Text(
              "Here is some question",
              style: TextStyle(
                color: ColorUtil.secondaryGrey,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            // question text ends
            //
            //Options
            ListTile(
              title: const Text(
                'Lafayette',
                style: TextStyle(
                  color: ColorUtil.secondaryGrey,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              leading: Radio(
                value: 0,
                groupValue: _current.value,
                onChanged: (val) {
                  _current.value = 0;
                },
              ),
            ),
            ListTile(
              title: const Text(
                'Lafayette',
                style: TextStyle(
                  color: ColorUtil.secondaryGrey,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              leading: Radio(
                value: 1,
                groupValue: _current,
                onChanged: (val) {
                  _current.value = 0;
                },
              ),
            ),
            ListTile(
              title: const Text(
                'Lafayette',
                style: TextStyle(
                  color: ColorUtil.secondaryGrey,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              leading: Radio(
                value: 2,
                groupValue: _current,
                onChanged: (val) {
                  _current.value = 2;
                },
              ),
            ),
            //Options ends
          ],
        ),
      ),
    );
  }
}
