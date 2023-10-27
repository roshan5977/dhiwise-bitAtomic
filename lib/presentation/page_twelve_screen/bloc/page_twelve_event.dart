// ignore_for_file: must_be_immutable

part of 'page_twelve_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PageTwelve widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PageTwelveEvent extends Equatable {}

/// Event that is dispatched when the PageTwelve widget is first created.
class PageTwelveInitialEvent extends PageTwelveEvent {
  @override
  List<Object?> get props => [];
}
