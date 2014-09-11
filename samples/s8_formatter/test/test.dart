// Copyright (c) 2014, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library s8_formatter.test;

import 'package:unittest/unittest.dart';

import 'packages/s8_formatter/formatters/capitalize_formatter.dart';

void main () {
  group('CapitalizeFormatter', () {
    var formatter = new CapitalizeFormatter();
    test('with null name', () {
      expect(formatter(null), isEmpty);
    });

    test('with empty name', () {
      expect(formatter(''), isEmpty);
    });

    test('with un-capitalized name', () {
      expect(formatter('misko'), 'Misko');
    });
  });
}