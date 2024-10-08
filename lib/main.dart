import 'package:blog_app/data/data_sources/local/user_preference.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/themes/app_themes.dart';
import 'data/repositories/login_repo.dart';
import 'data/repositories/respositories.dart';
import 'data/repositories/tags_repo.dart';
import 'presentation/routes/router_imports.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  UserPreference.initUserPref();
  runApp(RepositoryProvider(
    create: (context) => Repository(
      tagsRepo: TagsRepo(),
      authRepo: AuthRepo(),
    ),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        useInheritedMediaQuery: true,
        builder: (context, child) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Blog App',
            theme: AppThemes.light,
            darkTheme: AppThemes.dark,
            routerConfig: _appRouter.config(),
          );
        });
  }
}
