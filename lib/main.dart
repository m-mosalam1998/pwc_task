import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pwc_task/service/routes.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  FlutterNativeSplash.preserve(
    widgetsBinding: widgetsBinding,
  );
  runApp(TaskApp(
    appRoutes: AppRoutes(),
  ));
}

class TaskApp extends StatelessWidget {
  const TaskApp({super.key, required this.appRoutes});
  final AppRoutes appRoutes;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        onGenerateRoute: appRoutes.onGenerateRoute,
        title: 'PwC Task',
        debugShowCheckedModeBanner: false,
        initialRoute: './',
      ),
    );
  }
}
