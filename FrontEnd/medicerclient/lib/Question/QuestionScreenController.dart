// package or library import
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// screen import

// models import
import 'package:medicerclient/Question/QuestionScreenModel.dart';

// controller import

// util import
import 'package:medicerclient/Util/ConstantUtil.dart';

// service import
import 'package:medicerclient/Service/api_services.dart';

class QuestionScreenController extends GetxController {
  var isQuestionLoading = false.obs;
  var selectedOptionArr;

  Rxn<GetAllQuestionApiModel> getAllQuestionApiModelData =
      Rxn<GetAllQuestionApiModel>();

  @override
  void onInit() {
    super.onInit();
  }

  getAllQuestions() async {
    var body = {
      "AllQuestionGetDocIdInput": ConstantUtil.DOCTOR_ID.toString(),
    };

    var response = await ApiServices.getAllQuestionApiModelCall(body);

    if (response != null) {
      getAllQuestionApiModelData.value = response;
      print("+++++++++++++++++++++++++++++++++++++++++++");
      print(response.status);
      print(response.msg);
      print("+++++++++++++++++++++++++++++++++++++++++++");

      selectedOptionArr =
          <int>[getAllQuestionApiModelData.value!.questions!.length].obs;
      // for (int i = 0;
      //     i < getAllQuestionApiModelData.value!.questions!.length;
      //     i++) {
      //   selectedOptionArr[i].value = 0;
      // }
      isQuestionLoading.value = false;
    }
  }
}
