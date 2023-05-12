
import 'package:flutter/cupertino.dart';
import 'package:fluttertask/presentation/screens/navigations_screen.dart';

class AppRoutes{
static const String baseNavigation = '/';

static Map<String, WidgetBuilder> getRoues(){
  return {
    AppRoutes.baseNavigation: (context)=>const NavigationScreen(),
  };
}
}