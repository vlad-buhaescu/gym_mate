import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_feat/src/presentation/bloc/test_feat_bloc.dart';

class TestFeatPage extends StatelessWidget {
  const TestFeatPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => TestFeatBloc(),
        child: const Scaffold(
          body: SizedBox(child: Center(child: Text('Hello World! - test package')),),
        ),
      );
}
