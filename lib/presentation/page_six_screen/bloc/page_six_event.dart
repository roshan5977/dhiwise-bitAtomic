// ignore_for_file: must_be_immutable

part of 'page_six_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PageSix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PageSixEvent extends Equatable {}

/// Event that is dispatched when the PageSix widget is first created.
class PageSixInitialEvent extends PageSixEvent {
  @override
  List<Object?> get props => [];
}
