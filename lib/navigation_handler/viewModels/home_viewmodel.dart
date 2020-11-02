import 'package:my_apps/navigation_handler/services/navigation_service.dart';

import '../locator.dart';
import 'basemodel.dart';
import 'package:my_apps/navigation_handler/constants/route_paths.dart' as  routes;

class HomeViewModel extends BaseModel {
  final NavigationService _navigationService = locator<NavigationService>();

  Future logout({bool success = true}) async {
    setBusy(true);
    await Future.delayed(Duration(seconds: 1));

    if (!success) {
      setErrorMessage('Error has occured during sign out');
    } else {
      _navigationService.goBack();
      //_navigationService.navigateTo(routes.productRoute, arguments: '\nFilledStacks');
    }
  }
}
