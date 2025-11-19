import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'test_feat_bloc.freezed.dart';
part 'test_feat_event.dart';
part 'test_feat_state.dart';

@injectable
class TestFeatBloc extends Bloc<TestFeatEvent, TestFeatState> {
  TestFeatBloc() : super(const TestFeatState.initial()) {
    on<TestFeatEvent>(
      (event, emit) => event.map(
        load: (e) => _onLoad(emit, e),
      ),
    );

    add(const TestFeatEvent.load());
  }

  void _onLoad(Emitter<TestFeatState> emit, _LoadTestFeatEvent event) {}
}
