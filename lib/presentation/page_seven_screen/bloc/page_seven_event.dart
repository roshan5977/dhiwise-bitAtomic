// ignore_for_file: must_be_immutable

part of 'page_seven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PageSeven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PageSevenEvent extends Equatable {}

/// Event that is dispatched when the PageSeven widget is first created.
class PageSevenInitialEvent extends PageSevenEvent {
  @override
  List<Object?> get props => [];
}
