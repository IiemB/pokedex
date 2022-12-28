import 'package:hydrated_bloc/hydrated_bloc.dart';

class GridCountCubit extends HydratedCubit<int> {
  GridCountCubit() : super(2);

  void update(int value) => emit(value);

  @override
  int? fromJson(Map<String, dynamic> json) => json['state'];

  @override
  Map<String, dynamic>? toJson(int state) => {'state': state};
}
