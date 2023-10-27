import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:roshan_s_application2/presentation/page_seven_screen/models/page_seven_model.dart';
part 'page_seven_event.dart';
part 'page_seven_state.dart';

/// A bloc that manages the state of a PageSeven according to the event that is dispatched to it.
class PageSevenBloc extends Bloc<PageSevenEvent, PageSevenState> {
  PageSevenBloc(PageSevenState initialState) : super(initialState) {
    on<PageSevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PageSevenInitialEvent event,
    Emitter<PageSevenState> emit,
  ) async {}
}
