// ignore_for_file: must_be_immutable

part of 'page_eleven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PageEleven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PageElevenEvent extends Equatable {}

/// Event that is dispatched when the PageEleven widget is first created.
class PageElevenInitialEvent extends PageElevenEvent {
  @override
  List<Object?> get props => [];
}
