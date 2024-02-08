import 'package:flutter/material.dart';

class TasbehView extends StatefulWidget {
  const TasbehView({super.key});

  @override
  State<TasbehView> createState() => _TasbehViewState();
}

class _TasbehViewState extends State<TasbehView> {
  int counter = 0;
  List<String> texts = ["سبحان الله", "الحمد لله", "الله اكبر"];
  int textIndex = 0;
  double rotationAngle = 0.0;

  void incrementCounter() {
    setState(() {
      counter++;
      rotationAngle += 55.0;
      if (counter % 33 == 0) {
        textIndex = (textIndex + 1) % texts.length;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Container(
      height: mediaQuery.height,
      width: mediaQuery.width,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 110, top: 35),
                    child: Image.asset(
                      'assets/images/seb7aHead.png',
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 110),
                    child: Transform.rotate(
                        angle: rotationAngle * (3.1415927 / 180),
                        child: Image.asset('assets/images/seb7aBody.png')),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "عدد التسبيحات",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "El Messiri",
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 70,
                height: 60,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFC8B496),
                ),
                child: Text(
                  "$counter",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w400,
                    fontSize: 23,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  incrementCounter();
                },
                child: Container(
                  width: 200,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: theme.primaryColor,
                  ),
                  child: Text(
                    texts[textIndex],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w400,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
