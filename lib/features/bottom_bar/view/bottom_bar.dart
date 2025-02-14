import '../../../app/index.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.only(top: 5),
      decoration: const BoxDecoration(
        color: Colors.white
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Image.asset('assets/images/home_icon.png',height: 25,width: 25,color: Colors.pinkAccent,),
              const Text("Home",
                style: TextStyle(
                fontSize: 8,
                color: Colors.pinkAccent
              ),),
              Container(
                height: 5,
                width: 5,
                decoration: const BoxDecoration(
                  color: Colors.pinkAccent,
                  shape: BoxShape.circle
                ),
              )
            ],
          ),
          Column(
            children: [
              Image.asset('assets/images/sale.png',height: 25,width: 25,color: Colors.black,),
              const Text("Package",
                style: TextStyle(
                    fontSize: 8,
                    color:Colors.black
                ),),
            ],
          ),
          Column(
            children: [
              Image.asset('assets/images/time.png',height: 25,width: 25,color: Colors.black,),
              const Text("Bookings",
                style: TextStyle(
                    fontSize: 8,
                    color: Colors.black
                ),),
            ],
          ),
          Column(
            children: [
              Image.asset('assets/images/user.png',height: 25,width: 25,color: Colors.black,),
              const Text("Profile",
                style: TextStyle(
                    fontSize: 8,
                    color: Colors.black
                ),),
            ],
          )
        ],
      ),
    );
  }
}
