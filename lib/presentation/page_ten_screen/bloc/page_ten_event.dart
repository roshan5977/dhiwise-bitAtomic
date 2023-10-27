// ignore_for_file: must_be_immutable

part of 'page_ten_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PageTen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PageTenEvent extends Equatable {}

/// Event that is dispatched when the PageTen widget is first created.
class PageTenInitialEvent extends PageTenEvent {
  @override
  List<Object?> get props => [];
}
