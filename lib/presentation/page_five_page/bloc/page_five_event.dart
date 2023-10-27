// ignore_for_file: must_be_immutable

part of 'page_five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PageFive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PageFiveEvent extends Equatable {}

/// Event that is dispatched when the PageFive widget is first created.
class PageFiveInitialEvent extends PageFiveEvent {
  @override
  List<Object?> get props => [];
}
