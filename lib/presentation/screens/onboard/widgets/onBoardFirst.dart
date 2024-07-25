part of 'widgets_imports.dart';

class onBoardFirst extends StatelessWidget {
  const onBoardFirst({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "lib/images/onBoard1.png",
          height: 333,
          width: 333,
        ),
        Text(
          "Discover, engage and read the latest articles oras well as share your own thoughts and ideas with the community",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
