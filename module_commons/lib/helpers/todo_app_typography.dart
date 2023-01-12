import 'package:flutter/material.dart';
import 'package:module_commons/commons.dart';
import 'package:module_commons/helpers/todo_app_letter_spacing.dart';

const _fontFamily = "Inter";

const _h1 = TextStyle(
  fontFamily: _fontFamily,
  fontSize: TodoAppDimens.md,
  fontStyle: FontStyle.normal,
  letterSpacing: TodoAppLetterSpacing.headingOne,
  height: TodoAppDimens.xatto,
  color: TodoAppColors.monoWhite,
);

const _h2 = TextStyle(
  fontFamily: _fontFamily,
  fontSize: TodoAppDimens.sm,
  fontStyle: FontStyle.normal,
  letterSpacing: TodoAppLetterSpacing.headingTwo,
  height: TodoAppDimens.xatto,
  color: TodoAppColors.monoWhite,
);

const _h3 = TextStyle(
  fontFamily: _fontFamily,
  fontSize: TodoAppDimens.xs,
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w400,
  letterSpacing: TodoAppLetterSpacing.headingThree,
  height: TodoAppDimens.xatto,
  color: TodoAppColors.monoWhite,
);

const _h4 = TextStyle(
  fontFamily: _fontFamily,
  fontSize: TodoAppDimens.xxs,
  fontStyle: FontStyle.normal,
  letterSpacing: TodoAppLetterSpacing.headingFour,
  height: TodoAppDimens.xatto,
  color: TodoAppColors.monoWhite,
);

const _h5 = TextStyle(
  fontFamily: _fontFamily,
  fontSize: TodoAppDimens.xxxmacro,
  fontStyle: FontStyle.normal,
  letterSpacing: TodoAppLetterSpacing.headingFive,
  height: TodoAppDimens.xatto,
  color: TodoAppColors.monoWhite,
);

const _h6 = TextStyle(
  fontFamily: _fontFamily,
  fontSize: TodoAppDimens.xxxs,
  fontStyle: FontStyle.normal,
  letterSpacing: TodoAppLetterSpacing.headingSix,
  height: TodoAppDimens.xatto,
  color: TodoAppColors.monoWhite,
);

const _bodyLarge = TextStyle(
  fontFamily: _fontFamily,
  fontSize: TodoAppDimens.macro,
  fontStyle: FontStyle.normal,
  letterSpacing: TodoAppLetterSpacing.large,
  height: TodoAppDimens.xxatto,
  color: TodoAppColors.monoWhite,
);

const _bodyMedium = TextStyle(
  fontFamily: _fontFamily,
  fontSize: TodoAppDimens.xxxs,
  fontStyle: FontStyle.normal,
  letterSpacing: TodoAppLetterSpacing.medium,
  height: TodoAppDimens.xxhatto,
  color: TodoAppColors.monoWhite,
);

const _bodySmall = TextStyle(
  fontFamily: _fontFamily,
  fontSize: TodoAppDimens.xmicro,
  fontStyle: FontStyle.normal,
  letterSpacing: TodoAppLetterSpacing.small,
  height: TodoAppDimens.hatto,
  color: TodoAppColors.monoWhite,
);

const _bodyExtraSmall = TextStyle(
  fontFamily: _fontFamily,
  fontSize: TodoAppDimens.micro,
  fontStyle: FontStyle.normal,
  letterSpacing: TodoAppLetterSpacing.extraSmall,
  height: TodoAppDimens.xxatto,
  color: TodoAppColors.monoWhite,
);

const _bodyTiny = TextStyle(
  fontFamily: _fontFamily,
  fontSize: TodoAppDimens.xxxnano,
  fontStyle: FontStyle.normal,
  letterSpacing: TodoAppLetterSpacing.tiny,
  height: TodoAppDimens.xhatto,
  color: TodoAppColors.monoWhite,
);

const _labelExtraLarge = TextStyle(
  fontFamily: _fontFamily,
  fontSize: TodoAppDimens.xxxmacro,
  fontStyle: FontStyle.normal,
  letterSpacing: TodoAppLetterSpacing.extraLarge,
  height: TodoAppDimens.xatto,
  color: TodoAppColors.monoWhite,
);

const _labelLarge = TextStyle(
  fontFamily: _fontFamily,
  fontSize: TodoAppDimens.macro,
  fontStyle: FontStyle.normal,
  letterSpacing: TodoAppLetterSpacing.large,
  height: TodoAppDimens.xatto,
  color: TodoAppColors.monoWhite,
);

const _labelMedium = TextStyle(
  fontFamily: _fontFamily,
  fontSize: TodoAppDimens.xxxs,
  fontStyle: FontStyle.normal,
  letterSpacing: TodoAppLetterSpacing.medium,
  height: TodoAppDimens.xatto,
  color: TodoAppColors.monoWhite,
);

const _labelSmall = TextStyle(
  fontFamily: _fontFamily,
  fontSize: TodoAppDimens.xmicro,
  fontStyle: FontStyle.normal,
  letterSpacing: TodoAppLetterSpacing.small,
  height: TodoAppDimens.xatto,
  color: TodoAppColors.monoWhite,
);

const _labelExtraSmall = TextStyle(
  fontFamily: _fontFamily,
  fontSize: TodoAppDimens.micro,
  fontStyle: FontStyle.normal,
  letterSpacing: TodoAppLetterSpacing.extraSmall,
  height: TodoAppDimens.xatto,
  color: TodoAppColors.monoWhite,
);

const _labelTiny = TextStyle(
  fontFamily: _fontFamily,
  fontSize: TodoAppDimens.xxxnano,
  fontStyle: FontStyle.normal,
  letterSpacing: TodoAppLetterSpacing.tiny,
  height: TodoAppDimens.xatto,
  color: TodoAppColors.monoWhite,
);

extension TypographyExtension on Text {
  // h1
  Text h1Thin({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h1.merge(TextStyle(color: color, fontWeight: FontWeight.w100));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h1ExtraLight({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h1.merge(TextStyle(color: color, fontWeight: FontWeight.w200));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h1Light({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h1.merge(TextStyle(color: color, fontWeight: FontWeight.w300));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h1Regular({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h1.merge(TextStyle(color: color, fontWeight: FontWeight.w400));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h1Medium({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h1.merge(TextStyle(color: color, fontWeight: FontWeight.w500));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h1SemiBold({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h1.merge(TextStyle(color: color, fontWeight: FontWeight.w600));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h1Bold({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h1.merge(TextStyle(color: color, fontWeight: FontWeight.w700));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h1ExtraBold({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h1.merge(TextStyle(color: color, fontWeight: FontWeight.w800));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h1Black({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h1.merge(TextStyle(color: color, fontWeight: FontWeight.w900));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  // h2
  Text h2Thin({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h2.merge(TextStyle(color: color, fontWeight: FontWeight.w100));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h2ExtraLight({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h2.merge(TextStyle(color: color, fontWeight: FontWeight.w200));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h2Light({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h2.merge(TextStyle(color: color, fontWeight: FontWeight.w300));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h2Regular({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h2.merge(TextStyle(color: color, fontWeight: FontWeight.w400));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h2Medium({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h2.merge(TextStyle(color: color, fontWeight: FontWeight.w500));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h2SemiBold({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h2.merge(TextStyle(color: color, fontWeight: FontWeight.w600));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h2Bold({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h2.merge(TextStyle(color: color, fontWeight: FontWeight.w700));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h2ExtraBold({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h2.merge(TextStyle(color: color, fontWeight: FontWeight.w800));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h2Black({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h2.merge(TextStyle(color: color, fontWeight: FontWeight.w900));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  // h3
  Text h3Thin({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h3.merge(TextStyle(color: color, fontWeight: FontWeight.w100));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h3ExtraLight({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h3.merge(TextStyle(color: color, fontWeight: FontWeight.w200));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h3Light({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h3.merge(TextStyle(color: color, fontWeight: FontWeight.w300));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h3Regular({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h3.merge(TextStyle(color: color, fontWeight: FontWeight.w400));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h3Medium({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h3.merge(TextStyle(color: color, fontWeight: FontWeight.w500));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h3SemiBold({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h3.merge(TextStyle(color: color, fontWeight: FontWeight.w600));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h3Bold({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h3.merge(TextStyle(color: color, fontWeight: FontWeight.w700));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h3ExtraBold({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h3.merge(TextStyle(color: color, fontWeight: FontWeight.w800));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h3Black({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h3.merge(TextStyle(color: color, fontWeight: FontWeight.w900));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  // h4
  Text h4Thin({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h4.merge(TextStyle(color: color, fontWeight: FontWeight.w100));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h4ExtraLight({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h4.merge(TextStyle(color: color, fontWeight: FontWeight.w200));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h4Light({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h4.merge(TextStyle(color: color, fontWeight: FontWeight.w300));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h4Regular({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h4.merge(TextStyle(color: color, fontWeight: FontWeight.w400));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h4Medium({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h4.merge(TextStyle(color: color, fontWeight: FontWeight.w500));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h4SemiBold({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h4.merge(TextStyle(color: color, fontWeight: FontWeight.w600));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h4Bold({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h4.merge(TextStyle(color: color, fontWeight: FontWeight.w700));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h4ExtraBold({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h4.merge(TextStyle(color: color, fontWeight: FontWeight.w800));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h4Black({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h4.merge(TextStyle(color: color, fontWeight: FontWeight.w900));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  // h5
  Text h5Thin({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h5.merge(TextStyle(color: color, fontWeight: FontWeight.w100));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h5ExtraLight({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h5.merge(TextStyle(color: color, fontWeight: FontWeight.w200));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h5Light({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h5.merge(TextStyle(color: color, fontWeight: FontWeight.w300));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h5Regular({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h5.merge(TextStyle(color: color, fontWeight: FontWeight.w400));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h5Medium({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h5.merge(TextStyle(color: color, fontWeight: FontWeight.w500));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h5SemiBold({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h5.merge(TextStyle(color: color, fontWeight: FontWeight.w600));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h5Bold({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h5.merge(TextStyle(color: color, fontWeight: FontWeight.w700));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h5ExtraBold({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h5.merge(TextStyle(color: color, fontWeight: FontWeight.w800));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h5Black({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h5.merge(TextStyle(color: color, fontWeight: FontWeight.w900));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  // h6
  Text h6Thin({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h6.merge(TextStyle(color: color, fontWeight: FontWeight.w100));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h6ExtraLight({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h6.merge(TextStyle(color: color, fontWeight: FontWeight.w200));

    return Text(data!,
        style: defaultStyle.merge(style),
        key: key,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h6Light({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h6.merge(TextStyle(color: color, fontWeight: FontWeight.w300));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h6Regular({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h6.merge(TextStyle(color: color, fontWeight: FontWeight.w400));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h6Medium({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h6.merge(TextStyle(color: color, fontWeight: FontWeight.w500));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h6SemiBold({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h6.merge(TextStyle(color: color, fontWeight: FontWeight.w600));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h6Bold({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h6.merge(TextStyle(color: color, fontWeight: FontWeight.w700));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h6ExtraBold({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h6.merge(TextStyle(color: color, fontWeight: FontWeight.w800));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text h6Black({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _h6.merge(TextStyle(color: color, fontWeight: FontWeight.w900));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  // body Large
  Text bodyLargeBold({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _bodyLarge.merge(TextStyle(color: color, fontWeight: FontWeight.bold));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text bodyLargeSemiBold({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _bodyLarge.merge(TextStyle(color: color, fontWeight: FontWeight.w600));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text bodyLargeMedium({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _bodyLarge.merge(TextStyle(color: color, fontWeight: FontWeight.w500));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text bodyLargeRegular({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _bodyLarge.merge(TextStyle(color: color, fontWeight: FontWeight.normal));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  // body Medium
  Text bodyMediumBold({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _bodyMedium.merge(TextStyle(color: color, fontWeight: FontWeight.bold));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text bodyMediumSemiBold({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _bodyMedium.merge(TextStyle(color: color, fontWeight: FontWeight.w600));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text bodyMediumMedium({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _bodyMedium.merge(TextStyle(color: color, fontWeight: FontWeight.w500));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text bodyMediumRegular({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _bodyMedium.merge(TextStyle(color: color, fontWeight: FontWeight.normal));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  // body Small
  Text bodySmallBold({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _bodySmall.merge(TextStyle(color: color, fontWeight: FontWeight.bold));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text bodySmallSemiBold({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _bodySmall.merge(TextStyle(color: color, fontWeight: FontWeight.w600));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text bodySmallMedium({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _bodySmall.merge(TextStyle(color: color, fontWeight: FontWeight.w500));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text bodySmallRegular({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _bodySmall.merge(TextStyle(color: color, fontWeight: FontWeight.normal));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  // body Extra Small
  Text bodyExtraSmallBold({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _bodyExtraSmall.merge(TextStyle(color: color, fontWeight: FontWeight.bold));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text bodyExtraSmallSemiBold({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _bodyExtraSmall.merge(TextStyle(color: color, fontWeight: FontWeight.w600));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text bodyExtraSmallMedium({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _bodyExtraSmall.merge(TextStyle(color: color, fontWeight: FontWeight.w500));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text bodyExtraSmallRegular({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _bodyExtraSmall.merge(TextStyle(color: color, fontWeight: FontWeight.normal));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  // body Tiny
  Text bodyTinyBold({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _bodyTiny.merge(TextStyle(color: color, fontWeight: FontWeight.bold));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text bodyTinySemiBold({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _bodyTiny.merge(TextStyle(color: color, fontWeight: FontWeight.w600));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text bodyTinyMedium({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _bodyTiny.merge(TextStyle(color: color, fontWeight: FontWeight.w500));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text bodyTinyRegular({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _bodyTiny.merge(TextStyle(color: color, fontWeight: FontWeight.normal));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  // Label Extra Large
  Text labelExtraLargeBold({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _labelExtraLarge.merge(TextStyle(color: color, fontWeight: FontWeight.bold));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text labelExtraLargeSemiBold({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _labelExtraLarge.merge(TextStyle(color: color, fontWeight: FontWeight.w600));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text labelExtraLargeMedium({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _labelExtraLarge.merge(TextStyle(color: color, fontWeight: FontWeight.w500));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text labelExtraLargeRegular({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _labelExtraLarge.merge(TextStyle(color: color, fontWeight: FontWeight.normal));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  // Label Large
  Text labelLargeBold({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _labelLarge.merge(TextStyle(color: color, fontWeight: FontWeight.bold));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text labelLargeSemiBold({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _labelLarge.merge(TextStyle(color: color, fontWeight: FontWeight.w600));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text labelLargeMedium({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _labelLarge.merge(TextStyle(color: color, fontWeight: FontWeight.w500));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text labelLargeRegular({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _labelLarge.merge(TextStyle(color: color, fontWeight: FontWeight.normal));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  // Label Medium
  Text labelMediumBold({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _labelMedium.merge(TextStyle(color: color, fontWeight: FontWeight.bold));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text labelMediumSemiBold({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _labelMedium.merge(TextStyle(color: color, fontWeight: FontWeight.w600));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text labelMediumMedium({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _labelMedium.merge(TextStyle(color: color, fontWeight: FontWeight.w500));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text labelMediumRegular({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _labelMedium.merge(TextStyle(color: color, fontWeight: FontWeight.normal));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  //Label Small
  Text labelSmallBold({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _labelSmall.merge(TextStyle(color: color, fontWeight: FontWeight.bold));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text labelSmallSemiBold({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _labelSmall.merge(TextStyle(color: color, fontWeight: FontWeight.w600));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text labelSmallMedium({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _labelSmall.merge(TextStyle(color: color, fontWeight: FontWeight.w500));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text labelSmallRegular({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _labelSmall.merge(TextStyle(color: color, fontWeight: FontWeight.normal));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  // Label Extra Small
  Text labelExtraSmallBold({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _labelExtraSmall.merge(TextStyle(color: color, fontWeight: FontWeight.bold));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text labelExtraSmallSemiBold({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _labelExtraSmall.merge(TextStyle(color: color, fontWeight: FontWeight.w600));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text labelExtraSmallMedium({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _labelExtraSmall.merge(TextStyle(color: color, fontWeight: FontWeight.w500));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text labelExtraSmallRegular({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _labelExtraSmall.merge(TextStyle(color: color, fontWeight: FontWeight.normal));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  // Label Tiny Small
  Text labelTinyBold({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _labelTiny.merge(TextStyle(color: color, fontWeight: FontWeight.bold));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text labelTinySemiBold({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _labelTiny.merge(TextStyle(color: color, fontWeight: FontWeight.w600));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text labelTinyMedium({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _labelTiny.merge(TextStyle(color: color, fontWeight: FontWeight.w500));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  Text labelTinyRegular({Color? color, TextStyle? style}) {
    TextStyle defaultStyle = _labelTiny.merge(TextStyle(color: color, fontWeight: FontWeight.normal));

    return Text(data!,
        style: defaultStyle.merge(style),
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior);
  }

  // Helper functions
  TextSpan toTextSpan({List<TextSpan>? children}) {
    return TextSpan(text: data, style: style, children: children ??= []);
  }

  SelectableText toSelectableText() {
    return SelectableText(data!, style: style);
  }
}
