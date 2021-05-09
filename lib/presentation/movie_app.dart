import 'package:flutter/material.dart';
import 'package:flutter_movie_app/common/screenutil/screenutil.dart';
import 'package:flutter_movie_app/presentation/themes/theme_color.dart';
import 'package:flutter_movie_app/presentation/themes/theme_text.dart';

class MovieApp extends StatelessWidget {
  const MovieApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie App',
      theme: ThemeData(
        primaryColor: AppColor.vulcan,
        scaffoldBackgroundColor: AppColor.vulcan,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: ThemeText.getTextTheme(),
        appBarTheme: const AppBarTheme(elevation: 0),
      ),
      home: Container(),
    );
  }
}
