// ignore_for_file: must_be_immutable

part of 'page_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PageOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PageOneEvent extends Equatable {}

/// Event that is dispatched when the PageOne widget is first created.
class PageOneInitialEvent extends PageOneEvent {
  @override
  List<Object?> get props => [];
}
