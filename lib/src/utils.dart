// Copyright (c) 2017, rinukkusu. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

part of '../spotify.dart';

Iterable<List<T>> batches<T>(Iterable<T> source, int size) sync* {
  List<T>? accumulator;
  for (var value in source) {
    (accumulator ??= []).add(value);
    if (accumulator.length == size) {
      yield accumulator;
      accumulator = null;
    }
  }
  if (accumulator != null) yield accumulator;
}

/// Helper function to overcome the current
/// [spotify bug](https://community.spotify.com/t5/Spotify-for-Developers/The-response-type-of-artist-endpoint-is-marked-as-Integer-in/m-p/5800044#M12164)
int? convertToIntIfDoubleValue(dynamic jsonValue) {
  if (jsonValue is num) {
    return jsonValue.toInt();
  }
  return null;
}

int convertToIntIfDoubleValueWithoutNull(dynamic jsonValue) {
  return convertToIntIfDoubleValue(jsonValue) ?? 0;
}
