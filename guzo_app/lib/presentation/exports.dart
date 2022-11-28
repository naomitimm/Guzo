export 'package:guzo_app/presentation/auth/auth_widgets.dart';
export 'package:flutter/material.dart';
export 'package:font_awesome_flutter/font_awesome_flutter.dart';
export 'package:google_fonts/google_fonts.dart';
export 'package:go_router/go_router.dart';
export 'package:smooth_page_indicator/smooth_page_indicator.dart';
export 'package:lottie/lottie.dart';
export 'package:guzo_app/presentation/theme/guzo_theme.dart';

// auth pages
export 'package:guzo_app/presentation/auth/login_page.dart';
export 'package:guzo_app/presentation/auth/signup_page.dart';

// nav pages
export 'package:guzo_app/presentation/on_boarding/on_boarding_screen.dart';
export 'package:guzo_app/presentation/dashboard/host_page.dart';
export 'package:guzo_app/presentation/dashboard/home_page.dart';
export 'package:guzo_app/presentation/dashboard/favorite_page.dart';
export 'package:guzo_app/presentation/dashboard/profile_page.dart';
export 'package:guzo_app/presentation/dashboard/search_page.dart';
export 'package:guzo_app/presentation/dashboard/details/sight_details_page.dart';
export 'package:guzo_app/presentation/dashboard/details/explore_sight_details_page.dart';

// models
export '../../domain/nav_pages/search_page/explore_sights_model.dart';
export 'package:guzo_app/domain/nav_pages/home_page/sight_model.dart';
export 'package:guzo_app/domain/nav_pages/home_page/task_model.dart';
export 'package:guzo_app/domain/nav_pages/search_page/catagory_model.dart';
export 'package:guzo_app/domain/nav_pages/favorites_page/favorite_model.dart';
export 'package:guzo_app/domain/user/user_model.dart';

// bloc
export 'package:guzo_app/application/auth/signup/signup_bloc.dart';
export 'package:flutter_bloc/flutter_bloc.dart';
export 'package:guzo_app/application/auth/login/login_bloc.dart';
export 'package:guzo_app/application/navigation/navigation_cubit.dart';
export 'package:guzo_app/application/favorites/favorites_bloc.dart';
export 'package:guzo_app/application/user/user_bloc.dart';
export 'package:guzo_app/application/buttons/buttons_bloc.dart';

// repositories
export 'package:guzo_app/infrustructure/auth/auth_repository.dart';

// validator
export 'package:guzo_app/domain/user/user_form_validator.dart';

// widgets
export 'package:guzo_app/presentation/dashboard/widgets/cards.dart';
export 'package:guzo_app/presentation/dashboard/widgets/texts.dart';
export 'package:guzo_app/presentation/dashboard/widgets/buttons.dart';
export 'package:guzo_app/presentation/dashboard/widgets/favorites_widget.dart';
export 'package:guzo_app/presentation/dashboard/widgets/home_widgets.dart';
export 'package:guzo_app/presentation/dashboard/widgets/waves.dart';
export 'package:guzo_app/presentation/dashboard/widgets/search_widgets.dart';
export 'package:guzo_app/presentation/dashboard/widgets/profile_widgets.dart';
export 'package:guzo_app/presentation/dashboard/widgets/details_widget.dart';
