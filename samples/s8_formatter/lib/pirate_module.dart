// Copyright (c) 2014, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library s8_formatter.pirate_module;

import 'package:angular/angular.dart';
import 'package:s8_formatter/badge_controller.dart';
import 'package:s8_formatter/components/badge_component.dart';
import 'package:s8_formatter/services/names_service.dart';
import 'package:s8_formatter/formatters/capitalize_formatter.dart';

class PirateModule extends Module {
  PirateModule() {
    bind(BadgeController);
    bind(BadgeComponent);
    bind(NamesService);
    bind(CapitalizeFormatter);
  }
}
