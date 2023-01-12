enum TodoImageVector { ic_trash_can, ic_plus, ic_calendar, ic_arrow_left }

extension ImageVectorExtension on TodoImageVector {
  String get svg => "vectors/$name.svg";

  String get package => "module_assets";
}
