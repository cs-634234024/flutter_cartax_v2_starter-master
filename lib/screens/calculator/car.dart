import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Car extends StatelessWidget {
  final int cc;
  final int year;
  final Function changeCC;
  final Function changeYear;

  const Car(
      {Key? key,
      required this.cc,
      required this.year,
      required this.changeCC,
      required this.changeYear})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white.withOpacity(0.2),
              ),
              margin: const EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'CUBIC CENTIMETRES',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      //style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          '\n${(cc * 100).toString()} cc\n',
                          style: const TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          //style: kNumberTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: const Color(0xFF8D8E98),
                        activeTrackColor: Colors.orangeAccent[100],
                        thumbColor: Colors.orangeAccent, //Color(0xFFEB1555),
                        overlayColor: const Color(0x29EB1555),
                        thumbShape: const RoundSliderThumbShape(
                            enabledThumbRadius: 15.0),
                        overlayShape:
                            const RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                        value: cc.toDouble(),
                        min: 6,
                        max: 30,
                        onChanged: (newValue) {
                          changeCC(newValue);
                        },
                      ),
                    ),
                  ]),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white.withOpacity(0.2),
              ),
              margin: const EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'YEARS',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    //style: kLabelTextStyle,
                  ),
                  Text(
                    '\n${year.toString()} ${((year > 1) ? ' years\n' : ' year\n')}',
                    style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    //style: kNumberTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RawMaterialButton(
                        elevation: 0.0,
                        onPressed: () => changeYear(year - 1),
                        constraints: const BoxConstraints.tightFor(
                          width: 56.0,
                          height: 56.0,
                        ),
                        shape: const CircleBorder(),
                        fillColor: const Color(0xFF4C4F5E),
                        child: const Icon(FontAwesomeIcons.minus),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      RawMaterialButton(
                        elevation: 0.0,
                        onPressed: () => changeYear(year + 1),
                        constraints: const BoxConstraints.tightFor(
                          width: 56.0,
                          height: 56.0,
                        ),
                        shape: const CircleBorder(),
                        fillColor: const Color(0xFF4C4F5E),
                        child: const Icon(FontAwesomeIcons.plus),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
