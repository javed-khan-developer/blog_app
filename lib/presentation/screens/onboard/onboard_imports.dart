import 'package:auto_route/auto_route.dart';
import 'package:blog_app/data/data_sources/remote/api_client.dart';
import 'package:blog_app/data/repositories/tags_repo.dart';
import 'package:blog_app/presentation/common_widgets/common_widgets_imports.dart';
import 'package:blog_app/presentation/routes/router_imports.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../core/constants/my_assets.dart';
import '../../../core/constants/my_colors.dart';
import '../../../data/data_sources/remote/api_constants.dart';
import '../../../data/data_sources/remote/api_endpoints.dart';
import 'onboard_view_model.dart';
import 'widgets/widgets_imports.dart';
part 'onboard.dart';
