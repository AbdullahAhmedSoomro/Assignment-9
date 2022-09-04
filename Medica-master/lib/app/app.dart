import 'package:medicaApp/ui/views/Categories/categories_view.dart';
import 'package:medicaApp/ui/views/Doctor%20Details/doc_details_view.dart';
import 'package:medicaApp/ui/views/FluidBottomNav/fluid_bottom_navigation_view.dart.dart';
import 'package:medicaApp/ui/views/Login/login_view.dart';
import 'package:medicaApp/ui/views/signUp/signup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [
  MaterialRoute(page: LoginView, initial: true),
  MaterialRoute(page: SignupView,),
  MaterialRoute(page: BottomNavigationView),
  MaterialRoute(page: CategoriesView),
  MaterialRoute(page: DoctorDetailsView)
],
dependencies: [LazySingleton(classType: NavigationService)]
)
class AppSetup{}