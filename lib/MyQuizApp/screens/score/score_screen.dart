import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants.dart';
import 'package:flutter_svg/svg.dart';

import '../../controllers/question_controller.dart';
import '../welcome/welcome_screen.dart';

class ScoreScreen extends StatefulWidget {
  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
          Column(
            children: [
              Spacer(flex: 3),
              Text(
                "Score",
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(color: kSecondaryColor),
              ),
              // Spacer(),
              SizedBox(height: 15.0),
              Text(
                "${_qnController.correctAns! * 10}/${_qnController.questions.length * 10}",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: kSecondaryColor),
              ),
              Spacer(flex: 3),
              // SizedBox(height: 25.0),
              InkWell(
                onTap: () => Get.to(WelcomeScreen()),
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
                  decoration: BoxDecoration(
                    gradient: kPrimaryGradient,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Text(
                    "Back to Start New Quiz",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              Spacer(flex: 2),
            ],
          )
        ],
      ),
    );
  }
}
