// ignore_for_file: must_be_immutable

part of 'page_five_bloc.dart';

/// Represents the state of PageFive in the application.
class PageFiveState extends Equatable {
  PageFiveState({this.pageFiveModelObj});

  PageFiveModel? pageFiveModelObj;

  @override
  List<Object?> get props => [
        pageFiveModelObj,
      ];
  PageFiveState copyWith({PageFiveModel? pageFiveModelObj}) {
    return PageFiveState(
      pageFiveModelObj: pageFiveModelObj ?? this.pageFiveModelObj,
    );
  }
}
