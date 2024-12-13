import 'package:flutter/material.dart';
import 'package:portfolio/common/blog.dart';
import 'package:portfolio/mobile/about_mobile.dart';
import 'package:portfolio/mobile/landing_page_mobile.dart';
import 'package:portfolio/mobile/works_mobile.dart';
import 'package:portfolio/web/about_web.dart';
import 'package:portfolio/web/contact_web.dart';
import 'package:portfolio/web/landing_page_web.dart';
import 'package:portfolio/web/works_web.dart';

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

      case '/about':
        return MaterialPageRoute(
            settings: settings,
            builder: (_) => LayoutBuilder(builder: (context, constraint) {
                  if (constraint.maxWidth > 800) return const AboutWeb();
                  return const AboutMobile();
                }));

      case '/blog':
        return MaterialPageRoute(settings: settings, builder: (_) => const Blog());

      case '/works':
        return MaterialPageRoute(
            settings: settings,
            builder: (_) => LayoutBuilder(builder: (context, constraint) {
                  if (constraint.maxWidth > 800) return const WorksWeb();
                  return const WorksMobile();
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
