import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Widgets/reusable_card_with_icons_widget.dart';
import '../Widgets/reusablecard.dart';
import '../Helpers/Constants.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  gender selected = gender.a;
  @override
  Widget build(BuildContext context) {
    final mediaQ = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('BMI Calculator'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                height: mediaQ.textScaleFactor >= 1.3
                    ? mediaQ.orientation == Orientation.landscape
                        ? mediaQ.size.height * 1.5
                        : mediaQ.size.height * 0.86
                    : mediaQ.orientation == Orientation.landscape
                        ? mediaQ.size.height * 1.42
                        : mediaQ.size.height * 0.8,
                child: Column(
                  children: [
                    Container(
                      height: mediaQ.size.height * 0.3,
                      child: FirstRow(),
                    ),
                    SecondRow_Height_Slider(context),
                    Container(
                      height: mediaQ.orientation == Orientation.landscape
                          ? mediaQ.size.height * .5
                          : mediaQ.textScaleFactor >= 1.3
                              ? mediaQ.size.height * .28
                              : mediaQ.size.height * .2,
                      child: WeightAndAgeRow(mediaQ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/s');
            },
            child: Container(
              child: const Center(
                child: FittedBox(
                  child: Text(
                    'Caclulate',
                    style: sty,
                  ),
                ),
              ),
              width: double.infinity,
              height: 100,
              margin: const EdgeInsets.only(
                top: 10,
              ),
              color: colorbottom,
            ),
          )
        ],
      ),
    );
  }

  Row WeightAndAgeRow(MediaQueryData mediaQ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: ReusableCard(
            color: inactive,
            widget: mediaQ.orientation == Orientation.portrait
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        weight.toString(),
                        style: sty,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            icon: FontAwesomeIcons.minus,
                            press: () {
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                          IconButton(
                            icon: FontAwesomeIcons.plus,
                            press: () {
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            weight.toString(),
                            style: sty,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            icon: FontAwesomeIcons.minus,
                            press: () {
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                          IconButton(
                            icon: FontAwesomeIcons.plus,
                            press: () {
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
          ),
        ),
        Expanded(
          child: ReusableCard(
            color: inactive,
            widget: mediaQ.orientation == Orientation.portrait
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('AGE'),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        age.toString(),
                        style: sty,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            icon: FontAwesomeIcons.minus,
                            press: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                          IconButton(
                            icon: FontAwesomeIcons.plus,
                            press: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('AGE'),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            age.toString(),
                            style: sty,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            icon: FontAwesomeIcons.minus,
                            press: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                          IconButton(
                            icon: FontAwesomeIcons.plus,
                            press: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
          ),
        ),
      ],
    );
  }

  Container SecondRow_Height_Slider(BuildContext context) {
    return Container(
      height: 300,
      child: ReusableCard(
        color: inactive,
        widget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
              child: Align(
                alignment: Alignment.center,
                child: FittedBox(child: Text('HEIGHT')),
              ),
            ),
            Expanded(
              flex: 5,
              child: Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style: sty,
                    ),
                    Text('CM'),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(bottom: 10),
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      thumbColor: Colors.white,
                      activeTrackColor: Colors.pink,
                      inactiveTrackColor: Colors.pink.shade100,
                      overlayColor: Color(0x50E91E63),
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 50,
                      ),
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 15,
                      )),
                  child: Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    onChanged: (double newvalue) {
                      setState(() {
                        height = newvalue.round();
                      });
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row FirstRow() {
    return Row(
      children: [
        Expanded(
          child: ReusableCard(
            color: selected == gender.male ? active : inactive,
            widget: ReusableCardWithIcons('Male', FontAwesomeIcons.male),
            function: () {
              setState(
                () {
                  selected = gender.male;
                },
              );
            },
          ),
        ),
        Expanded(
          child: ReusableCard(
            color: selected == gender.female ? active : inactive,
            widget: ReusableCardWithIcons(
              'Female',
              FontAwesomeIcons.female,
            ),
            function: () {
              setState(
                () {
                  selected = gender.female;
                },
              );
            },
          ),
        ),
      ],
    );
  }
}

class IconButton extends StatelessWidget {
  IconButton({required this.icon, required this.press});
  final icon;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        press();
      },
      child: CircleAvatar(
        child: Icon(
          icon,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        radius: 30,
        // constraints: const BoxConstraints(minWidth: 50, minHeight: 50),
      ),
    );
  }
}
