import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/intro/components/subtitle_text.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import '../../../view model/responsive.dart';

class CombineSubtitleText extends StatelessWidget {
  const CombineSubtitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
         (kIsWeb && Responsive.isLargeMobile(context)
            ? const Responsive(
          desktop: AnimatedSubtitleText(
              start: 30,
              end: 40,
              text: 'Flutter ',
              gradient: true),
          largeMobile: AnimatedSubtitleText(
              start: 30,
              end: 25,
              text: 'Flutter ',
              gradient: true),
          mobile: AnimatedSubtitleText(
              start: 25,
              end: 20,
              text: 'Flutter ',
              gradient: true),
          tablet: AnimatedSubtitleText(
              start: 40,
              end: 30,
              text: 'Flutter ',
              gradient: true),
        )
            : ShaderMask(
          shaderCallback: (bounds) {
            return const LinearGradient(colors: [
              Colors.pink,
              Colors.blue,
            ]).createShader(bounds);
          },
          child: const Responsive(
            desktop: AnimatedSubtitleText(
                start: 30,
                end: 40,
                text: 'Flutter ',
                gradient: false),
            largeMobile: AnimatedSubtitleText(
                start: 30,
                end: 25,
                text: 'Flutter ',
                gradient: false),
            mobile: AnimatedSubtitleText(
                start: 25,
                end: 20,
                text: 'Flutter ',
                gradient: true),
            tablet: AnimatedSubtitleText(
                start: 40,
                end: 30,
                text: 'Flutter ',
                gradient: false),
          ),
        )),
        const Responsive(
          desktop: AnimatedSubtitleText(
              start: 30, end: 40, text: 'Developer '),
          largeMobile: AnimatedSubtitleText(
              start: 30, end: 25, text: 'Developer '),
          mobile: AnimatedSubtitleText(
              start: 25, end: 20, text: 'Developer '),
          tablet: AnimatedSubtitleText(
              start: 40, end: 30, text: 'Developer '),
        ),
       
         const Responsive(
          desktop: AnimatedSubtitleText(
              start: 30, end: 40, text: ' & '),
          largeMobile: AnimatedSubtitleText(
              start: 30, end: 25, text: ' & '),
          mobile: AnimatedSubtitleText(
              start: 25, end: 20, text: ' & '),
          tablet: AnimatedSubtitleText(
              start: 40, end: 30, text: ' & '),
        ),
         (kIsWeb && Responsive.isLargeMobile(context)
            ? const Responsive(
          desktop: AnimatedSubtitleText(
              start: 30,
              end: 40,
              text: 'Project Manager ',
              gradient: true),
          largeMobile: AnimatedSubtitleText(
              start: 30,
              end: 25,
              text: 'Project Manager ',
              gradient: true),
          mobile: AnimatedSubtitleText(
              start: 25,
              end: 20,
              text: 'Project Manager ',
              gradient: true),
          tablet: AnimatedSubtitleText(
              start: 40,
              end: 30,
              text: 'Project Manager ',
              gradient: true),
        )
            : ShaderMask(
          shaderCallback: (bounds) {
            return const LinearGradient(colors: [
              Colors.pink,
              Colors.blue,
            ]).createShader(bounds);
          },
          child: const Responsive(
            desktop: AnimatedSubtitleText(
                start: 30,
                end: 40,
                text: 'Project Manager ',
                gradient: false),
            largeMobile: AnimatedSubtitleText(
                start: 30,
                end: 25,
                text: 'Project Manager ',
                gradient: false),
            mobile: AnimatedSubtitleText(
                start: 25,
                end: 20,
                text: 'Project Manager ',
                gradient: true),
            tablet: AnimatedSubtitleText(
                start: 40,
                end: 30,
                text: 'Project Manager ',
                gradient: false),
          ),
        ))
      ],
    );
  }
}
