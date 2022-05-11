import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_shop/dio.dart';

final DioProvider = Provider<ConnectionDio>((ref) {
  return ConnectionDio();
});

final GetProvider = Provider((ref) {
  return ref.read(DioProvider).getData();
});
