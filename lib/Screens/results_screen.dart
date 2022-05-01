import 'package:bmi/Widgets/reusablecard.dart';
import 'package:flutter/material.dart';
import '../Helpers/Constants.dart';
import '../Helpers/brain.dart';

class Results extends StatelessWidget {
  Results({Key? key}) : super(key: key);
  Brain bm = Brain(height, weight);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Center(
                child: Container(
                  height: 100,
                  padding: const EdgeInsets.all(20),
                  child: const FittedBox(
                    child: Text(
                      'Your Result',
                      style: sty,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                // height: 200,
                child: ReusableCard(
                  color: inactive,
                  widget: Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: FittedBox(
                            child: Text(
                              bm.getResultTitle(),
                              style: sty,
                            ),
                          ),
                        ),
                        Expanded(
                          child: FittedBox(
                            // fit: BoxFit.scaleDown,
                            child: Text(
                              bm.bmiRounder(),
                              style: const TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 100,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: FittedBox(
                            child: Text(
                              bm.getResultDesc(),
                              style: sty,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                child: const Center(
                  child: FittedBox(
                    child: Text(
                      'Return',
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
            ),
          ],
        ),
      ),
    );
  }
}
