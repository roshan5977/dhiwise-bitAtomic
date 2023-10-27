import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:roshan_s_application2/presentation/page_six_screen/models/page_six_model.dart';
part 'page_six_event.dart';
part 'page_six_state.dart';

/// A bloc that manages the state of a PageSix according to the event that is dispatched to it.
class PageSixBloc extends Bloc<PageSixEvent, PageSixState> {
  PageSixBloc(PageSixState initialState) : super(initialState) {
    on<PageSixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PageSixInitialEvent event,
    Emitter<PageSixState> emit,
  ) async {
    emit(state.copyWith(
      edittextController: TextEditingController(),
    ));
  }
}
