import 'package:flutter/material.dart';
import 'package:portfolio/mobile/landing_page_mobile.dart';
import 'package:portfolio/web/contact_web.dart';
import 'package:portfolio/web/landing_page_web.dart';

import 'mobile/contact_mobile.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            settings: settings,
            builder: (_) => LayoutBuilder(builder: (context, constraint) {
                  if (constraint.maxWidth > 800) return const LandingPageWeb();
                  return const LandingPageMobile();
                }));

      case '/contact':
        return MaterialPageRoute(
            settings: settings,
            builder: (_) => LayoutBuilder(builder: (context, constraint) {
                  if (constraint.maxWidth > 800) return const ContactWeb();
                  return const ContactMobile();
                }));

      default:
        return MaterialPageRoute(
            settings: settings,
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
