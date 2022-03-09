import 'package:flutter/material.dart';

class SebhaScreen extends StatefulWidget {
  SebhaScreen({Key? key}) : super(key: key);
  static const routeName = 'sebha-screen';
  int counter = 0;
  int rotationAngle = 0;
  String tasbeh = 'سبحان الله';
  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 50),
        Image.asset('assets/images/sebha_head.png'),
        InkWell(
          onTap: () {
            setState(() {
              widget.rotationAngle += 11;
              widget.counter++;
            });
            changeTasbeh();
          },
          child: RotationTransition(
            turns: AlwaysStoppedAnimation(widget.rotationAngle / 360),
            child: Image.asset(
              'assets/images/sebha_body.png',
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'عدد التسبيحات',
              style: textTheme.headline1,
            ),
          ],
        ),
        const SizedBox(height: 24),
        Container(
          height: 81,
          width: 69,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(24)),
            color: Color.fromARGB(255, 207, 177, 134),
          ),
          child: Center(
            child: Text(
              '${widget.counter}',
              style: textTheme.headline2,
            ),
          ),
        ),
        const SizedBox(height: 24),
        Container(
          height: 51,
          width: 137,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(32)),
            color: theme.canvasColor,
          ),
          child: Center(
            child: Text(
              widget.tasbeh,
              style: textTheme.headline3,
            ),
          ),
        ),
      ],
    );
  }

  void changeTasbeh() {
    if (widget.counter > 33) {
      if (widget.counter == 34) {
        widget.tasbeh = 'الحمد لله';
      } else if (widget.counter == 67) {
        widget.tasbeh = 'الله أكبر';
      } else if (widget.counter == 100) {
        widget.tasbeh = 'لا اله الا الله';
      } else if (widget.counter == 133) {
        widget.tasbeh = 'لا حول ولا قوه الا بالله';
      } else if (widget.counter == 166) {
        widget.counter = 1;
      }
    }
  }
}
