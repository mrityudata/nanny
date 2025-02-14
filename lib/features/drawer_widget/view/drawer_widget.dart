import '../../../app/index.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key, required GlobalKey<ScaffoldState> scaffoldKey});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body : Consumer<HomeViewModel>(
        builder: (context,model,child) {
          return Container(
            padding: const EdgeInsets.only(top: 130,left: 30),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 30.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.pinkAccent,width: 1)
                  ),
                  child: const CircleAvatar(
                      radius: 40,
                      backgroundImage : NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/038/962/461/small/ai-generated-caucasian-successful-confident-young-businesswoman-ceo-boss-bank-employee-worker-manager-with-arms-crossed-in-formal-wear-isolated-in-white-background-photo.jpg')
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.only(left: 30.0,bottom: 40,top: 10),
                  child: Text(model.userName,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.pinkAccent
                      )
                  ),
                ),
                const Text("Home",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: darkBlue
                    )
                ),
                Container(
                    height: 1,
                    width: 180,
                    color: Colors.black.withOpacity(0.1),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                  ),
                const Text("Book A Nanny",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: darkBlue
                    )
                ),
                Container(
                  height: 1,
                  width: 180,
                  color: Colors.black.withOpacity(0.1),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                ),
                const Text("How It Works",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: darkBlue
                    )
                ),
                Container(
                  height: 1,
                  width: 180,
                  color: Colors.black.withOpacity(0.1),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                ),
                const Text("Why Nanny Vanny",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: darkBlue
                    )
                ),
                Container(
                  height: 1,
                width: 180,
                  color: Colors.black.withOpacity(0.1),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                ),
                const Text("My Bookings",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: darkBlue
                    )
                ),
                Container(
                  height: 1,
                  width: 180,
                  color: Colors.black.withOpacity(0.1),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                ),
                const Text("My Profile",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: darkBlue
                    )
                ),
                Container(
                  height: 1,
          width: 180,
                  color: Colors.black.withOpacity(0.1),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                ),
                const Text("Support",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: darkBlue
                    )
                ),

              ],
            ),
          );
        }
      ),
    );
  }
}
