part of 'onboard_imports.dart';

@RoutePage()
class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  OnboardModel onboardModel = OnboardModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SafeArea(
              child: Image.asset("lib/images/appLogo.png",
                  color: MyColors.primaryColor, height: 42, width: 139),
            ),
            SizedBox(
              height: 50,
            ),
            Expanded(
                child: PageView(
              children: [onBoardFirst(), onBoardSecond(), onBoardThird()],
            )),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: MyColors.primaryColor,
                    minimumSize: Size(MediaQuery.of(context).size.width, 44),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11))),
                child: Text(
                  "Get Started",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                )),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Skip",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: MyColors.primaryColor),
                ),
                SmoothPageIndicator(
                  controller: onboardModel.controller,
                  count: 6,
                  axisDirection: Axis.horizontal,
                  effect: SlideEffect(
                      spacing: 8.0,
                      radius: 4.0,
                      dotWidth: 24.0,
                      dotHeight: 16.0,
                      paintStyle: PaintingStyle.stroke,
                      strokeWidth: 1.5,
                      dotColor: Colors.grey,
                      activeDotColor: Colors.indigo),
                ),
                Text(
                  "next",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: MyColors.primaryColor),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
