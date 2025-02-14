import '../../../app/index.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {

  final GlobalKey<ScaffoldState> key = GlobalKey();

  List<Widget> screens = [
    const HomeScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Consumer<HomeViewModel>(
        builder: (context,homeScreenModel,child) {
          return InkWell(
            onTap: (){
              if (homeScreenModel.isDrawerOpen) {
                homeScreenModel.closeDrawer();
              }
            },
            child: Stack(
              children: [
                DrawerWidget(scaffoldKey: key,),
                screens[0]
              ],
            ),
          );
        }
      ),
    );
  }
}
