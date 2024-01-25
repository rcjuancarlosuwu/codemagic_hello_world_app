import 'package:flutter/material.dart';
import 'package:hello_world_app/hello_world/hello_world.dart';

class SlideUpTween extends StatelessWidget {
  const SlideUpTween({
    required this.begin,
    required this.child,
    super.key,
    this.curve = Curves.easeOut,
    this.duration = const Duration(seconds: 1),
  });

  final Offset begin;
  final Curve curve;
  final Duration duration;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<Offset>(
      tween: Tween(begin: begin, end: Offset.zero),
      curve: curve,
      duration: duration,
      builder: (_, value, child) => Transform.translate(
        offset: value,
        child: child,
      ),
      child: child,
    );
  }
}

class CodemagicHelloWorldPage extends StatelessWidget {
  const CodemagicHelloWorldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF07c8f9),
              Color(0xFF0d41e1),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SlideUpTween(
              begin: const Offset(0, 50),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Image.asset('assets/images/codemagic.png'),
              ),
            ),
            const SizedBox(height: 20),
            const SlideUpTween(
              begin: Offset(0, 50),
              child: HelloWorldText(),
            ),
          ],
        ),
      ),
    );
  }
}
