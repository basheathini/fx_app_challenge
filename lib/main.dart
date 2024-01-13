import 'package:fast_cached_network_image/fast_cached_network_image.dart';
import 'package:flutter/material.dart';
import 'views/app.dart';

void main() async {
  await FastCachedImageConfig.init(clearCacheAfter: const Duration(days: 2));
  runApp(const FxApp());
}
