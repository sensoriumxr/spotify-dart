// Copyright (c) 2020, hayribakici. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

// ignore_for_file: constant_identifier_names

part of '_models.dart';

/// Json representation of a device
@JsonSerializable()
class Device extends Object {
  Device();

  factory Device.fromJson(Map<String, dynamic> json) => _$DeviceFromJson(json);

  Map<String, dynamic> toJson() => _$DeviceToJson(this);

  /// The device ID. This may be `null`.
  String? id;

  @JsonKey(name: 'is_active', defaultValue: false)
  bool? isActive;

  /// Whether controlling this device is restricted.
  /// At present if this is `true` then no Web API commands will be
  /// accepted by this device.
  @JsonKey(name: 'is_private_session', defaultValue: false)
  bool? isPrivateSession;

  /// Whether controlling this device is restricted.
  /// At present if this is `true` then no Web API commands will be accepted by this device.
  @JsonKey(name: 'is_restricted', defaultValue: false)
  bool? isRestricted;

  /// The name of the device
  String? name;

  /// [DeviceType], such as [DeviceType.Computer], [DeviceType.Smartphone] or
  /// [DeviceType.Speaker].
  ///
  /// Sets to [DeviceType.Unknown] if the type is not supported.
  @JsonKey(unknownEnumValue: DeviceType.Unknown)
  DeviceType? type;

  /// The current volume in percent. This may be `null`.
  @JsonKey(name: 'volume_percent', fromJson: convertToIntIfDoubleValue)
  int? volumePercent;
}

/// API supported types
enum DeviceType {
  Computer,
  Tablet,
  Smartphone,
  Speaker,
  TV,
  AVR,
  STB,
  AudioDongle,
  GameConsole,
  CastVideo,
  CastAudio,
  Automobile,
  Unknown
}
