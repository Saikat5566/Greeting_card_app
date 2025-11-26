import 'package:get/get.dart';

import '../modules/Thankyou/bindings/thankyou_binding.dart';
import '../modules/Thankyou/views/thankyou_view.dart';
import '../modules/all_templates_page/bindings/all_templates_page_binding.dart';
import '../modules/all_templates_page/views/all_templates_page_view.dart';
import '../modules/anniversary/bindings/anniversary_binding.dart';
import '../modules/anniversary/views/anniversary_view.dart';
import '../modules/birthday/bindings/birthday_binding.dart';
import '../modules/birthday/views/birthday_view.dart';
import '../modules/congratulation/bindings/congratulation_binding.dart';
import '../modules/congratulation/views/congratulation_view.dart';
import '../modules/create_new_password_page/bindings/create_new_password_page_binding.dart';
import '../modules/create_new_password_page/views/create_new_password_page_view.dart';
import '../modules/edit_profile/bindings/edit_profile_binding.dart';
import '../modules/edit_profile/views/edit_profile_view.dart';
import '../modules/first_page/bindings/first_page_binding.dart';
import '../modules/first_page/views/first_page_view.dart';
import '../modules/forgetPassword_page/bindings/forget_password_page_binding.dart';
import '../modules/forgetPassword_page/views/forget_password_page_view.dart';
import '../modules/friendship/bindings/friendship_binding.dart';
import '../modules/friendship/views/friendship_view.dart';
import '../modules/graduation/bindings/graduation_binding.dart';
import '../modules/graduation/views/graduation_view.dart';
import '../modules/grativid_choice/bindings/grativid_choice_binding.dart';
import '../modules/grativid_choice/views/grativid_choice_view.dart';
import '../modules/home_page/bindings/home_page_binding.dart';
import '../modules/home_page/views/home_page_view.dart';
import '../modules/login_page/bindings/login_page_binding.dart';
import '../modules/login_page/views/login_page_view.dart';
import '../modules/love/bindings/love_binding.dart';
import '../modules/love/views/love_view.dart';
import '../modules/manage_package_page/bindings/manage_package_page_binding.dart';
import '../modules/manage_package_page/views/manage_package_page_view.dart';
import '../modules/my_library_page/bindings/my_library_page_binding.dart';
import '../modules/my_library_page/views/my_library_page_view.dart';
import '../modules/my_purchases_page/bindings/my_purchases_page_binding.dart';
import '../modules/my_purchases_page/views/my_purchases_page_view.dart';
import '../modules/new_baby/bindings/new_baby_binding.dart';
import '../modules/new_baby/views/new_baby_view.dart';
import '../modules/notification/bindings/notification_binding.dart';
import '../modules/notification/views/notification_view.dart';
import '../modules/profile_page/bindings/profile_page_binding.dart';
import '../modules/profile_page/views/profile_page_view.dart';
import '../modules/register_page/bindings/register_page_binding.dart';
import '../modules/register_page/views/register_page_view.dart';
import '../modules/retirement/bindings/retirement_binding.dart';
import '../modules/retirement/views/retirement_view.dart';
import '../modules/second_page/bindings/second_page_binding.dart';
import '../modules/second_page/views/second_page_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/templates_gallery_page/bindings/templates_gallery_page_binding.dart';
import '../modules/templates_gallery_page/views/templates_gallery_page_view.dart';
import '../modules/verification_page/bindings/verification_page_binding.dart';
import '../modules/verification_page/views/verification_page_view.dart';
import '../modules/verification_page_2/bindings/verification_page_2_binding.dart';
import '../modules/verification_page_2/views/verification_page_2_view.dart';
import '../modules/wedding/bindings/wedding_binding.dart';
import '../modules/wedding/views/wedding_view.dart';
import '../modules/welcome_page/bindings/welcome_page_binding.dart';
import '../modules/welcome_page/views/welcome_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
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
      name: _Paths.PROFILE_PAGE,
      page: () => const ProfilePageView(),
      binding: ProfilePageBinding(),
    ),
    GetPage(
      name: _Paths.MY_PURCHASES_PAGE,
      page: () => MyPurchasesPageView(),
      binding: MyPurchasesPageBinding(),
    ),
    GetPage(
      name: _Paths.MANAGE_PACKAGE_PAGE,
      page: () => ManagePackagePageView(),
      binding: ManagePackagePageBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_PROFILE,
      page: () => const EditProfileView(),
      binding: EditProfileBinding(),
    ),
    GetPage(
      name: _Paths.GRATIVID_CHOICE,
      page: () => GratividChoiceView(),
      binding: GratividChoiceBinding(),
    ),
    GetPage(
      name: _Paths.BIRTHDAY,
      page: () => BirthdayView(),
      binding: BirthdayBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => const NotificationView(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: _Paths.ANNIVERSARY,
      page: () => const AnniversaryView(),
      binding: AnniversaryBinding(),
    ),
    GetPage(
      name: _Paths.THANKYOU,
      page: () => const ThankyouView(),
      binding: ThankyouBinding(),
    ),
    GetPage(
      name: _Paths.CONGRATULATION,
      page: () => const CongratulationView(),
      binding: CongratulationBinding(),
    ),
    GetPage(
      name: _Paths.WEDDING,
      page: () => const WeddingView(),
      binding: WeddingBinding(),
    ),
    GetPage(
      name: _Paths.FRIENDSHIP,
      page: () => const FriendshipView(),
      binding: FriendshipBinding(),
    ),
    GetPage(
      name: _Paths.LOVE,
      page: () => const LoveView(),
      binding: LoveBinding(),
    ),
    GetPage(
      name: _Paths.NEW_BABY,
      page: () => const NewBabyView(),
      binding: NewBabyBinding(),
    ),
    GetPage(
      name: _Paths.RETIREMENT,
      page: () => const RetirementView(),
      binding: RetirementBinding(),
    ),
    GetPage(
      name: _Paths.GRADUATION,
      page: () => const GraduationView(),
      binding: GraduationBinding(),
    ),
  ];
}
