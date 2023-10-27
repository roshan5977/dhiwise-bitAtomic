// ignore_for_file: must_be_immutable

part of 'page_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PageThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PageThreeEvent extends Equatable {}

/// Event that is dispatched when the PageThree widget is first created.
class PageThreeInitialEvent extends PageThreeEvent {
  @override
  List<Object?> get props => [];
}
