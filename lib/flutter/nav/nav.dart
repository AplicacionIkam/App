import 'dart:async';

import 'package:flutter/material.dart';import 'package:flutter/scheduler.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';




import '/auth/base_auth_user_provider.dart';


import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';
export '/backend/firebase_dynamic_links/firebase_dynamic_links.dart' show generateCurrentPageLink;

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
    AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();


  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}
  

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => _RouteErrorBuilder(
  state: state,
  child: appStateNotifier.loggedIn ?
    NavBarPage() :
    PageHomeWidget(),

),

      routes: [
        FFRoute(
            name: '_initialize',
  path: '/',
  builder: (context, _) => appStateNotifier.loggedIn ?
    NavBarPage() :
    PageHomeWidget(),


          
        ),
        FFRoute(
  name: 'pageHome',
  path: '/pageHome',
  
  
  builder: (context, params) =>  PageHomeWidget(
      
       ),
  ),
FFRoute(
  name: 'login',
  path: '/login',
  
  
  builder: (context, params) =>  LoginWidget(
      
       ),
  ),
FFRoute(
  name: 'signup',
  path: '/signup',
  
  
  builder: (context, params) =>  SignupWidget(
      
       ),
  ),
FFRoute(
  name: 'userHome',
  path: '/userHome',
  
  
  builder: (context, params) => params.isEmpty ? NavBarPage(initialPage: 'userHome') :  UserHomeWidget(
      
       ),
  ),
FFRoute(
  name: 'guestHome',
  path: '/guestHome',
  
  
  builder: (context, params) =>  GuestHomeWidget(
      
       ),
  ),
FFRoute(
  name: 'adminHome',
  path: '/adminHome',
  
  
  builder: (context, params) =>  AdminHomeWidget(
      
       ),
  ),
FFRoute(
  name: 'signup1',
  path: '/signup1',
  
  
  builder: (context, params) =>  Signup1Widget(
      
       ),
  ),
FFRoute(
  name: 'signup2',
  path: '/signup2',
  
  
  builder: (context, params) =>  Signup2Widget(
      
       ),
  ),
FFRoute(
  name: 'userAccount',
  path: '/userAccount',
  
  
  builder: (context, params) => params.isEmpty ? NavBarPage(initialPage: 'userAccount') :  UserAccountWidget(
      
       ),
  ),
FFRoute(
  name: 'guestCategory',
  path: '/guestCategory',
  
  
  builder: (context, params) =>  GuestCategoryWidget(
      
       ),
  ),
FFRoute(
  name: 'guestMunic',
  path: '/guestMunic',
  
  
  builder: (context, params) =>  GuestMunicWidget(
      estado: params.getParam('estado', ParamType.DocumentReference , false , ['estado'] ,),
       ),
  ),
FFRoute(
  name: 'guestStates',
  path: '/guestStates',
  
  
  builder: (context, params) =>  GuestStatesWidget(
      
       ),
  ),
FFRoute(
  name: 'adminAdd',
  path: '/adminAdd',
  
  
  builder: (context, params) =>  AdminAddWidget(
      
       ),
  ),
FFRoute(
  name: 'adminForm',
  path: '/adminForm',
  
  
  builder: (context, params) =>  AdminFormWidget(
      
       ),
  ),
FFRoute(
  name: 'userDescription',
  path: '/userDescription',
  
  
  builder: (context, params) =>  UserDescriptionWidget(
      pyme: params.getParam('pyme', ParamType.DocumentReference , false , ['pyme'] ,),
       ),
  ),
FFRoute(
  name: 'userCategory',
  path: '/userCategory',
  
  
  builder: (context, params) =>  UserCategoryWidget(
      
       ),
  ),
FFRoute(
  name: 'userStates',
  path: '/userStates',
  
  
  builder: (context, params) =>  UserStatesWidget(
      
       ),
  ),
FFRoute(
  name: 'userMuni',
  path: '/userMuni',
  
  
  builder: (context, params) =>  UserMuniWidget(
      estado: params.getParam('estado', ParamType.DocumentReference , false , ['estado'] ,),
       ),
  ),
FFRoute(
  name: 'userFavorites',
  path: '/userFavorites',
  
  
  builder: (context, params) => params.isEmpty ? NavBarPage(initialPage: 'userFavorites') :  UserFavoritesWidget(
      
       ),
  ),
FFRoute(
  name: 'userCologne',
  path: '/userCologne',
  
  
  builder: (context, params) =>  UserCologneWidget(
      municipio: params.getParam('municipio', ParamType.DocumentReference , false , ['municipio'] ,),
       ),
  ),
FFRoute(
  name: 'guestCologne',
  path: '/guestCologne',
  
  
  builder: (context, params) =>  GuestCologneWidget(
      municipio: params.getParam('municipio', ParamType.DocumentReference , false , ['municipio'] ,),
       ),
  ),
FFRoute(
  name: 'adminStates',
  path: '/adminStates',
  
  
  builder: (context, params) =>  AdminStatesWidget(
      
       ),
  ),
FFRoute(
  name: 'adminMuni',
  path: '/adminMuni',
  
  
  builder: (context, params) =>  AdminMuniWidget(
      estado: params.getParam('estado', ParamType.DocumentReference , false , ['estado'] ,),
       ),
  ),
FFRoute(
  name: 'adminCologne',
  path: '/adminCologne',
  
  
  builder: (context, params) =>  AdminCologneWidget(
      municipio: params.getParam('municipio', ParamType.DocumentReference , false , ['municipio'] ,),
       ),
  ),
FFRoute(
  name: 'pymeHome',
  path: '/pymeHome',
  
  
  builder: (context, params) =>  PymeHomeWidget(
      
       ),
  ),
FFRoute(
  name: 'guestDescription',
  path: '/guestDescription',
  
  
  builder: (context, params) =>  GuestDescriptionWidget(
      pyme: params.getParam('pyme', ParamType.DocumentReference , false , ['pyme'] ,),
       ),
  ),
FFRoute(
  name: 'adminDescription',
  path: '/adminDescription',
  
  
  builder: (context, params) =>  AdminDescriptionWidget(
      pyme: params.getParam('pyme', ParamType.DocumentReference , false , ['pyme'] ,),
       ),
  ),
FFRoute(
  name: 'userSubcategory',
  path: '/userSubcategory',
  
  
  builder: (context, params) =>  UserSubcategoryWidget(
      categoria: params.getParam('categoria', ParamType.DocumentReference , false , ['categoria'] ,),
       ),
  ),
FFRoute(
  name: 'userfilCologne',
  path: '/userfilCologne',
  
  
  builder: (context, params) =>  UserfilCologneWidget(
      colonia: params.getParam('colonia', ParamType.DocumentReference , false , ['colonia'] ,),
       ),
  ),
FFRoute(
  name: 'userfilSubCate',
  path: '/userfilSubCate',
  
  
  builder: (context, params) =>  UserfilSubCateWidget(
      subcate: params.getParam('subcate', ParamType.DocumentReference , false , ['subCategoria'] ,),
       ),
  ),
FFRoute(
  name: 'guestfilCologne',
  path: '/guestfilCologne',
  
  
  builder: (context, params) =>  GuestfilCologneWidget(
      colonia: params.getParam('colonia', ParamType.DocumentReference , false , ['colonia'] ,),
       ),
  ),
FFRoute(
  name: 'guestSubcategory',
  path: '/guestSubcategory',
  
  
  builder: (context, params) =>  GuestSubcategoryWidget(
      categoria: params.getParam('categoria', ParamType.DocumentReference , false , ['categoria'] ,),
       ),
  ),
FFRoute(
  name: 'guestfilSubCat',
  path: '/guestfilSubCat',
  
  
  builder: (context, params) =>  GuestfilSubCatWidget(
      subcate: params.getParam('subcate', ParamType.DocumentReference , false , ['subCategoria'] ,),
       ),
  ),
FFRoute(
  name: 'adminfilCologne',
  path: '/adminfilCologne',
  
  
  builder: (context, params) =>  AdminfilCologneWidget(
      colonia: params.getParam('colonia', ParamType.DocumentReference , false , ['colonia'] ,),
       ),
  ),
FFRoute(
  name: 'adminCategory',
  path: '/adminCategory',
  
  
  builder: (context, params) =>  AdminCategoryWidget(
      
       ),
  ),
FFRoute(
  name: 'adminSubcategory',
  path: '/adminSubcategory',
  
  
  builder: (context, params) =>  AdminSubcategoryWidget(
      categoria: params.getParam('categoria', ParamType.DocumentReference , false , ['categoria'] ,),
       ),
  ),
FFRoute(
  name: 'adminfilSubCate',
  path: '/adminfilSubCate',
  
  
  builder: (context, params) =>  AdminfilSubCateWidget(
      subcate: params.getParam('subcate', ParamType.DocumentReference , false , ['subCategoria'] ,),
       ),
  ),
FFRoute(
  name: 'adminUpdate',
  path: '/adminUpdate',
  
  
  builder: (context, params) =>  AdminUpdateWidget(
      userRef: params.getParam('userRef', ParamType.DocumentReference , false , ['pyme'] ,),
       ),
  )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}


extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

    void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }

}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
    
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
                redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/pageHome';
          }
          return null;
        },

        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
            ? Container(
  color: Color(0xFF222C57),
  child: Image.asset(
                'assets/images/LogoBlanco.png',
                
                fit: BoxFit.contain,
              ),
)
            : page
;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: 
                      (context, animation, secondaryAnimation, child) =>
                  PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class _RouteErrorBuilder extends StatefulWidget {
  const _RouteErrorBuilder({
    Key? key,
    required this.state,
    required this.child,
  }) : super(key: key);

  final GoRouterState state;
  final Widget child;

  @override
  State<_RouteErrorBuilder> createState() => _RouteErrorBuilderState();
}

class _RouteErrorBuilderState extends State<_RouteErrorBuilder> {
  @override
  void initState() {
    super.initState();
    // Handle erroneous links from Firebase Dynamic Links.
    if (widget.state.uri.toString().startsWith('/link') &&
        widget.state.uri.toString().contains('request_ip_version')) {
      SchedulerBinding.instance.addPostFrameCallback((_) => context.go('/'));
    }
  }

  @override
  Widget build(BuildContext context) => widget.child;
}


class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
