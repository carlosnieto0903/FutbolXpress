import 'package:app1/Widgets/cards.dart';
import 'package:app1/Widgets/input.dart';
import 'package:app1/Widgets/listview.dart';
import 'package:app1/Widgets/sliders.dart';
import 'package:app1/mainWidgets/animated_container.dart';
import 'package:flutter/material.dart';
import '../Widgets/alerts.dart';
import '../Widgets/avatar.dart';
import '../mainWidgets/mainHome.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => const MainHome(),
    'alert': (BuildContext context) => const Alerts(),
    'avatar': (BuildContext context) => const Avatar(),
    'card': (BuildContext context) => const Cards(),
    'animatedContainer': (context) => const AnimatedContainerPage(),
    'inputs': (BuildContext context) => const Inputs(),
    'sliders': (BuildContext context) => const Sliders(),
    'listas': (BuildContext context) => const Listviews()
  };
}
