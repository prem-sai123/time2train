import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:t2t/di/injection.dart';
import 'package:t2t/features/auth/presentation/bloc/blocs.dart';
import 'package:t2t/features/auth/presentation/screen/sign_in_screen.dart';
import 'package:t2t/features/home/presentation/bloc/app_screens/app_screen_cubit.dart';
import 'package:t2t/features/home/presentation/screen/home_screen.dart';

class TimeToTrainApp extends StatelessWidget {
  const TimeToTrainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (BuildContext context) =>
                locator.get<AuthCubit>()..checkUserSession()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        darkTheme: ThemeData(
          textTheme: GoogleFonts.montserratTextTheme().copyWith(
            overline: GoogleFonts.montserratTextTheme()
                .overline
                ?.copyWith(color: Colors.white70),
            caption: GoogleFonts.montserratTextTheme()
                .caption
                ?.copyWith(color: Colors.white70),
            bodyText1: GoogleFonts.montserratTextTheme()
                .bodyText2
                ?.copyWith(color: Colors.white),
            bodyText2: GoogleFonts.montserratTextTheme()
                .bodyText2
                ?.copyWith(color: Colors.white),
          ),
          colorScheme: const ColorScheme.dark(
            primary: Color(0xff202020),
            primaryVariant: Colors.black,
            onPrimary: Color(0xffffffff),
            secondary: Color(0xff00d7ff),
            secondaryVariant: Color(0xff00a5cc),
            onSecondary: Color(0xff000000),
            error: Colors.red,
            onError: Colors.white,
            background: Color(0xff202020),
            onBackground: Colors.white,
            surface: Color(0xff000000),
            onSurface: Colors.white,
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color(0xff202020),
            selectedItemColor: Color(0xff00d7ff),
            elevation: 6.0,
            unselectedItemColor: Colors.grey,
          ),
          chipTheme: ChipThemeData.fromDefaults(
            brightness: Brightness.dark,
            secondaryColor: const Color(0xff00d7ff),
            labelStyle: GoogleFonts.montserratTextTheme()
                .bodyText1!
                .copyWith(color: Colors.white),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              padding: const EdgeInsets.all(16.0),
              alignment: Alignment.centerLeft,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          scaffoldBackgroundColor: Colors.black,
        ),
        theme: ThemeData(fontFamily: 'Convoy'),
        home: BlocBuilder<AuthCubit, AuthState>(
          builder: (ctx, state) {
            return state.when(
              initial: () => _buildSignInScreen(),
              loading: () => Center(
                  child: CircularProgressIndicator(
                      backgroundColor:
                          Theme.of(context).colorScheme.secondary)),
              authenticated: () => _buildHomeScreen(),
              needAppUpdate: () => _buildSignInScreen(),
              unAuthenticated: () => _buildSignInScreen(),
            );
          },
        ),
      ),
    );
  }

  Widget _buildHomeScreen() {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (ctx) => AppScreenCubit())],
      child: const HomeScreen(),
    );
  }

  Widget _buildSignInScreen() {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (BuildContext context) => locator.get<SignInCubit>()),
      ],
      child: const SignInScreen(),
    );
  }
}
