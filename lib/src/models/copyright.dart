// Copyright (c) 2017, rinukkusu. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

part of '_models.dart';

/// Json representation of copyright
@JsonSerializable()
class Copyright extends Object {
  Copyright();

  factory Copyright.fromJson(Map<String, dynamic> json) =>
      _$CopyrightFromJson(json);

  Map<String, dynamic> toJson() => _$CopyrightToJson(this);

  /// The copyright text for this album.
  String? text;

  /// The type of copyright
  CopyrightType? type;
}

enum CopyrightType {
  /// C = the copyright
  C,

  /// P = the sound recording (performance) copyright.
  P
}
