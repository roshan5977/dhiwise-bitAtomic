import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:roshan_s_application2/presentation/page_nine_screen/models/page_nine_model.dart';
part 'page_nine_event.dart';
part 'page_nine_state.dart';

/// A bloc that manages the state of a PageNine according to the event that is dispatched to it.
class PageNineBloc extends Bloc<PageNineEvent, PageNineState> {
  PageNineBloc(PageNineState initialState) : super(initialState) {
    on<PageNineInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PageNineInitialEvent event,
    Emitter<PageNineState> emit,
  ) async {}
}
