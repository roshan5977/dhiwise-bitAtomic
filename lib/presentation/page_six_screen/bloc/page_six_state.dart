// ignore_for_file: must_be_immutable

part of 'page_six_bloc.dart';

/// Represents the state of PageSix in the application.
class PageSixState extends Equatable {
  PageSixState({
    this.edittextController,
    this.pageSixModelObj,
  });

  TextEditingController? edittextController;

  PageSixModel? pageSixModelObj;

  @override
  List<Object?> get props => [
        edittextController,
        pageSixModelObj,
      ];
  PageSixState copyWith({
    TextEditingController? edittextController,
    PageSixModel? pageSixModelObj,
  }) {
    return PageSixState(
      edittextController: edittextController ?? this.edittextController,
      pageSixModelObj: pageSixModelObj ?? this.pageSixModelObj,
    );
  }
}
