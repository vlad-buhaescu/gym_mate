import 'package:flutter/material.dart';

import 'router.dart';

RouteInformationProvider get routeInformationProvider =>
    router.routeInformationProvider;
RouteInformationParser<Object> get routeInformationParser =>
    router.routeInformationParser;
RouterDelegate get routerDelegate => router.routerDelegate;
