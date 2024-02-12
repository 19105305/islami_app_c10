import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/config/settings_provider.dart';
import 'package:islami_app/modules/quran/page/quran_view.dart';
import 'package:provider/provider.dart';

class QuranDetailsView extends StatefulWidget {
  static const String routename = "qurandetails";

  const QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetails;
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var vm = Provider.of<SettingsProvider>(context);

    loadData(args.suraNumber);
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "سورة ${args.suraName}",
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: vm.isDark() ? Color(0xFFFACC1D) : Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.play_circle_fill_rounded,
                    size: 28,
                    color: vm.isDark() ? Color(0xFFFACC1D) : Colors.black,
                  )
                ],
              ),
              Divider(
                // color: theme.primaryColor,
                  ),
              if (versesList.isEmpty)
                Center(
                  child: CircularProgressIndicator(
                    color: theme.primaryColor,
                  ),
                ),
              if (versesList.isNotEmpty)
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) => Text(
                      "{${index + 1}} ${versesList[index]}",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodySmall!.copyWith(
                        color: vm.isDark() ? Color(0xFFFACC1D) : Colors.black,
                      ),
                    ),
                    itemCount: versesList.length,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  List<String> versesList = [];

  Future<void> loadData(String suranumber) async {
    String suracontent =
        await rootBundle.loadString("assets/files/$suranumber.txt");
    versesList = suracontent.split("\n");
    setState(() {});
    print(versesList.length);
  }
}
