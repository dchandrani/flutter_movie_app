import 'package:flutter/material.dart';
import 'package:flutter_movie_app/common/constants/size_constants.dart';
import 'package:flutter_movie_app/common/screenutil/screenutil.dart';
import 'package:flutter_movie_app/presentation/widgets/logo.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../common/extensions/size_extensions.dart';

class MovieAppBar extends StatelessWidget {
  const MovieAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: ScreenUtil.statusBarHeight + Sizes.dimen_4.h,
        left: Sizes.dimen_16.w,
        right: Sizes.dimen_16.w,
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/svgs/menu.svg',
              height: Sizes.dimen_12.h,
            ),
          ),
          Expanded(
            child: Logo(
              height: Sizes.dimen_14.h,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
              size: Sizes.dimen_12.h,
            ),
          ),
        ],
      ),
    );
  }
}
