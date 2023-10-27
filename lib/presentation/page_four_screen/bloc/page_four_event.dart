// ignore_for_file: must_be_immutable

part of 'page_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PageFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PageFourEvent extends Equatable {}

/// Event that is dispatched when the PageFour widget is first created.
class PageFourInitialEvent extends PageFourEvent {
  @override
  List<Object?> get props => [];
}
