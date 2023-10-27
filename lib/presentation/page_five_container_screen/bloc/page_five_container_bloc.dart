import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:roshan_s_application2/presentation/page_five_container_screen/models/page_five_container_model.dart';
part 'page_five_container_event.dart';
part 'page_five_container_state.dart';

/// A bloc that manages the state of a PageFiveContainer according to the event that is dispatched to it.
class PageFiveContainerBloc
    extends Bloc<PageFiveContainerEvent, PageFiveContainerState> {
  PageFiveContainerBloc(PageFiveContainerState initialState)
      : super(initialState) {
    on<PageFiveContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PageFiveContainerInitialEvent event,
    Emitter<PageFiveContainerState> emit,
  ) async {}
}
