import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:roshan_s_application2/presentation/page_eleven_screen/models/page_eleven_model.dart';
part 'page_eleven_event.dart';
part 'page_eleven_state.dart';

/// A bloc that manages the state of a PageEleven according to the event that is dispatched to it.
class PageElevenBloc extends Bloc<PageElevenEvent, PageElevenState> {
  PageElevenBloc(PageElevenState initialState) : super(initialState) {
    on<PageElevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PageElevenInitialEvent event,
    Emitter<PageElevenState> emit,
  ) async {}
}
