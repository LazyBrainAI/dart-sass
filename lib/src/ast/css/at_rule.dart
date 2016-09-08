// Copyright 2016 Google Inc. Use of this source code is governed by an
// MIT-style license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:source_span/source_span.dart';

import '../../visitor/interface/css.dart';
import 'node.dart';
import 'value.dart';

class CssAtRule extends CssParentNode {
  final String name;

  final CssValue<String> value;

  final bool isChildless;

  final FileSpan span;

  bool get isInvisible => false;

  CssAtRule(this.name, this.span, {bool childless: false, this.value})
      : isChildless = childless;

  /*=T*/ accept/*<T>*/(CssVisitor/*<T>*/ visitor) => visitor.visitAtRule(this);

  CssAtRule copyWithoutChildren() =>
      new CssAtRule(name, span, childless: isChildless, value: value);

  void addChild(CssNode child) {
    assert(!isChildless);
    super.addChild(child);
  }
}
