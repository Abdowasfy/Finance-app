import 'package:finance_app/core/routing/app_routes.dart';
import 'package:finance_app/features/all_card/all_card_screen.dart';
import 'package:finance_app/features/auth/forget_password.dart';
import 'package:finance_app/features/auth/login_screen.dart';
import 'package:finance_app/features/auth/new_password.dart';
import 'package:finance_app/features/auth/provider/auth_provider.dart';
import 'package:finance_app/features/auth/verify_otp_screen.dart';
import 'package:finance_app/features/auth/password_changed.dart';
import 'package:finance_app/features/auth/register_screen.dart';
import 'package:finance_app/features/home_page/home_page_screen.dart';
import 'package:finance_app/features/main_screen/main_screen.dart';
import 'package:finance_app/features/on_boarding_screen/on_boarding_screen.dart';
import 'package:finance_app/features/profile/profile_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class RouterGenerationConfig {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.onBoardingScreen,
    routes: [
      GoRoute(
        path: AppRoutes.onBoardingScreen,
        name: AppRoutes.onBoardingScreen,
        builder: (context, state) => const OnBoardingScreen(),
      ),
      GoRoute(
        path: AppRoutes.loginScreen,
        name: AppRoutes.loginScreen,
        builder: (context, state) => ChangeNotifierProvider(
          create: (context) => AuthProvider(),
          child: const LoginScreen()),
      ),
      GoRoute(
        path: AppRoutes.registerScreen,
        name: AppRoutes.registerScreen,
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: AppRoutes.forgetPasswordScreen,
        name: AppRoutes.forgetPasswordScreen,
        builder: (context, state) => const ForgetPassword(),
      ),
      GoRoute(
        path: AppRoutes.passwordChanged,
        name: AppRoutes.passwordChanged,
        builder: (context, state) => const PasswordChanged(),
      ),
      GoRoute(
        path: AppRoutes.newpassword,
        name: AppRoutes.newpassword,
        builder: (context, state) => const NewPassword(),
      ),
      GoRoute(
        path: AppRoutes.verifyOtpScreen,
        name: AppRoutes.verifyOtpScreen,
        builder: (context, state) => const VerifyOtpScreen(),
      ),
      GoRoute(
        path: AppRoutes.mainscreen,
        name: AppRoutes.mainscreen,
        builder: (context, state) => const MainScreen(),
      ),
      GoRoute(
        path: AppRoutes.homepage,
        name: AppRoutes.homepage,
        builder: (context, state) => const HomePageScreen(),
      ),
      GoRoute(
        path: AppRoutes.profile,
        name: AppRoutes.profile,
        builder: (context, state) => const ProfileScreen(),
      ),
      GoRoute(
        path: AppRoutes.allCard,
        name: AppRoutes.allCard,
        builder: (context, state) => const AllCardScreen(),
      ),
      
    ],
  );
}
