part of 'splash_import.dart';

@RoutePage()
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    moveToOnBoardScreen();

    super.initState();
  }

  void moveToOnBoardScreen() async {
    await Future.delayed(Duration(seconds: 4), () {
      AutoRouter.of(context).push(const OnboardRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: FadedScaleAnimation(
        child: Image.asset(
          'lib/images/appLogo.png',
        ), 
      )),
    );
  }
}
