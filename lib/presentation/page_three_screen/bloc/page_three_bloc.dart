import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:roshan_s_application2/presentation/page_three_screen/models/page_three_model.dart';
part 'page_three_event.dart';
part 'page_three_state.dart';

/// A bloc that manages the state of a PageThree according to the event that is dispatched to it.
class PageThreeBloc extends Bloc<PageThreeEvent, PageThreeState> {
  PageThreeBloc(PageThreeState initialState) : super(initialState) {
    on<PageThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PageThreeInitialEvent event,
    Emitter<PageThreeState> emit,
  ) async {}
}
