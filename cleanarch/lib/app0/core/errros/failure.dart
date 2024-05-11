import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure({required this.message, required this.statusCode});
  final String message;
  final int statusCode;

  @override
  List<Object?> get props => [message, statusCode];
}

class ApiFaliure extends Failure {
  const ApiFaliure({required super.message, required super.statusCode});
}
