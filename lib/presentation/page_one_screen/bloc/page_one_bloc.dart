import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:roshan_s_application2/presentation/page_one_screen/models/page_one_model.dart';
part 'page_one_event.dart';
part 'page_one_state.dart';

/// A bloc that manages the state of a PageOne according to the event that is dispatched to it.
class PageOneBloc extends Bloc<PageOneEvent, PageOneState> {
  PageOneBloc(PageOneState initialState) : super(initialState) {
    on<PageOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PageOneInitialEvent event,
    Emitter<PageOneState> emit,
  ) async {}
}
