import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:roshan_s_application2/presentation/page_two_screen/models/page_two_model.dart';
part 'page_two_event.dart';
part 'page_two_state.dart';

/// A bloc that manages the state of a PageTwo according to the event that is dispatched to it.
class PageTwoBloc extends Bloc<PageTwoEvent, PageTwoState> {
  PageTwoBloc(PageTwoState initialState) : super(initialState) {
    on<PageTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PageTwoInitialEvent event,
    Emitter<PageTwoState> emit,
  ) async {}
}
