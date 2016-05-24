// Copyright 2016 Google Inc. Use of this source code is governed by an
// MIT-style license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import '../../visitor/expression.dart';
import 'node.dart';

export 'expression/identifier.dart';
export 'expression/interpolation.dart';
export 'expression/list.dart';
export 'expression/string.dart';
export 'expression/variable.dart';

abstract class Expression implements SassNode {
  /*=T*/ visit/*<T>*/(ExpressionVisitor/*<T>*/ visitor);
}