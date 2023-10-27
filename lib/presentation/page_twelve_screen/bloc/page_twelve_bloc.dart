import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:roshan_s_application2/presentation/page_twelve_screen/models/page_twelve_model.dart';
part 'page_twelve_event.dart';
part 'page_twelve_state.dart';

/// A bloc that manages the state of a PageTwelve according to the event that is dispatched to it.
class PageTwelveBloc extends Bloc<PageTwelveEvent, PageTwelveState> {
  PageTwelveBloc(PageTwelveState initialState) : super(initialState) {
    on<PageTwelveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PageTwelveInitialEvent event,
    Emitter<PageTwelveState> emit,
  ) async {}
}
