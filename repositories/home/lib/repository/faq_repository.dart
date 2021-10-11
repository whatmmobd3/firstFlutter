import 'dart:async';
import 'dart:core';

import 'package:home_repository/entities/faq.dart';

abstract class FaqRepository {
  Future<List<FaqObject>> getlistfaq();
  Future<FaqDetail> getdetail(String id);

}
