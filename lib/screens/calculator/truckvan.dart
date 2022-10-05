import 'package:flutter/material.dart';

class TruckVan extends StatelessWidget {
  final int kl;
  final Function changeKL;

  const TruckVan({Key? key, required this.changeKL, required this.kl})
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
                      'WEIGHT',
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
                          '\n${kl.toString()} kg',
                          style: const TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          //style: kNumberTextStyle,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            inactiveTrackColor: const Color(0xFF8D8E98),
                            activeTrackColor: Colors.orangeAccent[100],
                            thumbColor:
                                Colors.orangeAccent, //Color(0xFFEB1555),
                            overlayColor: const Color(0x29EB1555),
                            thumbShape: const RoundSliderThumbShape(
                                enabledThumbRadius: 15.0),
                            overlayShape: const RoundSliderOverlayShape(
                                overlayRadius: 30.0),
                          ),
                          child: Slider(
                            value: kl.toDouble(),
                            min: 500,
                            max: 6000,
                            onChanged: (newValue) {
                              changeKL(newValue);
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            changeKLButton("-100", () {
                              if (kl >= 600) {
                                changeKL((kl - 100).toDouble());
                              }
                            }),
                            changeKLButton("-10", () {
                              if (kl >= 510) {
                                changeKL((kl - 10).toDouble());
                              }
                            }),
                            changeKLButton("-1", () {
                              if (kl >= 501) {
                                changeKL((kl - 1).toDouble());
                              }
                            }),
                            changeKLButton(
                                "+1", () => changeKL((kl + 1).toDouble())),
                            changeKLButton(
                                "+10", () => changeKL((kl + 10).toDouble())),
                            changeKLButton(
                                "+100", () => changeKL((kl + 100).toDouble())),
                          ],
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }

  RawMaterialButton changeKLButton(String label, void Function() changeKL) {
    return RawMaterialButton(
      elevation: 0.0,
      onPressed: changeKL,
      constraints: const BoxConstraints.tightFor(
        width: 50.0,
        height: 50.0,
      ),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      child: Text(
        label,
        style: TextStyle(
            color: Colors.orangeAccent[100],
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
