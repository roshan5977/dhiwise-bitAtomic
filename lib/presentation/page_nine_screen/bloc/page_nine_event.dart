// ignore_for_file: must_be_immutable

part of 'page_nine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PageNine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PageNineEvent extends Equatable {}

/// Event that is dispatched when the PageNine widget is first created.
class PageNineInitialEvent extends PageNineEvent {
  @override
  List<Object?> get props => [];
}
