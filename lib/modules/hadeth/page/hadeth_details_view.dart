import 'package:flutter/material.dart';
import 'package:islami_app/modules/hadeth/page/hadeth_view.dart';

class HadethDetailsView extends StatelessWidget {
  static const String routename = "hadethdetails";

  const HadethDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethData;
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/main_background.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("اسلامي"),
        ),
        body: Container(
          width: mediaQuery.width,
          height: mediaQuery.height,
          margin: EdgeInsets.only(bottom: 80, right: 20, left: 20, top: 15),
          padding: EdgeInsets.only(bottom: 80, right: 20, left: 20, top: 15),
          decoration: BoxDecoration(
            color: Color(0xFFF8F8F8).withOpacity(0.8),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Text(
                args.title,
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: "El Messiri",
                  fontWeight: FontWeight.w600,
                ),
              ),
              Divider(
                color: theme.primaryColor,
              ),
              Expanded(
                  child: ListView.builder(
                      itemBuilder: (context, index) => Text(
                            args.content,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 22,
                              fontFamily: "El Messiri",
                              fontWeight: FontWeight.w500,
                            ),
                          )))
            ],
          ),
        ),
      ),
    );
  }
}
