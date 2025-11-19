import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_feat/test_feat.dart';


final router = GoRouter(
  initialLocation: '/test-feat',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SizedBox(),
    ),
    GoRoute(
      path: '/test-feat',
      builder: (context, state) => TestFeatFlow(),
      
    ),
  ],
  errorBuilder: (context, state) => Scaffold(
    appBar: AppBar(),
  ),
);
