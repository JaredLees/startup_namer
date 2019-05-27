// Copyright 2015 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'package:flutter/material.dart';
import 'package:startup_namer/boss/evy.com/splash.dart';

void main() {
  runApp(new MaterialApp(
    title: "Boss直聘",
    theme: new ThemeData(
      primaryIconTheme: const IconThemeData(
          color: Colors.white
      ),
      brightness: Brightness.light, /// 亮色
      primaryColor: new Color.fromARGB(255, 0, 215, 198),///应用主色调
      accentColor: Colors.cyan[300],
    ),
    home: new SplashPage(), ///过度页面
  ));
}


