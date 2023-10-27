// ignore_for_file: must_be_immutable

part of 'page_four_bloc.dart';

/// Represents the state of PageFour in the application.
class PageFourState extends Equatable {
  PageFourState({
    this.emailController,
    this.passwordController,
    this.pageFourModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  PageFourModel? pageFourModelObj;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        pageFourModelObj,
      ];
  PageFourState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    PageFourModel? pageFourModelObj,
  }) {
    return PageFourState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      pageFourModelObj: pageFourModelObj ?? this.pageFourModelObj,
    );
  }
}
