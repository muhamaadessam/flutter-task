import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  const TextTitle(
    this.text, {
    super.key,
    this.textAlign,
    this.fontWeight = FontWeight.bold,
    this.fontSize = 16,
    this.color = Colors.black,
  });

  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  final Color color;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: MediaQuery.textScalerOf(context).scale(fontSize),
        color: color,
        fontFamily: 'Almarai',
      ),
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign,
    );
  }
}

class TextBody14 extends StatelessWidget {
  const TextBody14(
    this.text, {
    super.key,
    this.textAlign,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 14,
    this.color = Colors.black,
  });

  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  final Color color;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: MediaQuery.textScalerOf(context).scale(fontSize),
        color: color,
        fontFamily: 'Almarai',
      ),
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign,
    );
  }
}

class TextBody12 extends StatelessWidget {
  const TextBody12(
    this.text, {
    super.key,
    this.textAlign,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 12,
    this.color = Colors.black,
  });

  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  final Color color;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: MediaQuery.textScalerOf(context).scale(fontSize),
        color: color,
        fontFamily: 'Almarai',
      ),
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign,
    );
  }
}

class TextDescription extends StatelessWidget {
  const TextDescription(
    this.text, {
    super.key,
    this.textAlign,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 10,
    this.color = Colors.black,
  });

  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  final Color color;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: MediaQuery.textScalerOf(context).scale(fontSize),
        color: color,
        fontFamily: 'Almarai',
      ),
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign,
    );
  }
}

class TextLink extends StatelessWidget {
  const TextLink(
    this.text, {
    super.key,
    this.textAlign,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 14,
    this.color = Colors.black,
    this.onTap,
  });

  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  final Color color;
  final TextAlign? textAlign;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        style: TextStyle(
            fontWeight: fontWeight,
            fontSize: MediaQuery.textScalerOf(context).scale(fontSize),
            color: Colors.blue,
            fontFamily: 'Almarai',
            decoration: TextDecoration.underline,
            decorationColor: Colors.blue),
        overflow: TextOverflow.ellipsis,
        textAlign: textAlign,
      ),
    );
  }
}
