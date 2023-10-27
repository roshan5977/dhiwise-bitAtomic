// ignore_for_file: must_be_immutable

part of 'page_five_container_bloc.dart';

/// Represents the state of PageFiveContainer in the application.
class PageFiveContainerState extends Equatable {
  PageFiveContainerState({this.pageFiveContainerModelObj});

  PageFiveContainerModel? pageFiveContainerModelObj;

  @override
  List<Object?> get props => [
        pageFiveContainerModelObj,
      ];
  PageFiveContainerState copyWith(
      {PageFiveContainerModel? pageFiveContainerModelObj}) {
    return PageFiveContainerState(
      pageFiveContainerModelObj:
          pageFiveContainerModelObj ?? this.pageFiveContainerModelObj,
    );
  }
}
