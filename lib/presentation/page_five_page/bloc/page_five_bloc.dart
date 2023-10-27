import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:roshan_s_application2/presentation/page_five_page/models/page_five_model.dart';
part 'page_five_event.dart';
part 'page_five_state.dart';

/// A bloc that manages the state of a PageFive according to the event that is dispatched to it.
class PageFiveBloc extends Bloc<PageFiveEvent, PageFiveState> {
  PageFiveBloc(PageFiveState initialState) : super(initialState) {
    on<PageFiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PageFiveInitialEvent event,
    Emitter<PageFiveState> emit,
  ) async {}
}
