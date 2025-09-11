import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vega_user/features/onboard/presentstion/views/widgets/custom_bottom.dart';
import 'package:vega_user/features/onboard/presentstion/views/widgets/intro_page1.dart';
import 'package:vega_user/features/onboard/presentstion/views/widgets/intro_page3.dart';
import '../../../../core/utils/app_colors.dart';
import 'widgets/intro_page2.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  PageController _controller = PageController();
  bool onListPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (value) {
              setState(() {
                onListPage = (value == 2);
              });
            },
            controller: _controller,
            children: [IntroPage1(), IntroPage2(), IntroPage3()],
          ),
          Container(
            alignment: Alignment(0, 0.9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                  child: Text("Skip"), // تخطي,
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: WormEffect(
                    dotColor: Colors.grey,
                    activeDotColor: AppColors.pColor,
                  ),
                ),

                onListPage
                    ? CustomButtom(
                        text: "Done", //تم
                      )
                    : CustomButtom(
                        text: "Next", //التالي
                        onTap: () {
                          _controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.linear,
                          );
                        },
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
