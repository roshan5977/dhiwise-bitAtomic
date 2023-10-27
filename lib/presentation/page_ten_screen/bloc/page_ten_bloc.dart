import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:roshan_s_application2/presentation/page_ten_screen/models/page_ten_model.dart';
part 'page_ten_event.dart';
part 'page_ten_state.dart';

/// A bloc that manages the state of a PageTen according to the event that is dispatched to it.
class PageTenBloc extends Bloc<PageTenEvent, PageTenState> {
  PageTenBloc(PageTenState initialState) : super(initialState) {
    on<PageTenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PageTenInitialEvent event,
    Emitter<PageTenState> emit,
  ) async {}
}
