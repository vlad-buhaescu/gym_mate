import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_feat/test_feat.dart';
import 'package:test_feat_two/test_feat_two.dart';


final router = GoRouter(
  initialLocation: '/test-feat-two',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SizedBox(),
    ),
    GoRoute(
      path: '/test-feat',
      builder: (context, state) => TestFeatFlow(),
    ),
    GoRoute(
      path: '/test-feat-two',
      builder: (context, state) => TestFeatTwoFlow(),
    ),
  ],
  errorBuilder: (context, state) => Scaffold(
    appBar: AppBar(),
  ),
);
