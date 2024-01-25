import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:elementarytest/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.main).existsSync(), isTrue);
  });
}
