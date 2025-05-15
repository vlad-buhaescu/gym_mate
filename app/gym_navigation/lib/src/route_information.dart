import 'package:flutter/material.dart';

import 'router.dart';

RouteInformationProvider get routeInformationProvider =>
    router.routeInformationProvider;
RouteInformationParser<Object> get routeInformationParser =>
    router.routeInformationParser;
RouterDelegate<Object> get routerDelegate => router.routerDelegate;
