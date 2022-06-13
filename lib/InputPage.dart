import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_container.dart';
import 'reusable_icon_content.dart';
import 'constants.dart';

enum gender { male, female, nul }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = kInactiveContainerColor;
  Color femaleColor = kInactiveContainerColor;
  gender selectedGender = gender.nul;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: ReusableContainer(
                    onPress: () {
                      setState(() {
                        selectedGender = gender.male;
                      });
                    },
                    colour: (selectedGender == gender.male)
                        ? kActiveContainerColor
                        : kInactiveContainerColor,
                    childWidget: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: "MALE",
                    ),
                  )),
                  Expanded(
                      child: ReusableContainer(
                    onPress: () {
                      setState(() {
                        selectedGender = gender.female;
                      });
                    },
                    colour: (selectedGender == gender.female)
                        ? kActiveContainerColor
                        : kInactiveContainerColor,
                    childWidget: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: "FEMALE",
                    ),
                  )),
                ],
              ),
            ),
            Expanded(
                child: ReusableContainer(
              onPress: () {},
              colour: kActiveContainerColor,
              childWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kTextStyle2,
                      ),
                      Text(
                        'cm',
                        style: kTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      activeColor: Color(0xFFEB1515),
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      })
                ],
              ),
            )),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: ReusableContainer(
                    onPress: () {},
                    colour: kActiveContainerColor,
                    childWidget: Container(),
                  )),
                  Expanded(
                      child: ReusableContainer(
                    onPress: () {},
                    childWidget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[]),
                    colour: kActiveContainerColor,
                  )),
                ],
              ),
            ),
            Container(
              color: kBottomContainerColor,
              margin: const EdgeInsets.only(top: 10.0),
              height: kBottomContainerHeight,
              width: double.infinity,
            )
          ],
        ));
  }
}
