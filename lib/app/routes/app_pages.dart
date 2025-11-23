import 'package:get/get.dart';

import '../modules/all_templates_page/bindings/all_templates_page_binding.dart';
import '../modules/all_templates_page/views/all_templates_page_view.dart';
import '../modules/create_new_password_page/bindings/create_new_password_page_binding.dart';
import '../modules/create_new_password_page/views/create_new_password_page_view.dart';
import '../modules/first_page/bindings/first_page_binding.dart';
import '../modules/first_page/views/first_page_view.dart';
import '../modules/forgetPassword_page/bindings/forget_password_page_binding.dart';
import '../modules/forgetPassword_page/views/forget_password_page_view.dart';
import '../modules/gratis_page/bindings/gratis_page_binding.dart';
import '../modules/gratis_page/views/gratis_page_view.dart';
import '../modules/home_page/bindings/home_page_binding.dart';
import '../modules/home_page/views/home_page_view.dart';
import '../modules/login_page/bindings/login_page_binding.dart';
import '../modules/login_page/views/login_page_view.dart';
import '../modules/my_library_page/bindings/my_library_page_binding.dart';
import '../modules/my_library_page/views/my_library_page_view.dart';
import '../modules/profile_page/bindings/profile_page_binding.dart';
import '../modules/profile_page/views/profile_page_view.dart';
import '../modules/register_page/bindings/register_page_binding.dart';
import '../modules/register_page/views/register_page_view.dart';
import '../modules/second_page/bindings/second_page_binding.dart';
import '../modules/second_page/views/second_page_view.dart';
import '../modules/splash_screen/bindings/home_binding.dart';
import '../modules/splash_screen/views/home_view.dart';
import '../modules/templates_gallery_page/bindings/templates_gallery_page_binding.dart';
import '../modules/templates_gallery_page/views/templates_gallery_page_view.dart';
import '../modules/verification_page/bindings/verification_page_binding.dart';
import '../modules/verification_page/views/verification_page_view.dart';
import '../modules/verification_page_2/bindings/verification_page_2_binding.dart';
import '../modules/verification_page_2/views/verification_page_2_view.dart';
import '../modules/welcome_page/bindings/welcome_page_binding.dart';
import '../modules/welcome_page/views/welcome_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const SplashScreen(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.FIRST_PAGE,
      page: () => FirstPageView(),
      binding: FirstPageBinding(),
    ),
    GetPage(
      name: _Paths.SECOND_PAGE,
      page: () => const SecondPageView(),
      binding: SecondPageBinding(),
    ),
    GetPage(
      name: _Paths.WELCOME_PAGE,
      page: () => const WelcomePageView(),
      binding: WelcomePageBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_PAGE,
      page: () => const LoginPageView(),
      binding: LoginPageBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER_PAGE,
      page: () => const RegisterPageView(),
      binding: RegisterPageBinding(),
    ),
    GetPage(
      name: _Paths.HOME_PAGE,
      page: () => HomePageView(),
      binding: HomePageBinding(),
    ),
    GetPage(
      name: _Paths.VERIFICATION_PAGE,
      page: () => const VerificationPageView(),
      binding: VerificationPageBinding(),
    ),
    GetPage(
      name: _Paths.FORGET_PASSWORD_PAGE,
      page: () => const ForgetPasswordPageView(),
      binding: ForgetPasswordPageBinding(),
    ),
    GetPage(
      name: _Paths.VERIFICATION_PAGE_2,
      page: () => const VerificationPage2View(),
      binding: VerificationPage2Binding(),
    ),
    GetPage(
      name: _Paths.CREATE_NEW_PASSWORD_PAGE,
      page: () => const CreateNewPasswordPageView(),
      binding: CreateNewPasswordPageBinding(),
    ),
    GetPage(
      name: _Paths.ALL_TEMPLATES_PAGE,
      page: () => AllTemplatesPageView(),
      binding: AllTemplatesPageBinding(),
    ),
    GetPage(
      name: _Paths.MY_LIBRARY_PAGE,
      page: () => MyLibraryPageView(),
      binding: MyLibraryPageBinding(),
    ),
    GetPage(
      name: _Paths.TEMPLATES_GALLERY_PAGE,
      page: () => TemplatesGalleryPageView(),
      binding: TemplatesGalleryPageBinding(),
    ),
    GetPage(
      name: _Paths.GRATIS_PAGE,
      page: () => const GratisPageView(),
      binding: GratisPageBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_PAGE,
      page: () => const ProfilePageView(),
      binding: ProfilePageBinding(),
    ),
  ];
}
