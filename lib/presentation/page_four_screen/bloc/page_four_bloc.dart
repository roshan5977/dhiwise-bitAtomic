import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:roshan_s_application2/presentation/page_four_screen/models/page_four_model.dart';
part 'page_four_event.dart';
part 'page_four_state.dart';

/// A bloc that manages the state of a PageFour according to the event that is dispatched to it.
class PageFourBloc extends Bloc<PageFourEvent, PageFourState> {
  PageFourBloc(PageFourState initialState) : super(initialState) {
    on<PageFourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PageFourInitialEvent event,
    Emitter<PageFourState> emit,
  ) async {
    emit(state.copyWith(
      emailController: TextEditingController(),
      passwordController: TextEditingController(),
    ));
  }
}
