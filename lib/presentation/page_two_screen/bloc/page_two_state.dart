// ignore_for_file: must_be_immutable

part of 'page_two_bloc.dart';

/// Represents the state of PageTwo in the application.
class PageTwoState extends Equatable {
  PageTwoState({this.pageTwoModelObj});

  PageTwoModel? pageTwoModelObj;

  @override
  List<Object?> get props => [
        pageTwoModelObj,
      ];
  PageTwoState copyWith({PageTwoModel? pageTwoModelObj}) {
    return PageTwoState(
      pageTwoModelObj: pageTwoModelObj ?? this.pageTwoModelObj,
    );
  }
}
