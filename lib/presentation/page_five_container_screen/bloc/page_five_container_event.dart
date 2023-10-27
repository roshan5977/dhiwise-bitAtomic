// ignore_for_file: must_be_immutable

part of 'page_five_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PageFiveContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PageFiveContainerEvent extends Equatable {}

/// Event that is dispatched when the PageFiveContainer widget is first created.
class PageFiveContainerInitialEvent extends PageFiveContainerEvent {
  @override
  List<Object?> get props => [];
}
