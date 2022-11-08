export 'package:guzo_app/presentation/auth/auth_widgets.dart';
export 'package:flutter/material.dart';
export 'package:font_awesome_flutter/font_awesome_flutter.dart';
export 'package:google_fonts/google_fonts.dart';
export 'package:go_router/go_router.dart';
export 'package:guzo_app/presentation/theme/app_theme.dart';
export 'package:smooth_page_indicator/smooth_page_indicator.dart';
export 'package:lottie/lottie.dart';
// auth pages
export 'package:guzo_app/presentation/auth/login/login_page.dart';
export 'package:guzo_app/presentation/auth/signup/signup_page.dart';

// nav pages
export 'package:guzo_app/presentation/on_boarding/on_boarding_screen.dart';
export 'package:guzo_app/presentation/navPages/host_page.dart';
export 'package:guzo_app/presentation/navPages/home_page.dart';
export 'package:guzo_app/presentation/navPages/favorite_page.dart';
export 'package:guzo_app/presentation/navPages/profile_page.dart';
export 'package:guzo_app/presentation/navPages/search_page.dart';
export 'package:guzo_app/presentation/navPages/details/sight_details_page.dart';
export 'package:guzo_app/presentation/navPages/details/explore_sight_details_page.dart';

// models
export '../../domain/nav_pages/search_page/explore_sights_model.dart';
export 'package:guzo_app/domain/nav_pages/home_page/sight_model.dart';
export 'package:guzo_app/domain/nav_pages/home_page/task_model.dart';
export 'package:guzo_app/domain/nav_pages/search_page/catagory_model.dart';
export 'package:guzo_app/domain/nav_pages/favorites_page/favorite_model.dart';

// bloc
export 'package:guzo_app/application/auth/signup/signup_bloc.dart';
export 'package:flutter_bloc/flutter_bloc.dart';
export 'package:guzo_app/application/auth/login/login_bloc.dart';
export 'package:guzo_app/application/navigation/navigation_cubit.dart';

// repositories
export 'package:guzo_app/infrustructure/auth/auth_repository.dart';

// validator
export 'package:guzo_app/domain/user/user_form_validator.dart';

// widgets
export 'package:guzo_app/presentation/navPages/widgets/cards.dart';
export 'package:guzo_app/presentation/navPages/widgets/texts.dart';
export 'package:guzo_app/presentation/navPages/widgets/buttons.dart';
