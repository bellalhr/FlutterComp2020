import 'package:my_apps/navigation_handler/services/navigation_service.dart';

import '../locator.dart';
import 'basemodel.dart';
import 'package:my_apps/navigation_handler/constants/route_paths.dart' as  routes;

class LoginViewModel extends BaseModel {
  final NavigationService _navigationService = locator<NavigationService>();
  Future login({bool success = true}) async {
    setBusy(true);
    await Future.delayed(Duration(seconds: 1));

    if (!success) {
      setErrorMessage('Error has occured with the login');
    } else {
      _navigationService.navigateTo(routes.HomeRoute, arguments: '\nFilledStacks');
      setErrorMessage(null);
    }

    setBusy(false);
  }
}
