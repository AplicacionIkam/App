

import 'package:provider/provider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:firebase_core/firebase_core.dart';
import 'auth/firebase_auth/firebase_user_provider.dart';
import 'auth/firebase_auth/auth_util.dart';




import 'backend/firebase/firebase_config.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/internationalization.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'flutter_flow/nav/nav.dart';
import 'index.dart';



import '/backend/firebase_dynamic_links/firebase_dynamic_links.dart';



void main() async {
    WidgetsFlutterBinding.ensureInitialized();
  GoRouter.optionURLReflectsImperativeAPIs = true;
  usePathUrlStrategy();
  await initFirebase();

  
  
  
  
  
  
  
  
  
  final appState = FFAppState(); // Initialize FFAppState
await appState.initializePersistedState();

  
  
  
  
  
  
  
  

      runApp(ChangeNotifierProvider(
      create: (context) => appState,
      child: MyApp(),
    ));
  
}


class MyApp extends StatefulWidget {
  

  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
    context.findAncestorStateOfType<_MyAppState>()!;

  
}



class _MyAppState extends State<MyApp> {
  Locale? _locale;  
  ThemeMode _themeMode = ThemeMode.system;

  late Stream<BaseAuthUser> userStream;


late AppStateNotifier _appStateNotifier;
late GoRouter _router;

final authUserSub = authenticatedUserStream.listen((_) {});


@override
void initState() {
  super.initState();
  
      _appStateNotifier = AppStateNotifier.instance;
    _router = createRouter(_appStateNotifier);
    userStream = iKAMultitiendasFirebaseUserStream()
      ..listen((user) => _appStateNotifier.update(user));
    jwtTokenStream.listen((_) {});
    Future.delayed(
      Duration(milliseconds: 1000),
      () => _appStateNotifier.stopShowingSplashImage(),
    );
    
}

    @override
    void dispose() {
      authUserSub.cancel();
      
      super.dispose();
    }


  void setLocale(String language) {  
    setState(() => _locale = createLocale(language));
    
  }
  void setThemeMode(ThemeMode mode) => setState(() {
      _themeMode = mode;
      
    });

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'IKAMultitiendas',
      
      localizationsDelegates: [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _locale,  
      supportedLocales: const [Locale('es'), ],
      theme: ThemeData(brightness: Brightness.light,  useMaterial3: false,),
      
      themeMode: _themeMode,
              routerConfig: _router,
      builder: (_, child) => DynamicLinksHandler(router: _router, child: child!, ),

      
    );
  }
}


class NavBarPage extends StatefulWidget {
  NavBarPage({Key? key, this.initialPage, this.page}) : super(key: key);

  final String? initialPage;
  final Widget? page;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPageName = 'userHome';
  late Widget? _currentPage;

  @override
  void initState() {
    super.initState();
    _currentPageName = widget.initialPage ?? _currentPageName;
    _currentPage = widget.page;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'userHome': UserHomeWidget(),
      'userFavorites': UserFavoritesWidget(),
      'userAccount': UserAccountWidget(),
    };
    final currentIndex = tabs.keys.toList().indexOf(_currentPageName);

    final MediaQueryData queryData = MediaQuery.of(context);

    return Scaffold(
      body: MediaQuery(
          data: queryData
              .removeViewInsets(removeBottom: true)
              .removeViewPadding(removeBottom: true),
          child: _currentPage ?? tabs[_currentPageName]!),
      extendBody: true,
      bottomNavigationBar: FloatingNavbar(
        currentIndex: currentIndex,
        onTap: (i) => setState(() {
          _currentPage = null;
          _currentPageName = tabs.keys.toList()[i];
        }),
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xFF222C57),
        unselectedItemColor: Color(0xFF222C57),
        selectedBackgroundColor: Color(0x00000000),
        borderRadius: 8.0,
        itemBorderRadius: 50.0,
        margin: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        width: double.infinity,
        elevation: 2.0,
        items: [
          FloatingNavbarItem(
            customWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  currentIndex == 0 ? Icons.home_rounded : Icons.home_outlined,
                  color:
                      currentIndex == 0 ? Color(0xFF222C57) : Color(0xFF222C57),
                  size: currentIndex == 0 ? 24.0 : 24.0,
                ),
                Text(
                  'Inicio',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: currentIndex == 0
                        ? Color(0xFF222C57)
                        : Color(0xFF222C57),
                    fontSize: 11.0,
                  ),
                ),
              ],
            ),
          ),
          FloatingNavbarItem(
            customWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  currentIndex == 1 ? Icons.favorite : Icons.favorite_border,
                  color:
                      currentIndex == 1 ? Color(0xFF222C57) : Color(0xFF222C57),
                  size: currentIndex == 1 ? 24.0 : 24.0,
                ),
                Text(
                  'Favoritos',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: currentIndex == 1
                        ? Color(0xFF222C57)
                        : Color(0xFF222C57),
                    fontSize: 11.0,
                  ),
                ),
              ],
            ),
          ),
          FloatingNavbarItem(
            customWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  currentIndex == 2
                      ? Icons.account_circle_rounded
                      : Icons.account_circle_outlined,
                  color:
                      currentIndex == 2 ? Color(0xFF222C57) : Color(0xFF222C57),
                  size: currentIndex == 2 ? 24.0 : 24.0,
                ),
                Text(
                  'Cuenta',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: currentIndex == 2
                        ? Color(0xFF222C57)
                        : Color(0xFF222C57),
                    fontSize: 11.0,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

