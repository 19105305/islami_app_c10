import 'package:flutter/material.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Container(
      height: mediaQuery.height,
      width: mediaQuery.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/radio.png"),
          SizedBox(
            height: 35,
          ),
          Text(
            "اذاعة القران الكريم",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "El Messiri",
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.skip_previous),
                  iconSize: 50,
                  color: theme.primaryColor),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.play_arrow),
                  iconSize: 50,
                  color: theme.primaryColor),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.skip_next),
                  iconSize: 50,
                  color: theme.primaryColor),
            ],
          ),
        ],
      ),
    );
  }
}
