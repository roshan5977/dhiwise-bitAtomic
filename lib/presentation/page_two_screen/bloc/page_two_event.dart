// ignore_for_file: must_be_immutable

part of 'page_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PageTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PageTwoEvent extends Equatable {}

/// Event that is dispatched when the PageTwo widget is first created.
class PageTwoInitialEvent extends PageTwoEvent {
  @override
  List<Object?> get props => [];
}
