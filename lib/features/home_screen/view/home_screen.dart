import '../../../app/index.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_){
      Provider.of<HomeViewModel>(context,listen: false).init();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeViewModel>(
      builder: (context,model,child) {
        return AnimatedContainer(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 9
                ),
              ]
          ),
          duration: const Duration(milliseconds: 350),
          transform:
          Matrix4.translationValues(model.xOffset, model.yOffset, 0)
            ..scale(model.scaleFactor),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Scaffold(
              drawerEnableOpenDragGesture: false,
              backgroundColor: Colors.white,
              appBar: AppBar(
                backgroundColor: Colors.white,
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20,right: 30),
                    child: InkWell(
                      onTap: (){
                        model.openAnimatedDrawer();
                      },
                      child: Image.asset(
                          'assets/images/ham_icon.png',
                        color: Colors.pinkAccent,
                        height: 32,
                        width: 32,
                      ),
                    ),
                  ),
                ],
              ),
              body:
               model.isLoading ? const Center(
                 child: CircularProgressIndicator(color: Colors.pinkAccent,),
               ) : Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [
                           Container(
                             margin: const EdgeInsets.only(left: 30.0),
                             decoration: BoxDecoration(
                               shape: BoxShape.circle,
                               border: Border.all(color: Colors.pinkAccent,width: 1)
                             ),
                             child: const CircleAvatar(
                               radius: 24,
                                 backgroundImage : NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/038/962/461/small/ai-generated-caucasian-successful-confident-young-businesswoman-ceo-boss-bank-employee-worker-manager-with-arms-crossed-in-formal-wear-isolated-in-white-background-photo.jpg')
                             ),
                           ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Welcome",
                                    style: TextStyle(
                                    fontSize: 14,
                                      fontWeight: FontWeight.w500
                                  ),),
                                  Text(model.userName,
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.pinkAccent
                                      )
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 150,
                              width: 350,
                              margin: const EdgeInsets.only(top: 55),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.pinkAccent.withOpacity(0.3)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20,top: 45,),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  const Text("Nanny And\nBabysitting Services",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      color: darkBlue
                                    ),),
                                  const SizedBox(height: 10,),
                                  Container(
                                    padding: const EdgeInsets.only(left: 12,top: 5,bottom: 5,right: 12),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: darkBlue
                                    ),
                                    child: const Text("Book Now",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white
                                        )
                                    ),
                                  )
                                ],),
                              ),
                            ),
                            Positioned(
                              right: -30,
                              child: Image.asset(
                                  'assets/images/mother_son.png',
                                height: 210,
                              ),
                            )
                          ],
                        ),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 32,top: 25,),
                            child: Text(
                              "Your Current Booking",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: darkBlue
                              ),),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                blurRadius: 4
                              ),
                            ]
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20,top:8,right: 20),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      model.packageName,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.pinkAccent
                                      ),),
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 1),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12),
                                          color: Colors.pink.withOpacity(0.6)
                                      ),
                                      child: const Text("Start",
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white
                                          )
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20,top:8,right: 40),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text("From",
                                          style: TextStyle(
                                            fontSize: 10,
                                              color: Colors.black
                                          ),),
                                        const SizedBox(height: 5,),
                                        Row(
                                          children: [
                                            Image.asset('assets/images/calendar.png',color : Colors.pinkAccent,height: 12,width: 12,),
                                            const SizedBox(width: 2,),
                                            const Text("12.08.2020")
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Image.asset('assets/images/clock.png',color : Colors.pinkAccent,height: 9,width: 9,),
                                            const SizedBox(width: 2,),
                                            const Text("11 pm")
                                          ],
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text("To",
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black
                                          ),),
                                        const SizedBox(height: 5,),
                                        Row(
                                          children: [
                                            Image.asset('assets/images/calendar.png',color : Colors.pinkAccent,height: 12,width: 12,),
                                            const SizedBox(width: 2,),
                                            const Text("13.08.2020")
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Image.asset('assets/images/clock.png',color : Colors.pinkAccent,height: 9,width: 9,),
                                            const SizedBox(width: 4,),
                                            const Text("07 am")
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                  Container(
                                    padding: const EdgeInsets.only(left: 12,top: 5,bottom: 5,right: 12),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: darkBlue
                                    ),
                                    child: const Row(
                                      children: [
                                        Icon(Icons.star_border,size: 12,color: Colors.white),
                                        Text("Rate Us",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white
                                            )
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 12,top: 5,bottom: 5,right: 12),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: darkBlue
                                    ),
                                    child: const Row(
                                      children: [
                                        Icon(Icons.location_on,size: 12,color: Colors.white),
                                        Text("Geolocation",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white
                                            )
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 12,top: 5,bottom: 5,right: 12),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: darkBlue
                                    ),
                                    child: Row(
                                      children: [
                                        Image.asset('assets/images/surveilance.png',height: 12,width: 12,color: Colors.white,),
                                        const Text("Survillence",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white
                                            )
                                        ),
                                      ],
                                    ),
                                  )
                                ],),
                              )
                            ],
                          ),
                        ),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 32),
                            child: Text(
                              "Packages",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: darkBlue
                              ),),
                          ),
                        ),
                         Container(
                             margin: const EdgeInsets.symmetric(horizontal: 25),
                           height: model.packageData.length * 180,
                             child: ListView.builder(
                               itemCount: model.packageData.length,
                                 itemBuilder: (context,index){
                                   return   Container(
                                     height: 150,
                                     width: 350,
                                     margin: const EdgeInsets.only(top: 20),
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(8),
                                         color: index % 2 != 0 ? lightBlue :Colors.pinkAccent.withOpacity(0.3)
                                     ),
                                     child: Padding(
                                       padding: const EdgeInsets.only(left: 10,top: 10,),
                                       child: Column(
                                         children: [
                                           Row(
                                             crossAxisAlignment: CrossAxisAlignment.start,
                                             children: [
                                               Image.asset('assets/images/calendar.png',color : index % 2 != 0 ? Colors.white :Colors.pinkAccent,height: 25,width: 25,),
                                               const Spacer(),
                                               Container(
                                                 margin: const EdgeInsets.only(top: 5,bottom: 5,right: 12),
                                                 padding: const EdgeInsets.only(left: 12,top: 5,bottom: 5,right: 12),
                                                 decoration: BoxDecoration(
                                                     borderRadius: BorderRadius.circular(12),
                                                     color: index % 2 != 0 ? darkBlue2 :Colors.pink.withOpacity(0.6)
                                                 ),
                                                 child: const Text("Book Now",
                                                     style: TextStyle(
                                                         fontSize: 12,
                                                         fontWeight: FontWeight.w600,
                                                         color: Colors.white
                                                     )
                                                 ),
                                               )
                                             ],),
                                            Padding(
                                             padding: const EdgeInsets.only(top: 15,right: 15),
                                             child: Row(
                                               crossAxisAlignment: CrossAxisAlignment.start,
                                               children: [
                                                 Text(
                                                   "${model.packageData[index].name}",
                                                   style: const TextStyle(
                                                       fontSize: 14,
                                                       fontWeight: FontWeight.w500,
                                                       color: darkBlue
                                                   ),),
                                                 const Spacer(),
                                                 Text(
                                                   "\u{20B9}${model.packageData[index].price}",
                                                   style: const TextStyle(
                                                       fontSize: 14,
                                                       fontWeight: FontWeight.w500,
                                                       color: darkBlue
                                                   ),),
                                               ],),
                                           ),
                                           const SizedBox(height: 10),
                                           const Padding(
                                             padding: EdgeInsets.only(right: 10),
                                             child: Text(
                                               "I was making this Budget Manager app as I was learning flutter, I want to add a Indian rupee symbol. I had checked the official docs and found a lib.",
                                               style: TextStyle(
                                                 fontSize: 9,
                                               ),
                                             ),
                                           )
                                         ],
                                       ),
                                     ),
                                   );
                                 })
                         )
                      ],
                    ),
                  ),
                ],
              ),
              bottomNavigationBar: const BottomBar(),
            ),
          ),
        );
      }
    );
  }
}
