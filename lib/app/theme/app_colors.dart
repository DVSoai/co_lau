import 'package:flutter/material.dart';

/// Palette dùng chung cho giao diện và bản đồ của Cờ Lau Hoa Lư.
///
/// Giữ toàn bộ mã màu ở một chỗ để có thể cân chỉnh phong cách hình ảnh
/// mà không phải tìm và sửa từng màn hình/component.
abstract final class AppColors {
  // UI / menu
  static const parchment = Color(0xfff2e3c6);
  static const ink = Color(0xff4d3020);
  static const mutedInk = Color(0xff6d5034);
  static const accent = Color(0xff8b5e34);

  // Game shell
  static const gameFrame = Color(0xff26382b);
  static const gameBackground = Color(0xff8eaa62);
  static const gameHintOverlay = Color(0x66000000);
  static const onGameHint = Colors.white;
}
