// ignore_for_file: must_be_immutable

part of 'page_nine_bloc.dart';

/// Represents the state of PageNine in the application.
class PageNineState extends Equatable {
  PageNineState({this.pageNineModelObj});

  PageNineModel? pageNineModelObj;

  @override
  List<Object?> get props => [
        pageNineModelObj,
      ];
  PageNineState copyWith({PageNineModel? pageNineModelObj}) {
    return PageNineState(
      pageNineModelObj: pageNineModelObj ?? this.pageNineModelObj,
    );
  }
}
