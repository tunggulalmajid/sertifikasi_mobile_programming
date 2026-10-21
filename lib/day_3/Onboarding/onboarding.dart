import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:sertifikasi_pertama/day_3/Navigation/onboarding_page.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: Colors.blueAccent.shade700,
      pages: [
        PageViewModel(
          title: "Title of introduction page",
          body: "Welcome to the app! This is a description of how it works.",
          image: const Center(child: Icon(Icons.waving_hand, size: 50.0)),
        ),
        PageViewModel(
          title: "Halaman OnBoarding Ke-2",
          body: "Keterangan halaman OnBoarding ke-2.",
          image: Image(image: NetworkImage("https://picsum.photos/200/300")),
        ),
        PageViewModel(
          title: "Halaman OnBoarding Ke-3",
          body: "Keterangan halaman OnBoarding ke-3.",
          image: Image(image: NetworkImage("https://picsum.photos/200/400")),
        ),
      ],
      showBackButton: true,
      showNextButton: true,
      showSkipButton: true,
      skip: Text("Skip"),
      onSkip: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => OnboardingPage(email: "Tunggul"),
          ),
        );
      },
      next: Icon(Icons.arrow_forward, size: 25),
      back: const Icon(Icons.arrow_back),
      done: const Text("Done"),
      onDone: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => OnboardingPage(email: "Tunggul"),
          ),
        );
      },
    );
  }
}
