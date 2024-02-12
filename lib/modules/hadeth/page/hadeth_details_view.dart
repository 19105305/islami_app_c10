import 'package:flutter/material.dart';
import 'package:islami_app/config/settings_provider.dart';
import 'package:islami_app/modules/hadeth/page/hadeth_view.dart';
import 'package:provider/provider.dart';

class HadethDetailsView extends StatelessWidget {
  static const String routename = "hadethdetails";

  const HadethDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethData;
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var vm = Provider.of<SettingsProvider>(context);

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            vm.getBackground(),
          ),
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
            color: vm.isDark()
                ? Color(0xFF141A2E).withOpacity(0.8)
                : Color(0xFFF8F8F8).withOpacity(0.8),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Text(
                args.title,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: vm.isDark() ? Color(0xFFFACC1D) : Colors.black,
                ),
              ),
              Divider(
                // color: theme.primaryColor,
                  ),
              Expanded(
                  child: ListView.builder(
                      itemBuilder: (context, index) => Text(
                        args.content,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.bodySmall!.copyWith(
                              color: vm.isDark()
                                  ? Color(0xFFFACC1D)
                                  : Colors.black,
                            ),
                          )))
            ],
          ),
        ),
      ),
    );
  }
}
