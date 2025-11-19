import 'package:flutter/material.dart';
import 'package:test_feat/src/di/di_initializer.dart';
import 'package:test_feat/src/flow/test_feat_flow_state.dart';
import 'package:test_feat/src/presentation/test_feat_page.dart';

class TestFeatFlow extends StatelessWidget {
  const TestFeatFlow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Implement the flow
    return TestFeatPage();
  }
}

List<Page> _onGeneratePages(TestFeatFlowState state, List<Page> pages) =>
    state.map(
      initial: (state) => [
        const MaterialPage<void>(child: TestFeatPage()),
      ],
    );
