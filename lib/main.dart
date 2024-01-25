import 'package:elementarytest/ui_kit/presentation/pages/first.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'loading_screen.dart';
import 'ui_kit/presentation/pages/account_page.dart';
import 'ui_kit/presentation/pages/auth_full.dart';
import 'ui_kit/presentation/pages/regist_full.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
      url: 'https://lrwnejoqosmqwekgdcru.supabase.co',
      anonKey:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imxyd25lam9xb3NtcXdla2dkY3J1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTg3NDYyMTMsImV4cCI6MjAxNDMyMjIxM30.vr_kgIe6bJ_f7dYbiOgSU_xPe3jvG9LXnH0m8y5-iP0',
      authFlowType: AuthFlowType.pkce);

  runApp(const MyApp());
}

final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 864),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          routes: {
            '/account': (context) => const AccountPage(),
            '/regist': (context) => const RegistFull(),
            '/login': (context) => const AuthFull(),
            '/first': (context) => const First(),
          },
          home: child,
        );
      },
      child: const LoadingScreen(),
    );
  }
}
