import 'dart:convert';
import 'package:nannyvanny/app/index.dart';
import 'package:http/http.dart' as http;

class HomeViewModel extends ChangeNotifier{

  init(){
    getCurrentBooking();
    getPackageList();
  }

  List<CurrentData> currentData = [];
  List<PackageData> packageData = [];

  bool isLoading = false;

  String userName = "";
  String packageName = "";

  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;
  openAnimatedDrawer() {
    xOffset = 248;
    yOffset = 135;
    scaleFactor = 0.73;
    isDrawerOpen = true;
    notifyListeners();
  }

  closeDrawer() {
    xOffset = 0;
    yOffset = 0;
    scaleFactor = 1;
    isDrawerOpen = false;
    notifyListeners();
  }

  Future<void> getCurrentBooking() async {
    try{
      isLoading = true;
      notifyListeners();
      final url = Uri.parse('https://cgprojects.in/flutterapis/current_booking.php');
      final http.Response response = await http.get(url);
      Map<String,dynamic> json = jsonDecode(response.body);
      CurrentBookingModel responseModel = CurrentBookingModel.fromJson(json);

      currentData.clear();
      currentData.addAll(responseModel.data!);
      userName = currentData[0].user!;
      packageName = currentData[0].package!;
      log("userName $userName");

      isLoading = false;
      notifyListeners();
    }catch(e){
      isLoading = false;
      notifyListeners();
      throw Exception(e.toString());
    }
  }

  Future<void> getPackageList() async {
    try{
      isLoading = true;
      notifyListeners();
      final url = Uri.parse('https://cgprojects.in/flutterapis/packages.php');
      final http.Response response = await http.get(url);
      Map<String,dynamic> json = jsonDecode(response.body);
      PackageListModel responseModel = PackageListModel.fromJson(json);
      packageData.clear();
      packageData.addAll(responseModel.data!);
      log("packageData ${packageData.length}");
      isLoading = false;
      notifyListeners();
    }catch(e){
      isLoading = false;
      notifyListeners();
      throw Exception(e.toString());
    }
  }

}